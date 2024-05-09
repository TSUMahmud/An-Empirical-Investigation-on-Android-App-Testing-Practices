package fr.nocle.passegares.modele;

/**
 * Created by jonathanmm on 04/06/17.
 */

public class Boutique {
    private long id;
    private int type;
    private String nom;

    public Boutique(long id, int type, String nom) {
        this.id = id;
        this.type = type;
        this.nom = nom;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}
