package fr.nocle.passegares.modele;

import fr.nocle.passegares.outils.CouleurOutils;

/**
 * Created by jonathanmm on 19/12/16.
 */

public class Ticket extends ObjetInventaire {
    /*
        public static final int MONNAIE_ROUGE = 0;
    public static final int MONNAIE_VIOLET = 1;
    public static final int MONNAIE_CYAN = 2;
    public static final int MONNAIE_LIME = 3;
    public static final int MONNAIE_JAUNE = 4;
    public static final int MONNAIE_ORANGE = 5;
    public static final int MONNAIE_MARRON = 6;
    public static final int MONNAIE_VERT = 7;
     */
    static public final int Rouge = 0;
    static public final int Violet = 1;
    static public final int Cyan = 2;
    static public final int Lime = 3;
    static public final int Jaune = 4;
    static public final int Orange = 5;
    static public final int Marron = 6;
    static public final int Vert = 7;

    static public final int Max = 7;

    public Ticket(int couleur, int nombre) {
        super(couleur, nombre);
    }

    public String getCouleurString()
    {
        return CouleurOutils.getHexa(this.identifiant);
    }

    public int getCouleur()
    {
        return this.identifiant;
    }
}
