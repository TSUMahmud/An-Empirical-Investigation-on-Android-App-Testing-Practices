package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.bdd.LigneBDD;
import fr.nocle.passegares.bdd.RegionBDD;
import fr.nocle.passegares.bdd.TamponBDD;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.bdd.GareBDD;
import fr.nocle.passegares.modele.Ligne;
import fr.nocle.passegares.modele.Region;
import fr.nocle.passegares.succes.SuccesManager;
import fr.nocle.passegares.succes.SuccesBDD;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class GareCtrl extends Controlleur {
    public GareCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public GareCtrl(SQLiteDatabase bdd)
    {
        super(bdd);
    }

    public void create(Gare g)
    {
        if(get(g.getIdStif()) == null)
            bdd.insert(GareBDD.TABLE_NOM, null, creerDepuisObj(g));
    }

    public void delete(long id)
    {
        bdd.delete(GareBDD.TABLE_NOM, GareBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)});
        bdd.delete(GareDansLigneBDD.TABLE_NOM, GareDansLigneBDD.TABLE_ID_GARE + " = ?", new String[] {String.valueOf(id)});
        bdd.delete(TamponBDD.TABLE_NOM, TamponBDD.TABLE_NOM_GARE + " = ?", new String[] {String.valueOf(id)});
    }

    public void update(Gare g)
    {
        bdd.update(GareBDD.TABLE_NOM, creerDepuisObj(g), GareBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(g.getId())});
    }

    public Gare get(long id)
    {
        Cursor c = bdd.query(GareBDD.TABLE_NOM,
                new String[] {GareBDD.TABLE_ID_STIF, GareBDD.TABLE_NOM_GARE, GareBDD.TABLE_LONGITUDE, GareBDD.TABLE_LATITUDE, GareBDD.TABLE_EXPLOITANT,
                        GareBDD.TABLE_NIVEAU, GareBDD.TABLE_COULEUR, GareBDD.TABLE_COULEUR_EVO,
                        GareBDD.TABLE_NB_VALIDATIONS, GareBDD.TABLE_DERNIERE_VALIDATION, 
			            GareBDD.TABLE_BOUTIQUE},
                GareBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)}, null, null, null);
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }
        Gare g = new Gare(id, c.getString(0), c.getString(1), c.getDouble(2), c.getDouble(3), c.getString(4), c.getInt(5), c.getInt(6), c.getInt(7), c.getInt(8), c.getString(9), c.getLong(10));
        c.close();
        return g;
    }

    public Gare get(String idStif)
    {
        Cursor c = bdd.query(GareBDD.TABLE_NOM,
                new String[] {GareBDD.TABLE_CLE, GareBDD.TABLE_NOM_GARE, GareBDD.TABLE_LONGITUDE, GareBDD.TABLE_LATITUDE, GareBDD.TABLE_EXPLOITANT,
                        GareBDD.TABLE_NIVEAU, GareBDD.TABLE_COULEUR, GareBDD.TABLE_COULEUR_EVO,
                        GareBDD.TABLE_NB_VALIDATIONS, GareBDD.TABLE_DERNIERE_VALIDATION, 
			GareBDD.TABLE_BOUTIQUE},
                GareBDD.TABLE_ID_STIF + " = ?", new String[] {String.valueOf(idStif)}, null, null, null);
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }
        Gare g = new Gare(c.getLong(0), idStif, c.getString(1), c.getDouble(2), c.getDouble(3), c.getString(4), c.getInt(5), c.getInt(6), c.getInt(7), c.getInt(8), c.getString(9), c.getLong(10));
        c.close();
        return g;
    }


    public ArrayList<Ligne> getCorrespondances(Gare g)
    {
        Cursor c = bdd.rawQuery("SELECT l.id, l.idStif, l.nom, l.type, l.ordre, l.couleur, l.nbGares, r." + RegionBDD.TABLE_CLE + " idRegion, r." + RegionBDD.TABLE_NOM_REGION + " nomRegion " +
                "FROM Ligne l " +
                "INNER JOIN GareDansLigne gdl ON gdl.idLigne = l.id " +
                "INNER JOIN " + RegionBDD.TABLE_NOM + " r ON r." + RegionBDD.TABLE_CLE + " = l." + LigneBDD.TABLE_REGION + " " +
                "WHERE gdl.idGare = ? " +
                "GROUP BY l.nom " +
                "ORDER BY l." + LigneBDD.TABLE_ORDRE + " ASC;", new String[] {String.valueOf(g.getId())});
        ArrayList<Ligne> listeLigne = new ArrayList<Ligne>();
        while (c.moveToNext()) {
            Region r = new Region(c.getLong(7), c.getString(8));
            Ligne l = new Ligne(c.getLong(0), c.getString(1), c.getString(2), c.getString(3), c.getInt(4), c.getString(5), r, c.getInt(6));
            listeLigne.add(l);
        }
        c.close();
        return listeLigne;
    }

    public ArrayList<Gare> getNearlest(Location position)
    {
        Cursor c = bdd.query(GareBDD.TABLE_NOM, new String[] {GareBDD.TABLE_CLE, GareBDD.TABLE_ID_STIF, GareBDD.TABLE_NOM_GARE,
                GareBDD.TABLE_LONGITUDE, GareBDD.TABLE_LATITUDE, GareBDD.TABLE_EXPLOITANT,
                        GareBDD.TABLE_NIVEAU, GareBDD.TABLE_COULEUR, GareBDD.TABLE_COULEUR_EVO,
                        GareBDD.TABLE_NB_VALIDATIONS, GareBDD.TABLE_DERNIERE_VALIDATION,
			GareBDD.TABLE_BOUTIQUE},
                GareBDD.TABLE_LATITUDE + " >= ? AND " + GareBDD.TABLE_LATITUDE + " <= ? AND " + GareBDD.TABLE_LONGITUDE + " >= ? AND " + GareBDD.TABLE_LONGITUDE + " <= ?",
                new String[] {String.valueOf(position.getLatitude() - 0.01), String.valueOf(position.getLatitude() + 0.01), String.valueOf(position.getLongitude() - 0.015), String.valueOf(position.getLongitude() + 0.015)},
                null, null, null);
        ArrayList<Gare> listeGares = new ArrayList<Gare>();
        while (c.moveToNext()) {
            Gare g = new Gare(c.getLong(0), c.getString(1), c.getString(2), c.getDouble(3), c.getDouble(4), c.getString(5), c.getInt(6), c.getInt(7), c.getInt(8), c.getInt(9), c.getString(10), c.getLong(11));
            listeGares.add(g);
        }
        c.close();
        return listeGares;
    }

    public static ContentValues creerDepuisObj(Gare g)
    {
        ContentValues valeur = new ContentValues();
        valeur.put(GareBDD.TABLE_ID_STIF, g.getIdStif());
        valeur.put(GareBDD.TABLE_NOM_GARE, g.getNom());
        valeur.put(GareBDD.TABLE_LONGITUDE, g.getLongitude());
        valeur.put(GareBDD.TABLE_LATITUDE, g.getLatitude());
        valeur.put(GareBDD.TABLE_EXPLOITANT, g.getExploitant());
        valeur.put(GareBDD.TABLE_NIVEAU, g.getNiveau());
        valeur.put(GareBDD.TABLE_COULEUR, g.getCouleur());
        valeur.put(GareBDD.TABLE_COULEUR_EVO, g.getCouleurEvo());
        valeur.put(GareBDD.TABLE_NB_VALIDATIONS, g.getNbTampons());
        Date derniereValidation = g.getDerniereValidationDate();
        if(derniereValidation == null) {
            valeur.put(GareBDD.TABLE_DERNIERE_VALIDATION, (String) null);
        } else {
            SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            valeur.put(GareBDD.TABLE_DERNIERE_VALIDATION, formatDate.format(derniereValidation));
        }
        valeur.put(GareBDD.TABLE_BOUTIQUE, g.getIdBoutique());
        return valeur;
    }

    public static ContentValues creerRelationGareLigne(long idGare, long idLigne)
    {
        ContentValues valeur = new ContentValues();
        valeur.put(GareDansLigneBDD.TABLE_ID_GARE, idGare);
        valeur.put(GareDansLigneBDD.TABLE_ID_LIGNE, idLigne);
        return valeur;
    }

    @Deprecated
    public static void initValues(Context contexte, SQLiteDatabase bdd)
    {
        ArrayList<Gare> listeGares = ImportCSV.importListGares(contexte, bdd);
        for(Gare g: listeGares)
        {
            long nouvelId = bdd.insert(GareBDD.TABLE_NOM, null, creerDepuisObj(g));
            g.setId(nouvelId);
            //Et on s'occupe aussi de noter la relation entre gare et ligne
            for(long idLigne: g.getIdLignes())
            {

                bdd.insert(GareDansLigneBDD.TABLE_NOM, null, creerRelationGareLigne(g.getId(), idLigne));
            }
        }
    }

    @Deprecated
    public static void updateValues(Context contexte, SQLiteDatabase bdd, int since, int to)
    {
        ArrayList<Gare> listeGares = ImportCSV.getToUpdateGares(contexte, bdd, since, to);
    }

    public static void updateAllLevels(Context contexte, SQLiteDatabase bdd)
    {
        Cursor c = bdd.rawQuery("SELECT g." + GareBDD.TABLE_CLE + ", count(t." + TamponBDD.TABLE_CLE + ") AS nbTampon, g." + GareBDD.TABLE_COULEUR + " couleur " +
                "FROM " + GareBDD.TABLE_NOM + " g " +
                "INNER JOIN " + TamponBDD.TABLE_NOM + " t ON g." + GareBDD.TABLE_CLE + " = t." + TamponBDD.TABLE_NOM_GARE + " " +
                "GROUP BY g." + GareBDD.TABLE_CLE + ";", null);
        int[] tickets = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; //12 couleurs possible
        while (c.moveToNext()) {
            long idGare = c.getLong(0);
            int nbTampons = c.getInt(1);
            int couleur = c.getInt(2);
            if(nbTampons >= 3) //On met à jour le niveau
            {
                ContentValues valeur = new ContentValues();
                valeur.put(GareBDD.TABLE_NIVEAU, 1);
                bdd.update(GareBDD.TABLE_NOM, valeur, GareBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(idGare)});
                tickets[couleur] += nbTampons - 3;
            }
        }
        c.close();

        //Et on crédite les tickets, sans regarder la limite
        for(int couleur = 0; couleur < 12; couleur++)
        {
            ContentValues valeur = new ContentValues();
            valeur.put(InventaireBDD.TABLE_NOMBRE, tickets[couleur]);
            bdd.update(InventaireBDD.TABLE_NOM, valeur, InventaireBDD.TABLE_TYPE + " = " + InventaireBDD.TYPE_MONNAIE + " AND " + InventaireBDD.TABLE_ID_OBJ + " = ?", new String[] {String.valueOf(couleur)});
        }
    }

    public int getNbGaresTamponnees() {
        Cursor c = bdd.rawQuery("SELECT " + GareBDD.TABLE_CLE + " " +
                "FROM " + GareBDD.TABLE_NOM + " g " +
                "WHERE " + GareBDD.TABLE_NB_VALIDATIONS + " > 0;", null);
        if(!c.moveToFirst())
        {
            c.close();
            return 0;
        }
        int nbGares = c.getCount();
        c.close();
        return nbGares;
    }

    public static void updateAllSuccesConcerningGares(Context contexte, SQLiteDatabase bdd)
    {
        //On commence par le nombre de gare tamponnées
        Cursor c = bdd.rawQuery("SELECT " + GareBDD.TABLE_CLE + " " +
                "FROM " + GareBDD.TABLE_NOM + " " +
                "WHERE " + GareBDD.TABLE_NB_VALIDATIONS + " > 0;", null);

        int nbGaresTamponnees;
        if(!c.moveToFirst())
            nbGaresTamponnees = 0;
        else
            nbGaresTamponnees = c.getCount();
        c.close();

        bdd.execSQL("UPDATE " + SuccesBDD.TABLE_NOM + " SET " + SuccesBDD.TABLE_EST_VALIDE + " = ? WHERE " + SuccesBDD.TABLE_TYPE + " = ? AND " + SuccesBDD.TABLE_QTE_NECESSAIRE + " <= ?",
                new String[] {String.valueOf(SuccesManager.EstValide), String.valueOf(SuccesManager.TypeGare), String.valueOf(nbGaresTamponnees)});

        //Et on fait pareil pour le nombre de validation dans une gare
        int nbMaxTampon;
        c = bdd.rawQuery("SELECT MAX(" + GareBDD.TABLE_NB_VALIDATIONS + ") AS nbTampon " +
                "FROM " + GareBDD.TABLE_NOM + " g " +
                "WHERE " + GareBDD.TABLE_NB_VALIDATIONS + " > 0;", null);
        if(!c.moveToFirst())
            nbMaxTampon = 0;
        else
            nbMaxTampon = c.getInt(0);
        c.close();
        bdd.execSQL("UPDATE " + SuccesBDD.TABLE_NOM + " SET " + SuccesBDD.TABLE_EST_VALIDE + " = ? WHERE " + SuccesBDD.TABLE_TYPE + " = ? AND " + SuccesBDD.TABLE_QTE_NECESSAIRE + " <= ?",
                new String[] {String.valueOf(SuccesManager.EstValide), String.valueOf(SuccesManager.TypeValidation), String.valueOf(nbMaxTampon)});

        // Warning : Ne pas fermer la connexion à la BDD !
    }

    public static void fixIssueGaresHorsIdF(Context contexte, SQLiteDatabase bdd) {
        //Centre Val de Loire
        Cursor c = bdd.rawQuery("SELECT " + RegionBDD.TABLE_EST_INSTALLE +
                " FROM " + RegionBDD.TABLE_NOM + " WHERE " + RegionBDD.TABLE_DOSSIER + " = 'CentreVdL'", null);

        boolean centreVdLEstInstalle = false;
        if (c.getCount() > 0 && !c.moveToFirst())
            centreVdLEstInstalle = c.getInt(0) == 1;
        c.close();

        if(!centreVdLEstInstalle)
        {
            //On supprime les gares qui n'ont rien à faire en IdF seulement si on n'a pas Centre Val de Loire installé
            bdd.execSQL("DELETE FROM " + GareBDD.TABLE_NOM +
                    " WHERE " + GareBDD.TABLE_ID_STIF + " IN ('411498', '411504', '411507', '59302', '411501', '59049', '411449', '411446', '411443')");
        }

        //Picardie
        c = bdd.rawQuery("SELECT " + RegionBDD.TABLE_EST_INSTALLE +
                " FROM " + RegionBDD.TABLE_NOM + " WHERE " + RegionBDD.TABLE_DOSSIER + " = 'HautsFrance'", null);

        boolean picardieEstInstalle = false;
        if (c.getCount() > 0 && !c.moveToFirst())
            picardieEstInstalle = c.getInt(0) == 1;
        c.close();

        if(!picardieEstInstalle)
        {
            //On supprime les gares qui n'ont rien à faire en IdF seulement si on n'a pas Hauts de France installé
            bdd.execSQL("DELETE FROM " + GareBDD.TABLE_NOM +
                    " WHERE " + GareBDD.TABLE_ID_STIF + " IN ('411317')");
        }

        //Normandie
        c = bdd.rawQuery("SELECT " + RegionBDD.TABLE_EST_INSTALLE +
                " FROM " + RegionBDD.TABLE_NOM + " WHERE " + RegionBDD.TABLE_DOSSIER + " = 'Normandie'", null);

        boolean normandieEStInstalle = false;
        if (c.getCount() > 0 && !c.moveToFirst())
            normandieEStInstalle = c.getInt(0) == 1;
        c.close();

        if(!normandieEStInstalle)
        {
            //On supprime les gares qui n'ont rien à faire en IdF seulement si région pas installé
            bdd.execSQL("DELETE FROM " + GareBDD.TABLE_NOM +
                    " WHERE " + GareBDD.TABLE_ID_STIF + " IN ('411365', '411362')");
        }

        //Bourgogne Franche Comté
        c = bdd.rawQuery("SELECT " + RegionBDD.TABLE_EST_INSTALLE +
                " FROM " + RegionBDD.TABLE_NOM + " WHERE " + RegionBDD.TABLE_DOSSIER + " = 'BourgogneFC'", null);

        boolean bourgogneFCEstInstalle = false;
        if (c.getCount() > 0 && !c.moveToFirst())
            bourgogneFCEstInstalle = c.getInt(0) == 1;
        c.close();

        if(!bourgogneFCEstInstalle)
        {
            //On supprime les gares qui n'ont rien à faire en IdF seulement si région pas installé
            bdd.execSQL("DELETE FROM " + GareBDD.TABLE_NOM +
                    " WHERE " + GareBDD.TABLE_ID_STIF + " IN ('411461', '411476', '411479', '411473', '411464', '411452', '411458', '411467', '411455')");
        }

        //On doit gérer aussi le doublon de la gare de Vernon.
        if(normandieEStInstalle) //Le problème n'apparaît que si on a Normandie…
        {
            c = bdd.rawQuery("SELECT " + RegionBDD.TABLE_EST_INSTALLE +
                    " FROM " + RegionBDD.TABLE_NOM + " WHERE " + RegionBDD.TABLE_DOSSIER + " = 'Paris'", null);

            boolean idfEstInstalle = false;
            if (!c.moveToFirst())
                idfEstInstalle = c.getInt(0) == 1;
            c.close();

            if(idfEstInstalle) //… et l'Île-de-France !
            {
                //On supprime juste celle de Normandie
                bdd.execSQL("DELETE FROM " + GareBDD.TABLE_NOM + " WHERE " + GareBDD.TABLE_ID_STIF + " = 'SNCF01838'");
            } else { //On n'a juste à changer l'id de la gare de normandie
                bdd.execSQL("UPDATE " + GareBDD.TABLE_NOM + " SET " + GareBDD.TABLE_ID_STIF + " = '59038' WHERE " + GareBDD.TABLE_ID_STIF + " = 'SNCF01838'");
            }
        }

        // Warning : Ne pas fermer la connexion à la BDD !
    }
}
