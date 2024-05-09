package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 04/06/17.
 */

public class BoutiqueBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_TYPE = "type";
    public static final String TABLE_NOM_BOUTIQUE = "nom";

    public static final String TABLE_NOM = "Boutique";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    TABLE_TYPE + " INTEGER," +
                    TABLE_NOM_BOUTIQUE + " TEXT);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_VIDER = "DELETE FROM " + TABLE_NOM + ";";
}
