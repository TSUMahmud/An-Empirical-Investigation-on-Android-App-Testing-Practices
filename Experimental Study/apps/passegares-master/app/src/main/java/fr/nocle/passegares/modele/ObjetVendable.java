package fr.nocle.passegares.modele;

import fr.nocle.passegares.controlleur.InventaireCtrl;

/**
 * Created by jonathanmm on 10/07/17.
 */

public class ObjetVendable extends ObjetInventaire {
    protected int cout;

    public ObjetVendable(int identifiant, int nombre) {
        super(identifiant, nombre);

        this.cout = 0;
    }

    public ObjetVendable(int identifiant, int nombre, int cout) {
        super(identifiant, nombre);

        this.cout = cout;
    }

    public String getNom() {
        return "Objet";
    }

    public int getCout()
    {
        return this.cout;
    }

    public void actionPostAchat(InventaireCtrl inventaireCtrl) {
        //Rien
    }
}
