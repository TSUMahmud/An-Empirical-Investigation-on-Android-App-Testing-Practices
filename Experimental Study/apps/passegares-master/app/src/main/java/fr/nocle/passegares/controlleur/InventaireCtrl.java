package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.modele.ObjetInventaire;
import fr.nocle.passegares.modele.ObjetSpecial;
import fr.nocle.passegares.modele.Ticket;

/**
 * Created by jonathanmm on 19/12/16.
 */

public class InventaireCtrl extends Controlleur {
    public InventaireCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public InventaireCtrl(SQLiteDatabase bdd) {
        super(bdd);
    }

    public int getLimiteTicket()
    {
        Cursor c = bdd.rawQuery(
                "SELECT " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ? AND " + InventaireBDD.TABLE_ID_OBJ + " = ?",
                new String[] {String.valueOf(InventaireBDD.TYPE_CONFIG), String.valueOf(InventaireBDD.CONFIG_LIMITE_MONNAIE)});
        c.moveToFirst();
        int limitTicket = c.getInt(0);
        c.close();
        return limitTicket;
    }

    public void setLimiteTicket(int nouvelleLimite)
    {
        ObjetInventaire objet = new ObjetInventaire(InventaireBDD.CONFIG_LIMITE_MONNAIE, nouvelleLimite);
        objet.setType(InventaireBDD.TYPE_CONFIG);
        update(objet);
    }

    public int getTotalTicket()
    {
        Cursor c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ?", new String[] {String.valueOf(InventaireBDD.TYPE_MONNAIE)});
        int nbTotalTicket = 0;
        while(c.moveToNext())
        {
            nbTotalTicket += c.getInt(0);
        }
        c.close();
        return nbTotalTicket;
    }

    public int getNbTicket(int couleur)
    {
        Cursor c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ? AND " + InventaireBDD.TABLE_ID_OBJ + " = ?",
                new String[] {String.valueOf(InventaireBDD.TYPE_MONNAIE), String.valueOf(couleur)});
        c.moveToFirst();
        int nbTicket = c.getInt(0);
        c.close();
        return nbTicket;
    }

    public ArrayList<Ticket> getListTicket()
    {
        Cursor c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_ID_OBJ + ", " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ?", new String[] {String.valueOf(InventaireBDD.TYPE_MONNAIE)});
        ArrayList<Ticket> listeTicket = new ArrayList<>();
        while(c.moveToNext())
        {
            Ticket t = new Ticket(c.getInt(0), c.getInt(1));
            listeTicket.add(t);
        }
        c.close();
        return listeTicket;
    }

    public ArrayList<ObjetSpecial> getListObjetsSpeciaux()
    {
        Cursor c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_ID_OBJ + ", " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ?", new String[] {String.valueOf(InventaireBDD.TYPE_SPECIAL)});
        ArrayList<ObjetSpecial> listeObjetsSpeciaux = new ArrayList<>();
        while(c.moveToNext())
        {
            ObjetSpecial objetSpecial = new ObjetSpecial(c.getInt(0), c.getInt(1));
            listeObjetsSpeciaux.add(objetSpecial);
        }
        c.close();
        return listeObjetsSpeciaux;
    }

    public void donnerTicket(int couleur) {
        //On regarde la limite
        Cursor c = bdd.query(
                InventaireBDD.TABLE_NOM,
                new String[] {InventaireBDD.TABLE_NOMBRE},
                InventaireBDD.TABLE_TYPE + " = ? AND " + InventaireBDD.TABLE_ID_OBJ + " = ?",
                new String[] {String.valueOf(InventaireBDD.TYPE_CONFIG), String.valueOf(InventaireBDD.CONFIG_LIMITE_MONNAIE)},
                null, null, null
        );
        c.moveToFirst();
        int limit = c.getInt(0);
        c.close();

        //On regarde combien on en a actuellement
        c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_ID_OBJ + ", " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ?", new String[] {String.valueOf(InventaireBDD.TYPE_MONNAIE)});
        int nbTotalTicket = 0;
        int nbTicketCouleur = 0;
        while(c.moveToNext())
        {
            nbTotalTicket += c.getInt(1);
            if(c.getInt(0) == couleur)
                nbTicketCouleur = c.getInt(1);
        }
        c.close();

        if(getTotalTicket() < limit)
        {
            ObjetInventaire objet = new ObjetInventaire(couleur, nbTicketCouleur + 1);
            objet.setType(InventaireBDD.TYPE_MONNAIE);
            update(objet);
        }
    }

    public void jeterTicket(int couleur, int nombre) {
        //On regarde combien on en a actuellement
        Cursor c = bdd.rawQuery("SELECT " + InventaireBDD.TABLE_NOMBRE + " FROM " + InventaireBDD.TABLE_NOM + " WHERE " + InventaireBDD.TABLE_TYPE + " = ? AND " + InventaireBDD.TABLE_ID_OBJ + " = ?",
                new String[] {String.valueOf(InventaireBDD.TYPE_MONNAIE), String.valueOf(couleur)});

        c.moveToFirst();
        int nbTicketCouleur = c.getInt(0);
        c.close();

        if(nbTicketCouleur >= nombre)
        {
            ObjetInventaire objet = new ObjetInventaire(couleur, nbTicketCouleur - nombre);
            objet.setType(InventaireBDD.TYPE_MONNAIE);
            update(objet);
        }
    }

    public void update (ObjetInventaire objet)
    {
        ContentValues values = creerDepuisObj(objet);
        bdd.update(InventaireBDD.TABLE_NOM, values, InventaireBDD.TABLE_TYPE + " = ? AND " + InventaireBDD.TABLE_ID_OBJ + " = ?", new String[] {String.valueOf(objet.getType()), String.valueOf(objet.getIdentifiant())});
    }

    private ContentValues creerDepuisObj(ObjetInventaire objet)
    {
        ContentValues values = new ContentValues();
        values.put(InventaireBDD.TABLE_NOMBRE, objet.getNombre());
        return values;
    }
}
