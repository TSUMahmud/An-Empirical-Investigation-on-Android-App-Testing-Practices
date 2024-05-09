package fr.nocle.passegares.succes;

/**
 * Created by user on 26/08/2017.
 */

public class Succes {
    private int type;
    private int label;
    private boolean estValide;
    private boolean estAffiche;
    private int progression;
    private int objectif;

    public Succes(int type, int label, boolean estValide, boolean estAffiche, int objectif) {
        this.type = type;
        this.label = label;
        this.estValide = estValide;
        this.estAffiche = estAffiche;
        this.objectif = objectif;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getLabel() {
        return label;
    }

    public void setLabel(int label) {
        this.label = label;
    }

    public boolean isEstValide() {
        return estValide;
    }

    public void setEstValide(boolean estValide) {
        this.estValide = estValide;
    }

    public boolean isEstAffiche() {
        return estAffiche;
    }

    public void setEstAffiche(boolean estAffiche) {
        this.estAffiche = estAffiche;
    }

    public int getProgression() {
        return progression;
    }

    public void setProgression(int progression) {
        this.progression = progression;
    }

    public int getObjectif() {
        return objectif;
    }

    public void setObjectif(int objectif) {
        this.objectif = objectif;
    }
}
