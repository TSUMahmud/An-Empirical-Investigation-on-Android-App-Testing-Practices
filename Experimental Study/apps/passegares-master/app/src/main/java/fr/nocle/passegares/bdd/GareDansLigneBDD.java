package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class GareDansLigneBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_ID_GARE = "idGare";
    public static final String TABLE_ID_LIGNE = "idLigne";
    public static final String TABLE_ORDRE = "ordre";
    public static final String TABLE_PLANDELIGNE_FOND = "pdlFond";
    public static final String TABLE_PLANDELIGNE_POINT = "pdlPoint";
    public static final String TABLE_REGION = "idRegion";

    public static final String TABLE_NOM = "GareDansLigne";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_ID_GARE + " INTEGER, " +
                    TABLE_ID_LIGNE + " INTEGER, " +
                    TABLE_ORDRE + " INTEGER DEFAULT 0, " +
                    TABLE_PLANDELIGNE_FOND + " INTEGER DEFAULT 0, " +
                    TABLE_PLANDELIGNE_POINT + " INTEGER DEFAULT 0, " +
                    TABLE_REGION + " INTEGER);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_ALTER_ORDRE =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_ORDRE + " INTEGER DEFAULT 0;";
    public static final String TABLE_ALTER_PLANDELIGNE_FOND =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_PLANDELIGNE_FOND + " INTEGER DEFAULT 0;";
    public static final String TABLE_ALTER_PLANDELIGNE_POINT =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_PLANDELIGNE_POINT + " INTEGER DEFAULT 0;";
    public static final String TABLE_ALTER_REGION =
            "ALTER TABLE " + TABLE_NOM + " ADD " + TABLE_REGION + " INTEGER;" +
                    "UPDATE " + TABLE_NOM + " SET " + TABLE_REGION + " = 1;";
    public static final String TABLE_LIGNE_UNIQUE_DELETE = "DELETE FROM " + TABLE_NOM + " WHERE "+TABLE_ID_LIGNE+" = ?;";
}
