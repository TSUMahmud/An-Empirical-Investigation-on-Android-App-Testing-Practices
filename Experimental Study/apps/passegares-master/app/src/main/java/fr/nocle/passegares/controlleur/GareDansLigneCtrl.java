package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Ligne;

/**
 * Created by jonathanmm on 03/12/16.
 */

public class GareDansLigneCtrl extends Controlleur {
    public GareDansLigneCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public GareDansLigneCtrl(SQLiteDatabase bdd)
    {
        super(bdd);
    }

    public void create(Gare g, Ligne l) {
        create(g, l, 0, 0, 0, 0);
    }

    public void create(Gare g, Ligne l, int ordre, int pdlFond, int pdlPoint, long idRegion)
    {
        bdd.insert(GareDansLigneBDD.TABLE_NOM, null, creerRelationGareLigne(g.getId(), l.getId(), ordre, pdlFond, pdlPoint, idRegion));
    }

    public void update(Gare g, Ligne l, int ordre, int pdlFond, int pdlPoint)
    {
        bdd.update(GareDansLigneBDD.TABLE_NOM, creerRelationGareLigne(g.getId(), l.getId(), ordre, pdlFond, pdlPoint), GareDansLigneBDD.TABLE_ID_GARE + " = ? AND " + GareDansLigneBDD.TABLE_ID_LIGNE + " = ?", new String[] {String.valueOf(g.getId()), String.valueOf(l.getId())});
    }

    public void delete(Gare g, Ligne l)
    {
        bdd.delete(GareDansLigneBDD.TABLE_NOM, GareDansLigneBDD.TABLE_ID_GARE + " = ? AND " + GareDansLigneBDD.TABLE_ID_LIGNE + " = ?", new String[] {String.valueOf(g.getId()), String.valueOf(l.getId())});
    }

    public static ContentValues creerRelationGareLigne(long idGare, long idLigne, int ordre, int pdlFond, int pdlPoint, long idRegion)
    {
        ContentValues valeur = creerRelationGareLigne(idGare, idLigne, ordre, pdlFond, pdlPoint);
        valeur.put(GareDansLigneBDD.TABLE_REGION, idRegion);
        return valeur;
    }

    public static ContentValues creerRelationGareLigne(long idGare, long idLigne, int ordre, int pdlFond, int pdlPoint)
    {
        ContentValues valeur = new ContentValues();
        valeur.put(GareDansLigneBDD.TABLE_ID_GARE, idGare);
        valeur.put(GareDansLigneBDD.TABLE_ID_LIGNE, idLigne);
        valeur.put(GareDansLigneBDD.TABLE_ORDRE, ordre);
        valeur.put(GareDansLigneBDD.TABLE_PLANDELIGNE_FOND, pdlFond);
        valeur.put(GareDansLigneBDD.TABLE_PLANDELIGNE_POINT, pdlPoint);
        return valeur;
    }

}

