package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

import fr.nocle.passegares.bdd.RegionBDD;
import fr.nocle.passegares.modele.Region;

/**
 * Created by jonathanmm on 10/02/17.
 */

public class RegionCtrl extends Controlleur {
    public static int TOUTESREGIONS = 0;
    public static int REGIONSINSTALLE = 1;
    public static int REGIONSDISPONIBLE = 2;

    public RegionCtrl(Context contexte) {
        super(contexte);
    }

    public RegionCtrl(SQLiteDatabase bdd) {
        super(bdd);
    }

    public void create(Region r)
    {
        bdd.insert(RegionBDD.TABLE_NOM, null, creerDepuisObj(r));
    }

    public Region get(long id)
    {
        Cursor c = bdd.query(RegionBDD.TABLE_NOM,
                new String[] {RegionBDD.TABLE_CLE, RegionBDD.TABLE_NOM_REGION, RegionBDD.TABLE_EST_INSTALLE, RegionBDD.TABLE_DOSSIER},
                RegionBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)}, null, null, null);
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }
        Region g = new Region(id, c.getString(1), c.getInt(2) == 1, c.getString(3));
        c.close();
        return g;
    }

    public void update(Region r)
    {
        bdd.update(RegionBDD.TABLE_NOM, creerDepuisObj(r), RegionBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(r.getId())});
    }


    public ArrayList<Region> getAllRegions(int onlyInstalled)
    {
        String condition = "";
        String[] conditionsWhere = new String[] {};
        if(onlyInstalled == REGIONSINSTALLE)
        {
            condition = RegionBDD.TABLE_EST_INSTALLE + " = ?";
            conditionsWhere = new String[] {"1"};
        } else if(onlyInstalled == REGIONSDISPONIBLE)
        {
            condition = RegionBDD.TABLE_EST_INSTALLE + " = ?";
            conditionsWhere = new String[] {"0"};
        }
        Cursor c = bdd.query(RegionBDD.TABLE_NOM,
                new String[] {RegionBDD.TABLE_CLE, RegionBDD.TABLE_NOM_REGION, RegionBDD.TABLE_EST_INSTALLE, RegionBDD.TABLE_DOSSIER},
                condition, conditionsWhere, null, null, null);

        ArrayList<Region> listeRegion = new ArrayList<Region>();
        while(c.moveToNext())
        {
            Region r = new Region(c.getLong(0), c.getString(1), c.getInt(2) == 1, c.getString(3));
            listeRegion.add(r);
        }
        c.close();
        return listeRegion;
    }

    public ArrayList<Region> getAllRegions()
    {
        return getAllRegions(TOUTESREGIONS);
    }

    public static ContentValues creerDepuisObj(Region r)
    {
        ContentValues valeur = new ContentValues();
        valeur.put(RegionBDD.TABLE_CLE, r.getId());
        valeur.put(RegionBDD.TABLE_NOM_REGION, r.getNom());
        valeur.put(RegionBDD.TABLE_EST_INSTALLE, r.isEstInstalle());
        valeur.put(RegionBDD.TABLE_DOSSIER, r.getDossierId());
        return valeur;
    }
}
