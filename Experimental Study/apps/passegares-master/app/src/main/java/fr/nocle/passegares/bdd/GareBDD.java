package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class GareBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_ID_STIF = "idStif";
    public static final String TABLE_NOM_GARE = "nom";
    public static final String TABLE_LONGITUDE = "lon";
    public static final String TABLE_LATITUDE = "lat";
    public static final String TABLE_EXPLOITANT = "exploitant";
    public static final String TABLE_NIVEAU = "niveau";
    public static final String TABLE_COULEUR = "couleur";
    public static final String TABLE_COULEUR_EVO = "couleurEvolution";
    public static final String TABLE_NB_VALIDATIONS = "nbValidations";
    public static final String TABLE_DERNIERE_VALIDATION = "derniereValidation";
    public static final String TABLE_BOUTIQUE = "boutiqueId";

    public static final String TABLE_NOM = "Gare";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_ID_STIF + " TEXT, " +
                    TABLE_NOM_GARE + " TEXT, " +
                    TABLE_LONGITUDE + " REAL, " +
                    TABLE_LATITUDE + " REAL, " +
                    TABLE_EXPLOITANT + " TEXT, " +
                    TABLE_NIVEAU + " INTEGER DEFAULT 0, " +
                    TABLE_COULEUR + " INTEGER, " +
                    TABLE_COULEUR_EVO + " INTEGER, " +
                    TABLE_NB_VALIDATIONS + " INTEGER DEFAULT 0," +
                    TABLE_DERNIERE_VALIDATION + " DATETIME DEFAULT NULL," +
                    TABLE_BOUTIQUE + " INTEGER DEFAULT NULL);" +
                    "CREATE INDEX \"" + TABLE_NOM + "_main\" ON " + TABLE_NOM + " (" + TABLE_LONGITUDE + " ASC, " + TABLE_LATITUDE + " ASC)";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_ALTER_NIVEAU =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_NIVEAU + " INTEGER DEFAULT 0;";
    public static final String TABLE_ALTER_COULEUR =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_COULEUR + " INTEGER;";
    public static final String TABLE_ALTER_COULEUR_EVO =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_COULEUR_EVO + " INTEGER;";
    public static final String TABLE_ALTER_NB_VALIDATIONS =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_NB_VALIDATIONS + " INTEGER DEFAULT 0;";
    public static final String TABLE_ALTER_DERNIERE_VALIDATION =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_DERNIERE_VALIDATION + " DATETIME DEFAULT NULL;";
    public static final String TABLE_ALTER_BOUTIQUE =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_BOUTIQUE + " INTEGER DEFAULT NULL;";
    public static final String TABLE_RESET_BOUTIQUE =
            "UPDATE " + TABLE_NOM + " SET " + TABLE_BOUTIQUE + " = NULL WHERE NOT " + TABLE_BOUTIQUE + " IS NULL;";
}

