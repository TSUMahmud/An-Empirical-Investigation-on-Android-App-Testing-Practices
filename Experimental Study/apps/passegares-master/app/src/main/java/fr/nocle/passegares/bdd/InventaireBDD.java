package fr.nocle.passegares.bdd;

import fr.nocle.passegares.modele.ObjetSpecial;
import fr.nocle.passegares.modele.Ticket;

/**
 * Created by jonathanmm on 18/12/16.
 */

public class InventaireBDD {
    public static final String TABLE_CLE = "id";
    public static final String TABLE_TYPE = "type";
    public static final String TABLE_ID_OBJ = "idObj";
    public static final String TABLE_NOMBRE = "nb";

    public static final int TYPE_CONFIG = 0;
    public static final int TYPE_MONNAIE = 1;
    public static final int TYPE_SPECIAL = 2;

    public static final int CONFIG_LIMITE_MONNAIE = 0;

    public static final int MONNAIE_ROUGE = Ticket.Rouge;
    public static final int MONNAIE_VIOLET = Ticket.Violet;
    public static final int MONNAIE_CYAN = Ticket.Cyan;
    public static final int MONNAIE_LIME = Ticket.Lime;
    public static final int MONNAIE_JAUNE = Ticket.Jaune;
    public static final int MONNAIE_ORANGE = Ticket.Orange;
    public static final int MONNAIE_MARRON = Ticket.Marron;
    public static final int MONNAIE_VERT = Ticket.Vert;

    public static final int SPECIAL_AUGMENTER_LIMITE_TICKET = ObjetSpecial.AugmenterLimiteTicket;

    public static final String TABLE_NOM = "Inventaire";
    public static final String TABLE_CREATION =
            "CREATE TABLE " + TABLE_NOM + " (" +
                    TABLE_CLE + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                    TABLE_TYPE + " INTEGER, " +
                    TABLE_ID_OBJ + " INTEGER, " +
                    TABLE_NOMBRE + " INTEGER);";
    public static final String TABLE_SUPPRESSION = "DROP TABLE IF EXISTS " + TABLE_NOM + ";";

    public static final String TABLE_INIT =
            "INSERT INTO " + TABLE_NOM + " (" + TABLE_CLE + ", " + TABLE_TYPE + ", " + TABLE_ID_OBJ + ", " + TABLE_NOMBRE + ") VALUES " +
                    "(NULL, " + TYPE_CONFIG + ", " + CONFIG_LIMITE_MONNAIE + ", 100), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_ROUGE + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_VIOLET + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_CYAN + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_LIME + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_JAUNE + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_ORANGE + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_MARRON + ", 0), " +
                    "(NULL, " + TYPE_MONNAIE + ", " + MONNAIE_VERT + ", 0), " +
                    "(NULL, " + TYPE_SPECIAL + ", " + SPECIAL_AUGMENTER_LIMITE_TICKET + ", 0) " +
                    ";";

    public static final String TABLE_ADD_AUGMENTER_LIMITE_TICKET = "INSERT INTO " + TABLE_NOM + " (" + TABLE_CLE + ", " + TABLE_TYPE + ", " + TABLE_ID_OBJ + ", " + TABLE_NOMBRE + ") VALUES " +
            "(NULL, " + TYPE_SPECIAL + ", " + SPECIAL_AUGMENTER_LIMITE_TICKET + ", 0);";
}
