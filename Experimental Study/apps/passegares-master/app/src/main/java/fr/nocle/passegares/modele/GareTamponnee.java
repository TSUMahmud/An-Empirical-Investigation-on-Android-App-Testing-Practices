package fr.nocle.passegares.modele;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 02/10/16.
 */

public class GareTamponnee {
    private String nomGare;
    private long idGare;
    private int nbValidations;
    private Date dateDerniereValidation;
    private int planDeLigneFond;
    private int planDeLignePoint;
    private int niveau;
    private int couleur;
    private int couleurEvolution;

    public static final int POINT_CENTRE_DEUX = 1;
    public static final int POINT_CENTRE_BAS = 2;
    public static final int POINT_CENTRE_HAUT = 3;
    public static final int POINT_DROITE_DEUX = 11;
    public static final int POINT_DROITE_BAS = 12;
    public static final int POINT_DROITE_HAUT = 13;
    public static final int POINT_GAUCHE_DEUX = 21;
    public static final int POINT_GAUCHE_BAS = 22;
    public static final int POINT_GAUCHE_HAUT = 23;

    public static final int LIGNE_SEUL_CENTRE = 1;
    public static final int LIGNE_SEUL_GAUCHE = 2;
    public static final int LIGNE_SEUL_DROITE = 3;
    public static final int LIGNE_SEUL_BRANCHE = 4;
    public static final int LIGNE_CENTRE_SEUL = 10;
    public static final int LIGNE_CENTRE_CENTRE = 11;
    public static final int LIGNE_CENTRE_GAUCHE = 12;
    public static final int LIGNE_CENTRE_DROITE = 13;
    public static final int LIGNE_CENTRE_BRANCHE = 14;
    public static final int LIGNE_CENTRE_BRANCHE_SP = 19;
    public static final int LIGNE_GAUCHE_SEUL = 20;
    public static final int LIGNE_GAUCHE_CENTRE = 21;
    public static final int LIGNE_GAUCHE_GAUCHE = 22;
    public static final int LIGNE_GAUCHE_BRANCHE = 24;
    public static final int LIGNE_GAUCHE_SEUL_SP = 25;
    public static final int LIGNE_GAUCHE_GAUCHE_SP = 27;
    public static final int LIGNE_SP_GAUCHE_GAUCHE = 72;
    public static final int LIGNE_SP_GAUCHE_BRANCHE = 74;
    public static final int LIGNE_DROITE_SEUL = 30;
    public static final int LIGNE_DROITE_CENTRE = 31;
    public static final int LIGNE_DROITE_DROITE = 33;
    public static final int LIGNE_DROITE_BRANCHE = 34;
    public static final int LIGNE_DROITE_BRANCHE_SP = 39;
    public static final int LIGNE_SP_DROITE_BRANCHE = 84;
    public static final int LIGNE_BRANCHE_SEUL = 40;
    public static final int LIGNE_BRANCHE_CENTRE = 41;
    public static final int LIGNE_BRANCHE_GAUCHE = 42;
    public static final int LIGNE_BRANCHE_DROITE = 43;
    public static final int LIGNE_BRANCHE_BRANCHE = 44;
    public static final int LIGNE_BRANCHE_DROITE_SP = 48;
    public static final int LIGNE_BRANCHE_BRANCHE_SP = 49;
    public static final int LIGNE_SP_BRANCHE_GAUCHE = 92;
    public static final int LIGNE_SP_BRANCHE_DROITE = 93;

    public GareTamponnee(long idGare, String nomGare, int nbValidations, String date, int niveau, int couleur, int couleurEvolution) {
        this.idGare = idGare;
        this.nomGare = nomGare;
        this.nbValidations = nbValidations;
        this.couleur = couleur;
        this.couleurEvolution = couleurEvolution;
        this.niveau = niveau;
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if(date == null)
            this.dateDerniereValidation = null;
        else{
            try {
                this.dateDerniereValidation = formatDate.parse(date);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    public GareTamponnee(long idGare, String nomGare, int nbValidations, String date, int planDeLigneFond, int planDeLignePoint, int niveau, int couleur, int couleurEvolution) {
        this(idGare, nomGare, nbValidations, date, niveau, couleur, couleurEvolution);
        this.planDeLigneFond = planDeLigneFond;
        this.planDeLignePoint = planDeLignePoint;
    }

    public long getIdGare() {
        return idGare;
    }

    public void setIdGare(long idGare) {
        this.idGare = idGare;
    }

    public String getNomGare() {
        return nomGare;
    }

    public void setNomGare(String nomGare) {
        this.nomGare = nomGare;
    }

    public int getNbValidations() {
        return nbValidations;
    }

    public void setNbValidations(int nbValidations) {
        this.nbValidations = nbValidations;
    }

    public Date getDateDerniereValidation() {
        return dateDerniereValidation;
    }

    public void setDateDerniereValidation(Date dateDerniereValidation) {
        this.dateDerniereValidation = dateDerniereValidation;
    }

    public int getPlanDeLigneFond() {
        return planDeLigneFond;
    }

    public void setPlanDeLigneFond(int planDeLigneFond) {
        this.planDeLigneFond = planDeLigneFond;
    }

    public int getPlanDeLignePoint() {
        return planDeLignePoint;
    }

    public void setPlanDeLignePoint(int planDeLignePoint) {
        this.planDeLignePoint = planDeLignePoint;
    }

    public int getCouleur() {
        return couleur;
    }

    public void setCouleur(int couleur) {
        this.couleur = couleur;
    }

    public int getCouleurEvolution() {
        return couleurEvolution;
    }

    public void setCouleurEvolution(int couleurEvolution) {
        this.couleurEvolution = couleurEvolution;
    }

    public int getNiveau() {
        return niveau;
    }

    public void setNiveau(int niveau) {
        this.niveau = niveau;
    }
}
