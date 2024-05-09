package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.bdd.LigneBDD;
import fr.nocle.passegares.modele.Ligne;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class LigneCtrl extends Controlleur {
    public LigneCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public LigneCtrl(SQLiteDatabase bdd)
    {
        super(bdd);
    }

    public Ligne create(Ligne l)
    {
        long idLigne = bdd.insert(LigneBDD.TABLE_NOM, null, creerDepuisObj(l));
        l.setId(idLigne);
        return l;
    }

    public void delete(long id)
    {
        bdd.delete(LigneBDD.TABLE_NOM, LigneBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)});
        bdd.delete(GareDansLigneBDD.TABLE_NOM, GareDansLigneBDD.TABLE_ID_LIGNE + " = ?", new String[] {String.valueOf(id)});
    }

    public void update(Ligne l)
    {
        bdd.update(LigneBDD.TABLE_NOM, creerDepuisObj(l), LigneBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(l.getId())});
    }

    public Ligne get(long id)
    {
        Cursor c = bdd.query(LigneBDD.TABLE_NOM,
                new String[] {LigneBDD.TABLE_ID_STIF, LigneBDD.TABLE_NOM_LIGNE, LigneBDD.TABLE_TYPE_LIGNE,
                        LigneBDD.TABLE_ORDRE, LigneBDD.TABLE_COULEUR, LigneBDD.TABLE_REGION, LigneBDD.TABLE_NB_GARES},
                LigneBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)}, null, null, null);
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }
        Ligne l = new Ligne(id, c.getString(0), c.getString(1), c.getString(2), c.getInt(3), c.getString(4), c.getInt(5), c.getInt(6));
        c.close();
        return l;
    }

    public Ligne get(String idStif)
    {
        return get(idStif, null);
    }

    public Ligne get(String idStif, Context contexte)
    {
        Cursor c = bdd.query(LigneBDD.TABLE_NOM,
                new String[] {LigneBDD.TABLE_CLE, LigneBDD.TABLE_NOM_LIGNE, LigneBDD.TABLE_TYPE_LIGNE,
                        LigneBDD.TABLE_ORDRE, LigneBDD.TABLE_COULEUR, LigneBDD.TABLE_REGION, LigneBDD.TABLE_NB_GARES},
                LigneBDD.TABLE_ID_STIF + " = ?", new String[] {String.valueOf(idStif)}, null, null, null);

        if(!c.moveToFirst())
        {
            c.close();
            if(contexte == null)
                return null;
            //On va le chercher dans les CSV et l'insérer
            return ImportCSV.insertDataUneLigne(contexte, bdd, idStif);
        }
        Ligne l = new Ligne(c.getLong(0), idStif, c.getString(1), c.getString(2), c.getInt(3), c.getString(4), c.getInt(5), c.getInt(6));
        c.close();
        return l;
    }

    public static ContentValues creerDepuisObj(Ligne l)
    {
        ContentValues valeur = new ContentValues();
        valeur.put(LigneBDD.TABLE_ID_STIF, l.getIdStif());
        valeur.put(LigneBDD.TABLE_NOM_LIGNE, l.getNom());
        valeur.put(LigneBDD.TABLE_TYPE_LIGNE, l.getType());
        valeur.put(LigneBDD.TABLE_NB_GARES, l.getNbGares());
        valeur.put(LigneBDD.TABLE_ORDRE, l.getOrdre());
        valeur.put(LigneBDD.TABLE_COULEUR, l.getCouleur());
        valeur.put(LigneBDD.TABLE_REGION, l.getIdRegion());
        return valeur;
    }

    /**
     * Fix problème des GL. Dans certains cas, on peut avoir un GL sans id
     * @param contexte
     * @param bdd
     */
    public static void fixProblemeGL(Context contexte, SQLiteDatabase bdd) {
        //Est-ce que le record sans IdStif existe ?
        Cursor c = bdd.query(LigneBDD.TABLE_NOM,
                new String[] {LigneBDD.TABLE_CLE},
                LigneBDD.TABLE_ID_STIF + " = ? AND " + LigneBDD.TABLE_NOM_LIGNE + " = ?", new String[] {"", "GL"}, null, null, null);
        //Trouvé !
        if(c.moveToFirst())
        {
            long idRecordProbleme = c.getLong(0);
            c.close();
            //On a aussi besoin du record GL avec le bon Id
            LigneCtrl ligneControlleur = new LigneCtrl(bdd);
            Ligne ligneGL = ligneControlleur.get("GL", contexte); //Création au besoin

            //Maintenant, on update les records de GareDansLigne
            bdd.execSQL("UPDATE "+ GareDansLigneBDD.TABLE_NOM + " SET " + GareDansLigneBDD.TABLE_ID_LIGNE + " = " + ligneGL.getId() + " WHERE " + GareDansLigneBDD.TABLE_ID_LIGNE + " = " + idRecordProbleme);

            //On supprime le record à problème
            ligneControlleur.delete(idRecordProbleme);

            //Enfin, il faut mettre à jour le nombre de gare dans ligneGL
            ImportCSV.updateNbGaresDansLigne(bdd, ligneGL);
        }
        //WARNING : Ne pas fermer la connexion bdd !
    }
}
