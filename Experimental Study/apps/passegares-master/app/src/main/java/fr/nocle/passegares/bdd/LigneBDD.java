package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class LigneBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_ID_STIF = "idStif";
    public static final String TABLE_NOM_LIGNE = "nom";
    public static final String TABLE_TYPE_LIGNE = "type";
    public static final String TABLE_NB_GARES = "nbGares";
    public static final String TABLE_ORDRE = "ordre";
    public static final String TABLE_COULEUR = "couleur";
    public static final String TABLE_REGION = "idRegion";

    public static final String TABLE_NOM = "Ligne";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_ID_STIF + " TEXT, " +
                    TABLE_NOM_LIGNE + " TEXT, " +
                    TABLE_TYPE_LIGNE + " TEXT, " +
                    TABLE_ORDRE + " INTEGER, " +
                    TABLE_COULEUR + " TEXT, " +
                    TABLE_NB_GARES + " INTEGER, " +
                    TABLE_REGION + " INTEGER);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_ALTER_ORDRE =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_ORDRE + " INTEGER AFTER " + TABLE_TYPE_LIGNE + ";";
    public static final String TABLE_ALTER_COULEUR =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_COULEUR + " TEXT AFTER " + TABLE_ORDRE + ";";
    public static final String TABLE_ALTER_REGION =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_REGION + " INTEGER AFTER " + TABLE_NB_GARES + ";";
    public static final String TABLE_REGION_NULL = "UPDATE " + TABLE_NOM + " SET " + TABLE_REGION + " = 1 WHERE " + TABLE_REGION + " IS NULL;";
    public static final String TABLE_LIGNE_UNIQUE_GET = "SELECT " + TABLE_CLE + " FROM " + TABLE_NOM + " WHERE "+TABLE_ID_STIF+" = 'SNCF_U';";
    public static final String TABLE_LIGNE_UNIQUE_DELETE = "DELETE FROM " + TABLE_NOM + " WHERE "+TABLE_ID_STIF+" = 'SNCF_U';";
}
