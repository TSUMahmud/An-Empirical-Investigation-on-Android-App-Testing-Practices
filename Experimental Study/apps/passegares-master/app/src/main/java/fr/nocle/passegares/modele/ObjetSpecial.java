package fr.nocle.passegares.modele;

import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.controlleur.InventaireCtrl;

/**
 * Created by jonathanmm on 07/07/17.
 */

public class ObjetSpecial extends ObjetVendable {
    static public final int AugmenterLimiteTicket = 0;

    public ObjetSpecial(int identifiant, int niveau) {
        super(identifiant, niveau);

        this.cout = getCoutObjet();
        this.type = InventaireBDD.TYPE_SPECIAL;
    }

    private int getCoutObjet() {
        switch(identifiant)
        {
            case AugmenterLimiteTicket:
                return 15;
            default:
                return 0;
        }
    }

    public boolean estVendable() {
        switch(identifiant)
        {
            case AugmenterLimiteTicket:
                return nombre < 2;
            default:
                return false;
        }
    }

    @Override
    public String getNom()
    {
        switch(identifiant)
        {
            case AugmenterLimiteTicket:
                return "Extension de porte ticket";
            default:
                return super.getNom();
        }
    }

    @Override
    public int getCout()
    {
        switch(identifiant)
        {
            case AugmenterLimiteTicket:
                if(nombre == 0)
                    return 50;
                if(nombre == 1)
                    return 75;
            default:
                return super.getCout();
        }
    }

    @Override
    public void actionPostAchat(InventaireCtrl inventaireCtrl)
    {
        switch(identifiant)
        {
            case AugmenterLimiteTicket:
                int nouvelleLimite = 100;
                if(nombre == 1)
                    nouvelleLimite = 150;
                if(nombre == 2)
                    nouvelleLimite = 200;
                inventaireCtrl.setLimiteTicket(nouvelleLimite);
        }
    }
}
