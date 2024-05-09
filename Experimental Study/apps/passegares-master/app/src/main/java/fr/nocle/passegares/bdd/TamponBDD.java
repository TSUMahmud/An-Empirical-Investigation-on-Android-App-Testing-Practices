package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 02/09/16.
 */
public class TamponBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_NOM_GARE = "nom";
    public static final String TABLE_DATE_VALIDATION = "date";

    public static final String TABLE_NOM = "Tampon";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_NOM_GARE + " INTEGER, " +
                    TABLE_DATE_VALIDATION + " DATETIME DEFAULT CURRENT_TIMESTAMP);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";
}

