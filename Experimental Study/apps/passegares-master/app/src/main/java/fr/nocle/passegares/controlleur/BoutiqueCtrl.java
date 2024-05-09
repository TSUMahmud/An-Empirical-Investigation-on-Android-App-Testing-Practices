package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.widget.ArrayAdapter;

import java.util.ArrayList;

import fr.nocle.passegares.bdd.BoutiqueBDD;
import fr.nocle.passegares.modele.Boutique;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.ObjetInventaire;
import fr.nocle.passegares.modele.ObjetSpecial;
import fr.nocle.passegares.modele.ObjetVendable;
import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 04/06/17.
 */

public class BoutiqueCtrl extends Controlleur {
    public BoutiqueCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public BoutiqueCtrl(SQLiteDatabase bdd) {
        super(bdd);
    }

    public void create(Boutique b)
    {
        long nouvelId = bdd.insert(BoutiqueBDD.TABLE_NOM, null, creerDepuisObj(b));
        b.setId(nouvelId);
    }

    private ContentValues creerDepuisObj(Boutique b) {
        ContentValues valeur = new ContentValues();
        valeur.put(BoutiqueBDD.TABLE_TYPE, b.getType());
        valeur.put(BoutiqueBDD.TABLE_NOM_BOUTIQUE, b.getNom());
        return valeur;
    }

    public static String generateNomBoutique(Gare g)
    {
        String[] nomBoutique = new String[] {
                "Boutique ",
                "Kiosque ",
                "Le petit train ",
                "Quai ",
                "Au bon petit déjeuner ",
                "Le passage ",
                "L'aiguilleur ",
                "La guérite "
        };

        int aleatoire = (int) Math.floor(Math.random() * nomBoutique.length);
        return nomBoutique[aleatoire] + StringOutils.manageDeParticule(g.getNom());
    }

    public Boutique get(long idBoutique) {
        Cursor c = bdd.query(BoutiqueBDD.TABLE_NOM,
                new String[] {BoutiqueBDD.TABLE_NOM_BOUTIQUE, BoutiqueBDD.TABLE_TYPE},
                BoutiqueBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(idBoutique)}, null, null, null);
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }
        Boutique b = new Boutique(idBoutique, c.getInt(1), c.getString(0));
        c.close();
        return b;
    }

    public int getNbBoutiques()
    {
        Cursor c = bdd.rawQuery("SELECT COUNT(" + BoutiqueBDD.TABLE_CLE + ") FROM " + BoutiqueBDD.TABLE_NOM, null);
        if(!c.moveToFirst())
        {
            c.close();
            return 0;
        }
        int nbBoutique = c.getInt(0);
        c.close();
        return nbBoutique;
    }

    public ArrayList<ObjetVendable> getListeObjetsEnVente()
    {
        InventaireCtrl inventaireCtrl = new InventaireCtrl(this.bdd);
        ArrayList<ObjetVendable> retour = new ArrayList<>();
        //Pour l'instant, il n'y a que des objets spéciaux
        ArrayList<ObjetSpecial> listeObjetsSpeciaux = inventaireCtrl.getListObjetsSpeciaux();
        for(ObjetSpecial os : listeObjetsSpeciaux)
        {
            //On regarde si c'est vendable ou pas
            if(os.estVendable())
                retour.add(os);
        }
        return retour;
    }
}
