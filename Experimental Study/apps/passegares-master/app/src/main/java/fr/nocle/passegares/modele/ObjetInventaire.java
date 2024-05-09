package fr.nocle.passegares.modele;

/**
 * Created by jonathanmm on 07/07/17.
 */

public class ObjetInventaire {
    protected int nombre;
    protected int identifiant;
    protected int type;

    public ObjetInventaire(int identifiant, int nombre) {
        this.identifiant = identifiant;
        this.nombre = nombre;
        this.type = 0; //A instancier par les classes filles
    }

    public int getNombre() {
        return nombre;
    }

    public void setNombre(int nombre) {
        this.nombre = nombre;
    }

    public int getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(int identifiant) {
        this.identifiant = identifiant;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
