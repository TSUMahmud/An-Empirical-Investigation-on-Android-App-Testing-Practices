package fr.nocle.passegares.modele;

/**
 * Created by jonathanmm on 10/02/17.
 */

public class Region {
    private long id;
    private String nom;
    private boolean estInstalle;
    private String dossierId;

    public Region(String nom, boolean estInstalle, String dossierId) {
        this.nom = nom;
        this.estInstalle = estInstalle;
        this.dossierId = dossierId;
    }

    public Region(long id, String nom, boolean estInstalle, String dossierId) {
        this(nom, estInstalle, dossierId);
        this.id = id;
    }

    public Region(long id, String nom) {
        this.nom = nom;
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public boolean isEstInstalle() {
        return estInstalle;
    }

    public void setEstInstalle(boolean estInstalle) {
        this.estInstalle = estInstalle;
    }

    public String getDossierId() {
        return dossierId;
    }

    public void setDossierId(String dossierId) {
        this.dossierId = dossierId;
    }
}
