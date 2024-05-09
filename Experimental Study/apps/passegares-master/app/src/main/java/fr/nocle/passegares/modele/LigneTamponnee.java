package fr.nocle.passegares.modele;

import fr.nocle.passegares.outils.CouleurOutils;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class LigneTamponnee {
    private long idLigne;
    private String nomLigne;
    private int nbTampons;
    private int nbGares;
    private int ordre;
    private int couleur;
    private Region region;

    public LigneTamponnee(long id, String nomLigne, int nbTampons, int nbGares, int ordre, int couleur) {
        this.idLigne = id;
        this.nomLigne = nomLigne;
        this.nbTampons = nbTampons;
        this.nbGares = nbGares;
        this.ordre = ordre;
        this.couleur = couleur;
    }

    public LigneTamponnee(long id, String nomLigne, int nbTampons, int nbGares, int ordre, int couleur, Region region) {
        this(id, nomLigne, nbTampons, nbGares, ordre, couleur);
        this.region = region;
    }

    public long getIdLigne() {
        return idLigne;
    }

    public void setIdLigne(long id) {
        this.idLigne = id;
    }

    public String getNomLigne() {
        return nomLigne;
    }

    public void setNomLigne(String nomLigne) {
        this.nomLigne = nomLigne;
    }

    public int getNbTampons() {
        return nbTampons;
    }

    public void setNbTampons(int nbTampons) {
        this.nbTampons = nbTampons;
    }

    public int getNbGares() {
        return nbGares;
    }

    public void setNbGares(int nbGares) {
        this.nbGares = nbGares;
    }

    public int getOrdre() {
        return ordre;
    }

    public void setOrdre(int ordre) {
        this.ordre = ordre;
    }

    public void setCouleur(int couleur) {
        this.couleur = couleur;
    }

    public String getCouleurString()
    {
        return CouleurOutils.getHexa(this.couleur);
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }
}
