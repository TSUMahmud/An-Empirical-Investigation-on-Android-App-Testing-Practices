package fr.nocle.passegares.bdd;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;

import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.ImportCSV;
import fr.nocle.passegares.controlleur.LigneCtrl;
import fr.nocle.passegares.succes.SuccesBDD;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class Connecteur extends SQLiteOpenHelper {
    private Context contexte;

    public Connecteur(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
        contexte = context;
    }

    @Override
    public void onCreate(SQLiteDatabase bdd) {
        bdd.execSQL(TamponBDD.TABLE_CREATION);
        bdd.execSQL(GareBDD.TABLE_CREATION);
        bdd.execSQL(LigneBDD.TABLE_CREATION);
        bdd.execSQL(GareDansLigneBDD.TABLE_CREATION);
        bdd.execSQL(InventaireBDD.TABLE_CREATION);
        bdd.execSQL(InventaireBDD.TABLE_INIT);
        bdd.execSQL(RegionBDD.TABLE_CREATION);
        bdd.execSQL(BoutiqueBDD.TABLE_CREATION);
        bdd.execSQL(SuccesBDD.TABLE_CREATION);
        bdd.execSQL(SuccesBDD.TABLE_INIT);
        bdd.execSQL(SuccesBDD.TABLE_ADD_NBGARE_1000);

        ImportCSV.updatedataRegions(contexte, bdd, 1, -1);
    }

    @Override
    public void onUpgrade(SQLiteDatabase bdd, int oldVersion, int newVersion) {
        if(oldVersion <= 99 && newVersion >= 100)
        {
            //Création de la table Région
            bdd.execSQL(RegionBDD.TABLE_CREATION);
            bdd.execSQL(RegionBDD.TABLE_MAJ);

            //Création des liens
            bdd.execSQL(LigneBDD.TABLE_ALTER_REGION);
            bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_REGION);
        }

        if(oldVersion <= 104 && newVersion >= 105) //Fix bug pour région non mise à jour
        {
            bdd.execSQL(LigneBDD.TABLE_REGION_NULL);
        }

        if(oldVersion <= 105 && newVersion >= 106) //Fix multiplicité de ligne unique dans les régions
        {
            Cursor c = bdd.rawQuery("SELECT " + LigneBDD.TABLE_CLE + " FROM " + LigneBDD.TABLE_NOM + " WHERE " + LigneBDD.TABLE_ID_STIF + " = ? ORDER BY " + LigneBDD.TABLE_CLE, new String[] {"SNCF_U"});
            if(c.moveToFirst())
            {
                bdd.execSQL(LigneBDD.TABLE_LIGNE_UNIQUE_DELETE);
                bdd.execSQL(GareDansLigneBDD.TABLE_LIGNE_UNIQUE_DELETE, new String[] {String.valueOf(c.getLong(0))});
            }
            c.close();
        }

        if(oldVersion <= 109 && newVersion >= 110) //Fix mauvais identifiant de région pour les lignes
        {
            ArrayList<String[]> listeRegionACorriger = new ArrayList<>();
            listeRegionACorriger.add(new String[] {"Occitanie", "SNCF_Occitanie_U"});
            listeRegionACorriger.add(new String[] {"HautsFrance", "SNCF_HautsFrance_U"});
            listeRegionACorriger.add(new String[] {"Normandie", "SNCF_Normandie_U"});
            listeRegionACorriger.add(new String[] {"PaysLoire", "SNCF_PaysLoire_U"});
            listeRegionACorriger.add(new String[] {"PACA", "SNCF_PACA_U"});
            listeRegionACorriger.add(new String[] {"BourgogneFC", "SNCF_BourgogneFC_U"});
            listeRegionACorriger.add(new String[] {"NAquitaine", "SNCF_NAquitaine_U"});
            listeRegionACorriger.add(new String[] {"GrandEst", "SNCF_GrandEst_U"});
            listeRegionACorriger.add(new String[] {"CentreVdL", "SNCF_CentreVdL_U"});
            listeRegionACorriger.add(new String[] {"AuvergneRA", "SNCF_AuvergneRA_U"});
            listeRegionACorriger.add(new String[] {"Bretagne", "SNCF_Bretagne_U"});

            for(String[] where : listeRegionACorriger)
            {
                bdd.execSQL("UPDATE "+LigneBDD.TABLE_NOM+" SET "+LigneBDD.TABLE_REGION+" = " +
                        "(SELECT "+RegionBDD.TABLE_CLE+" FROM "+RegionBDD.TABLE_NOM+" WHERE "+RegionBDD.TABLE_DOSSIER+" = \""+where[0]+"\" ) " +
                        "WHERE "+LigneBDD.TABLE_ID_STIF+" = \""+where[1]+"\"");
            }

            //Et on oublie pas la région parisienne !
            bdd.execSQL("UPDATE "+LigneBDD.TABLE_NOM+" SET "+LigneBDD.TABLE_REGION+" = " +
                    "(SELECT "+RegionBDD.TABLE_CLE+" FROM "+RegionBDD.TABLE_NOM+" WHERE "+RegionBDD.TABLE_DOSSIER+" = \"Paris\" ) " +
                    "WHERE "+LigneBDD.TABLE_ID_STIF+" NOT LIKE \"SNCF_%\"");
        }

        if(oldVersion <= 113 && newVersion >= 114)
        {
            bdd.execSQL(GareBDD.TABLE_ALTER_NB_VALIDATIONS);
            bdd.execSQL(GareBDD.TABLE_ALTER_DERNIERE_VALIDATION);

            Cursor c = bdd.rawQuery("SELECT g." + GareBDD.TABLE_CLE + ", count(distinct t." + TamponBDD.TABLE_CLE + ") as nbTampon, max(t." + TamponBDD.TABLE_DATE_VALIDATION + ") as dernierTampon " +
                    "FROM " + TamponBDD.TABLE_NOM + " t " +
                    "INNER JOIN " + GareBDD.TABLE_NOM + " g ON g." + GareBDD.TABLE_CLE + " = t." + TamponBDD.TABLE_NOM_GARE + " " +
                    "GROUP BY t." + TamponBDD.TABLE_NOM_GARE, new String[] {});
            while (c.moveToNext()) {
                bdd.execSQL("UPDATE " + GareBDD.TABLE_NOM + " SET " + GareBDD.TABLE_NB_VALIDATIONS + " = " + c.getInt(1) + ", " + GareBDD.TABLE_DERNIERE_VALIDATION + " = \"" + c.getString(2) + "\"" +
                        " WHERE " + GareBDD.TABLE_CLE + " = " + c.getLong(0));
            }
            c.close();
        }

        if(oldVersion <= 112 && newVersion >= 120) //Création des boutiques
        {
            bdd.execSQL(GareBDD.TABLE_ALTER_BOUTIQUE);
            bdd.execSQL(BoutiqueBDD.TABLE_CREATION);
        }

        if(oldVersion <= 120 && newVersion >= 121)
        {
            bdd.execSQL(InventaireBDD.TABLE_ADD_AUGMENTER_LIMITE_TICKET);
        }

        if(oldVersion <= 121 && newVersion >= 122)
        {
            bdd.execSQL(BoutiqueBDD.TABLE_VIDER);
            bdd.execSQL(GareBDD.TABLE_RESET_BOUTIQUE);
        }

        if(oldVersion <= 123 && newVersion >= 124)
        {
            bdd.execSQL(SuccesBDD.TABLE_CREATION);
            bdd.execSQL(SuccesBDD.TABLE_INIT);

            //On doit voir quels sont les succès déjà atteint par l'utilisateur
            GareCtrl.updateAllSuccesConcerningGares(contexte, bdd);
        }

        if(oldVersion <= 124 && newVersion >= 125) {
            GareCtrl.fixIssueGaresHorsIdF(contexte, bdd);
        }

        if(oldVersion <= 144 && newVersion >= 145) {
            bdd.execSQL(SuccesBDD.TABLE_ADD_NBGARE_1000);

            //On doit voir quels sont les succès déjà atteint par l'utilisateur
            GareCtrl.updateAllSuccesConcerningGares(contexte, bdd);
        }

        if(oldVersion < 50 && newVersion >= 63) //Accélération de la montée de niveau en stable
        {
            //Création des tables
            bdd.execSQL(InventaireBDD.TABLE_CREATION);

            //Ajouts de champs
            bdd.execSQL(LigneBDD.TABLE_ALTER_COULEUR);
            bdd.execSQL(LigneBDD.TABLE_ALTER_ORDRE);
            bdd.execSQL(GareBDD.TABLE_ALTER_COULEUR_EVO);
            bdd.execSQL(GareBDD.TABLE_ALTER_COULEUR);
            bdd.execSQL(GareBDD.TABLE_ALTER_NIVEAU);
            bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_ORDRE);
            bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_PLANDELIGNE_FOND);
            bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_PLANDELIGNE_POINT);

            //Initialisation
            bdd.execSQL(InventaireBDD.TABLE_INIT);

            //Calcul des niveaux
            GareCtrl.updateAllLevels(contexte, bdd);
        } else {
            if(oldVersion <= 62 && newVersion >= 63)
            {
                bdd.execSQL(InventaireBDD.TABLE_SUPPRESSION);
                bdd.execSQL(InventaireBDD.TABLE_CREATION);
                bdd.execSQL(InventaireBDD.TABLE_INIT);
            }

            if(oldVersion <= 57 && newVersion >= 58)
            {
                bdd.execSQL(LigneBDD.TABLE_ALTER_COULEUR);
            }

            if(oldVersion <= 56 && newVersion >= 57)
            {
                bdd.execSQL(GareBDD.TABLE_ALTER_COULEUR_EVO);
            }

            if(oldVersion <= 54 && newVersion >= 55)
            {
                bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_ORDRE);
                bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_PLANDELIGNE_FOND);
                bdd.execSQL(GareDansLigneBDD.TABLE_ALTER_PLANDELIGNE_POINT);
            }

            if(oldVersion <= 53 && newVersion >= 54)
            {
                bdd.execSQL(InventaireBDD.TABLE_CREATION);
                bdd.execSQL(InventaireBDD.TABLE_INIT);
            }

            if(oldVersion <= 52 && newVersion >= 53)
            {
                bdd.execSQL(GareBDD.TABLE_ALTER_COULEUR);
            }

            if(oldVersion <= 51 && newVersion >= 52)
            {
                bdd.execSQL(GareBDD.TABLE_ALTER_NIVEAU);
                GareCtrl.updateAllLevels(contexte, bdd);
            }

            if(oldVersion <= 50 && newVersion >= 51) //Ajout de l'ordre dans les lignes
            {
                bdd.execSQL(LigneBDD.TABLE_ALTER_ORDRE);
            }
        }

        if(oldVersion <= 12 && newVersion >= 13) //Corruption dans les tampons
        {
            bdd.execSQL(TamponBDD.TABLE_SUPPRESSION);
            bdd.execSQL(TamponBDD.TABLE_CREATION);
        }

        if(oldVersion <= 10 && newVersion >= 11) //On réimporte de nouvelles données
        {
            bdd.execSQL(TamponBDD.TABLE_SUPPRESSION);
            bdd.execSQL(GareBDD.TABLE_SUPPRESSION);
            bdd.execSQL(LigneBDD.TABLE_SUPPRESSION);
            bdd.execSQL(GareDansLigneBDD.TABLE_SUPPRESSION);

            onCreate(bdd);
        }

        if(oldVersion <= 5 && newVersion >= 6) //On réimporte de nouvelles données
        {
            bdd.execSQL(TamponBDD.TABLE_SUPPRESSION);
            bdd.execSQL(GareBDD.TABLE_SUPPRESSION);

            onCreate(bdd);
        }

        if(oldVersion <= 4 && newVersion >= 5)
        {
            //Création de l'index longitude latitude
            bdd.execSQL("CREATE INDEX \"" + GareBDD.TABLE_NOM + "_main\" ON " + GareBDD.TABLE_NOM + " (" + GareBDD.TABLE_LONGITUDE + " ASC, " + GareBDD.TABLE_LATITUDE + " ASC)");
        }

        if(newVersion <= 4) {
            bdd.execSQL(TamponBDD.TABLE_SUPPRESSION);
            bdd.execSQL(GareBDD.TABLE_SUPPRESSION);

            onCreate(bdd);
        }

        if(newVersion >= 14) //À partir de cette version, on fait les mises à jour par CSV
        {
            ImportCSV.updateData(contexte, bdd, oldVersion, newVersion);
        }

        //On fait la mise à jour une fois qu'on a les bonnes couleurs
        if((oldVersion <= 52 && newVersion >= 53) || (oldVersion <= 53 && newVersion >= 54)|| (oldVersion <= 62 && newVersion >= 63))
        {
            GareCtrl.updateAllLevels(contexte, bdd);
        }

        //Fix problème avec GL
        if(oldVersion <= 61 && newVersion >= 62)
        {
            LigneCtrl.fixProblemeGL(contexte, bdd);
        }
    }

    @Override
    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        //super.onDowngrade(db, oldVersion, newVersion);
    }
}

