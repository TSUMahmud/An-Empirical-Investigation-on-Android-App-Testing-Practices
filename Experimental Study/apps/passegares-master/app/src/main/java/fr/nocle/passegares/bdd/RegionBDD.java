package fr.nocle.passegares.bdd;

/**
 * Created by jonathanmm on 10/02/17.
 */

public class RegionBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_NOM_REGION = "nom";
    public static final String TABLE_EST_INSTALLE = "estInstalle";
    public static final String TABLE_DOSSIER = "dossierId";

    public static final String TABLE_NOM = "Region";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_NOM_REGION + " TEXT, " +
                    TABLE_EST_INSTALLE + " INTEGER, " +
                    TABLE_DOSSIER + " TEXT);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_MAJ =
            "INSERT INTO " + TABLE_NOM + " (" + TABLE_CLE + ", " + TABLE_NOM_REGION + ", " + TABLE_EST_INSTALLE + ", " + TABLE_DOSSIER + ") VALUES " +
                    "(1, 'Île-de-France', 1, 'Paris');";
}
