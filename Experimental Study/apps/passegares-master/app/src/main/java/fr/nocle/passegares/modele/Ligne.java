package fr.nocle.passegares.modele;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class Ligne {
    private long id;
    private String idStif;
    private String nom;
    private String type;
    private int ordre;
    private int nbGares;
    private String couleur;
    private long idRegion;
    private Region region;

    public Ligne(long id, String idStif, String nom, String type, int ordre, String couleur, long idRegion) {
        this.id = id;
        this.idStif = idStif;
        this.nom = nom;
        this.type = type;
        this.ordre = ordre;
        this.nbGares = 0;
        this.couleur = couleur;
        this.idRegion = idRegion;
    }

    public Ligne(long id, String idStif, String nom, String type, int ordre, String couleur, long idRegion, int nbGares) {
        this(id, idStif, nom, type, ordre, couleur, idRegion);
        this.nbGares = nbGares;
    }

    public Ligne(long id, String idStif, String nom, String type, int ordre, String couleur, Region region, int nbGares) {
        this(id, idStif, nom, type, ordre, couleur, region.getId(), nbGares);
        this.region = region;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getIdStif() {
        return idStif;
    }

    public void setIdStif(String idStif) {
        this.idStif = idStif;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNbGares() {
        return nbGares;
    }

    public int getOrdre() {
        return ordre;
    }

    public void setOrdre(int ordre) {
        this.ordre = ordre;
    }

    public String getCouleur() {
        return couleur;
    }

    public void setCouleur(String couleur) {
        this.couleur = couleur;
    }

    public long getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(long idRegion) {
        this.idRegion = idRegion;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }
}
