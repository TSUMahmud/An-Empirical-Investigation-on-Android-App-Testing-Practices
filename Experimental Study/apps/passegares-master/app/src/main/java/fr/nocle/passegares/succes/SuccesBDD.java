package fr.nocle.passegares.succes;

/**
 * Created by user on 25/08/2017.
 */

public class SuccesBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_TYPE = "type";
    public static final String TABLE_NIVEAU = "niveau";
    public static final String TABLE_QTE_NECESSAIRE = "quantiteNecessaire";
    public static final String TABLE_EST_VALIDE = "estValide";

    public static final String TABLE_NOM = "Succes";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    TABLE_TYPE + " INTEGER," +
                    TABLE_NIVEAU + " INTEGER," +
                    TABLE_QTE_NECESSAIRE + " INTEGER," +
                    TABLE_EST_VALIDE + " INTEGER);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_INIT =
            "INSERT INTO "+ TABLE_NOM +" (" +
                    TABLE_CLE + ", " +
                    TABLE_TYPE + ", " +
                    TABLE_NIVEAU + ", " +
                    TABLE_QTE_NECESSAIRE + ", " +
                    TABLE_EST_VALIDE + ") VALUES "+
                    "(NULL, " + SuccesManager.TypeGare + ", 1, "+ SuccesManager.QteGareNiv1+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 2, "+ SuccesManager.QteGareNiv2+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 3, "+ SuccesManager.QteGareNiv3+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 4, "+ SuccesManager.QteGareNiv4+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 5, "+ SuccesManager.QteGareNiv5+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 6, "+ SuccesManager.QteGareNiv6+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeGare + ", 7, "+ SuccesManager.QteGareNiv7+ ", " + SuccesManager.EstNonValide+"), " +
                    /*
                    //Désactivé pour le moment, car non implémenté
                    "(NULL, " + SuccesManager.TypeLigne + ", 1, "+ SuccesManager.QteLigneNiv1+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 2, "+ SuccesManager.QteLigneNiv2+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 3, "+ SuccesManager.QteLigneNiv3+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 4, "+ SuccesManager.QteLigneNiv4+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 5, "+ SuccesManager.QteLigneNiv5+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 6, "+ SuccesManager.QteLigneNiv6+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeLigne + ", 7, "+ SuccesManager.QteLigneNiv7+ ", " + SuccesManager.EstNonValide+"), " +
                    */
                    "(NULL, " + SuccesManager.TypeValidation + ", 1, "+ SuccesManager.QteValidationNiv1+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeValidation + ", 2, "+ SuccesManager.QteValidationNiv2+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeValidation + ", 3, "+ SuccesManager.QteValidationNiv3+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeValidation + ", 4, "+ SuccesManager.QteValidationNiv4+ ", " + SuccesManager.EstNonValide+"), " +
                    "(NULL, " + SuccesManager.TypeValidation + ", 5, "+ SuccesManager.QteValidationNiv5+ ", " + SuccesManager.EstNonValide+");";



    public static final String TABLE_ADD_NBGARE_1000 =
            "INSERT INTO "+ TABLE_NOM +" (" +
                    TABLE_CLE + ", " +
                    TABLE_TYPE + ", " +
                    TABLE_NIVEAU + ", " +
                    TABLE_QTE_NECESSAIRE + ", " +
                    TABLE_EST_VALIDE + ") VALUES "+
                    "(NULL, " + SuccesManager.TypeGare + ", 8, "+ SuccesManager.QteGareNiv8+ ", " + SuccesManager.EstNonValide+")";
}
