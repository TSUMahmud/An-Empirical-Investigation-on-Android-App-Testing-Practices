package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import fr.nocle.passegares.bdd.GareBDD;
import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.bdd.LigneBDD;
import fr.nocle.passegares.bdd.RegionBDD;
import fr.nocle.passegares.bdd.TamponBDD;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.GareTamponnee;
import fr.nocle.passegares.modele.LigneTamponnee;
import fr.nocle.passegares.modele.Region;
import fr.nocle.passegares.modele.Tampon;

/**
 * Created by jonathanmm on 02/09/16.
 */
public class TamponCtrl extends Controlleur {

    public TamponCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public void create(Tampon t)
    {
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ContentValues valeur = new ContentValues();
        valeur.put(TamponBDD.TABLE_NOM_GARE, t.getIdGare());
        valeur.put(TamponBDD.TABLE_DATE_VALIDATION, formatDate.format(t.getDate()));
        bdd.insert(TamponBDD.TABLE_NOM, null, valeur);
    }

    public void delete(long id)
    {
        bdd.delete(TamponBDD.TABLE_NOM, TamponBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)});
    }

    public void update(Tampon t)
    {
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ContentValues valeur = new ContentValues();
        valeur.put(TamponBDD.TABLE_NOM_GARE, t.getIdGare());
        valeur.put(TamponBDD.TABLE_DATE_VALIDATION, formatDate.format(t.getDate()));
        bdd.update(TamponBDD.TABLE_NOM, valeur, TamponBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(t.getId())});
    }

    public Tampon get(long id)
    {
        Cursor c = bdd.query(TamponBDD.TABLE_NOM, new String[] {TamponBDD.TABLE_NOM_GARE, TamponBDD.TABLE_DATE_VALIDATION}, TamponBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)}, null, null, null);
        c.moveToFirst();
        Tampon t = new Tampon(id, c.getLong(0), c.getString(1));
        c.close();
        return t;
    }

    public boolean ifAlreadyTamponned(long idGare)
    {
        Cursor c = bdd.query(TamponBDD.TABLE_NOM, new String[] {TamponBDD.TABLE_CLE, TamponBDD.TABLE_DATE_VALIDATION}, TamponBDD.TABLE_NOM_GARE + " = ? AND datetime(date) > datetime('now', '-8 hours')", new String[] {String.valueOf(idGare)}, null, null, null);
        boolean alreadyTamponned = c.getCount() > 0;
        c.close();
        return alreadyTamponned;
    }

    public int getCountTampon(long idGare)
    {
        Cursor c = bdd.query(TamponBDD.TABLE_NOM, new String[] {TamponBDD.TABLE_CLE, TamponBDD.TABLE_DATE_VALIDATION}, TamponBDD.TABLE_NOM_GARE + " = ?", new String[] {String.valueOf(idGare)}, null, null, null);
        int count = c.getCount();
        c.close();
        return count;
    }

    public ArrayList<Tampon> getAll()
    {
        Cursor c = bdd.query(TamponBDD.TABLE_NOM, new String[] {TamponBDD.TABLE_CLE, TamponBDD.TABLE_NOM_GARE, TamponBDD.TABLE_DATE_VALIDATION}, null, null, null, null, null);
        ArrayList<Tampon> listeTampons = new ArrayList<Tampon>();
        GareCtrl gareControlleur = new GareCtrl(bdd);
        while (c.moveToNext()) {
            Tampon t = new Tampon(c.getLong(0), gareControlleur.get(c.getLong(1)), c.getString(2));
            listeTampons.add(t);
        }
        c.close();
        return listeTampons;
    }

    public ArrayList<GareTamponnee> getByLine(long idLigne, boolean voirTamponDuJour) {
        String[] conditionsWhere = new String[] {};
        String finWhere = "";
        String supplementaireInnerJoin = "";
        String groupBy = "GROUP BY g." + GareBDD.TABLE_CLE + " ";
        ArrayList<String> where = new ArrayList<>();
        if(idLigne != 0)
        {
            conditionsWhere = new String[] {String.valueOf(idLigne)};
            groupBy = "GROUP BY gdl." + GareDansLigneBDD.TABLE_ID_GARE + " ";
            where.add("gdl.idLigne = ? ");
            supplementaireInnerJoin = "INNER JOIN " + GareDansLigneBDD.TABLE_NOM + " gdl ON gdl." + GareDansLigneBDD.TABLE_ID_GARE + " = g." + GareBDD.TABLE_CLE + " ";
        }

        if(voirTamponDuJour)
            where.add("t.date >= date('now')");

        if(where.size() > 0)
            finWhere = "WHERE " + TextUtils.join(" AND ", where);

        Cursor c = bdd.rawQuery("SELECT g.id, g.nom, " + GareBDD.TABLE_NB_VALIDATIONS + ", " +
                GareBDD.TABLE_DERNIERE_VALIDATION + ", " + GareBDD.TABLE_COULEUR + ", " +
                GareBDD.TABLE_COULEUR_EVO + ", " + GareBDD.TABLE_NIVEAU  + " " +
                "FROM Tampon t " +
                "INNER JOIN Gare g ON g.id = t.nom " +
                supplementaireInnerJoin +
                finWhere +
                groupBy +
                "ORDER BY g." + GareBDD.TABLE_NOM_GARE + " ASC;", conditionsWhere);
        ArrayList<GareTamponnee> listeTampons = new ArrayList<>();
        while (c.moveToNext()) {
            GareTamponnee t = new GareTamponnee(c.getLong(0), c.getString(1), c.getInt(2), c.getString(3), c.getInt(6), c.getInt(4), c.getInt(5));
            listeTampons.add(t);
        }
        c.close();
        return listeTampons;
    }

    public ArrayList<LigneTamponnee> getByLines(boolean voirTamponDuJour) {
        String where = "";
        if(voirTamponDuJour)
            where = "WHERE t.date >= date('now')";
        Cursor c = bdd.rawQuery("SELECT l.id, l.nom, COUNT(DISTINCT t.nom) AS nbTampon, l.nbGares, l." + LigneBDD.TABLE_ORDRE + ", l." + LigneBDD.TABLE_COULEUR + ", r." + RegionBDD.TABLE_CLE + " idRegion, r." + RegionBDD.TABLE_NOM_REGION + " nomRegion "  +
                "FROM Ligne l " +
                "LEFT JOIN GareDansLigne gdl ON gdl.idLigne = l.id " +
                "INNER JOIN Gare g ON gdl.idGare = g.id " +
                "INNER JOIN Tampon t ON t.nom = g.id " +
                "INNER JOIN " + RegionBDD.TABLE_NOM + " r ON r." + RegionBDD.TABLE_CLE + " = l." + LigneBDD.TABLE_REGION + " " +
                where +
                "GROUP BY l.id "+
                "ORDER BY r."+RegionBDD.TABLE_NOM_REGION+", l." + LigneBDD.TABLE_ORDRE + " ASC;"
                , new String[] {});
        ArrayList<LigneTamponnee> listeLigne = new ArrayList<>();
        while (c.moveToNext()) {
            Region r = new Region(c.getLong(6), c.getString(7));
            LigneTamponnee l = new LigneTamponnee(c.getLong(0), c.getString(1), c.getInt(2), c.getInt(3), c.getInt(4), c.getInt(5), r);
            listeLigne.add(l);
        }
        c.close();
        return listeLigne;
    }

    public ArrayList<Tampon> getTamponOfGare(Gare g)
    {
        Cursor c = bdd.rawQuery("SELECT t.id, t.date " +
                "FROM Tampon t " +
                "WHERE t.nom = ?",
                new String[] { String.valueOf(g.getId())});
        ArrayList<Tampon> listeTampons = new ArrayList<>();
        while (c.moveToNext()) {
            Tampon t = new Tampon(c.getLong(0), g.getId(), c.getString(1));
            listeTampons.add(t);
        }
        c.close();
        return listeTampons;
    }

    public ArrayList<GareTamponnee> getByLine(long idLigne, boolean voirTamponDuJour, boolean nouvelleInterface) {
        if(!nouvelleInterface || voirTamponDuJour || idLigne == 0)
            return getByLine(idLigne, voirTamponDuJour);

        String[] conditionsWhere = new String[] {};
        String finWhere = "";
        ArrayList<String> where = new ArrayList<>();
        if(idLigne != 0)
        {
            conditionsWhere = new String[] {String.valueOf(idLigne)};
            where.add("gdl." + GareDansLigneBDD.TABLE_ID_LIGNE + " = ? ");
        }

        if(where.size() > 0)
            finWhere = "WHERE " + TextUtils.join(" AND ", where);

        Cursor c = bdd.rawQuery("SELECT g." + GareBDD.TABLE_CLE + ", g." + GareBDD.TABLE_NOM_GARE + ", " +
                "g." + GareBDD.TABLE_NB_VALIDATIONS + ", " + GareBDD.TABLE_DERNIERE_VALIDATION + ", " +
                GareBDD.TABLE_COULEUR  + ", " + GareBDD.TABLE_COULEUR_EVO + ", " + GareBDD.TABLE_NIVEAU + ", " +
                "gdl."+ GareDansLigneBDD.TABLE_PLANDELIGNE_FOND + ", gdl." + GareDansLigneBDD.TABLE_PLANDELIGNE_POINT + " " +
                "FROM " + GareDansLigneBDD.TABLE_NOM + " gdl " +
                "INNER JOIN " + GareBDD.TABLE_NOM + " g ON g." + GareBDD.TABLE_CLE + " = gdl." + GareDansLigneBDD.TABLE_ID_GARE + " " +
                finWhere +
                "GROUP BY gdl." + GareDansLigneBDD.TABLE_ID_GARE + " " +
                "ORDER BY gdl." + GareDansLigneBDD.TABLE_ORDRE + " ASC, g." + GareBDD.TABLE_NOM_GARE + " ASC;", conditionsWhere);
        ArrayList<GareTamponnee> listeTampons = new ArrayList<>();
        while (c.moveToNext()) {
            GareTamponnee t = new GareTamponnee(c.getLong(0), c.getString(1), c.getInt(2), c.getString(3), c.getInt(7), c.getInt(8), c.getInt(6), c.getInt(4), c.getInt(5));
            listeTampons.add(t);
        }
        c.close();
        return listeTampons;
    }

    public int getMaxTamponInGare()
    {
        Cursor c = bdd.rawQuery("SELECT MAX(" + GareBDD.TABLE_NB_VALIDATIONS + ") AS nbTampon " +
                "FROM " + GareBDD.TABLE_NOM + " g " +
                "WHERE " + GareBDD.TABLE_NB_VALIDATIONS + " > 0;", null);
        int nbMaxTampon;
        if(!c.moveToFirst())
            nbMaxTampon = 0;
        else
            nbMaxTampon = c.getInt(0);
        c.close();
        return nbMaxTampon;
    }
}
