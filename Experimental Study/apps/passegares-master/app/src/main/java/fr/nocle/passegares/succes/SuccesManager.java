package fr.nocle.passegares.succes;

import android.app.Activity;
import android.widget.Toast;

import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.LigneCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.modele.Gare;

/**
 * Created by user on 25/08/2017.
 */

public class SuccesManager {
    public static final int TypeGare = 1;
    public static final int TypeLigne = 2;
    public static final int TypeValidation = 3;

    public static final int QteGareNiv1 = 10;
    public static final int QteGareNiv2 = 25;
    public static final int QteGareNiv3 = 50;
    public static final int QteGareNiv4 = 100;
    public static final int QteGareNiv5 = 200;
    public static final int QteGareNiv6 = 300;
    public static final int QteGareNiv7 = 500;
    public static final int QteGareNiv8 = 1000;

    public static final int QteLigneNiv1 = 1;
    public static final int QteLigneNiv2 = 2;
    public static final int QteLigneNiv3 = 3;
    public static final int QteLigneNiv4 = 5;
    public static final int QteLigneNiv5 = 10;
    public static final int QteLigneNiv6 = 15;
    public static final int QteLigneNiv7 = 20;

    public static final int QteValidationNiv1 = 5;
    public static final int QteValidationNiv2 = 10;
    public static final int QteValidationNiv3 = 25;
    public static final int QteValidationNiv4 = 50;
    public static final int QteValidationNiv5 = 100;

    public static final int EstValide = 1;
    public static final int EstNonValide = 0;

    private SuccesCtrl succesControlleur;
    private LigneCtrl ligneControlleur;
    private GareCtrl gareControlleur;
    private TamponCtrl tamponControlleur;
    private Activity mainActivity;

    public SuccesManager(Activity activite, SuccesCtrl succesControlleur, LigneCtrl ligneControlleur, GareCtrl gareControlleur, TamponCtrl tamponControlleur) {
        mainActivity = activite;
        this.succesControlleur = succesControlleur;
        this.ligneControlleur = ligneControlleur;
        this.gareControlleur = gareControlleur;
        this.tamponControlleur = tamponControlleur;
    }

    public void verifierSucces(Gare gare)
    {
        if(gare.getNbTampons() == 1) //Nouvelle gare tamponnée
        {
            //On vérifie si on va avoir un succès pour le nombre de gare tamponnée
            int quantiteNecessaire = succesControlleur.quantiteProchainPalier(SuccesManager.TypeGare);
            int nbGaresTamponnees = gareControlleur.getNbGaresTamponnees();
            if(quantiteNecessaire != -1 && nbGaresTamponnees >= quantiteNecessaire)
            {
                //Succès atteint !
                validerNiveauSucces(SuccesManager.TypeGare);
            }

            //Et on vérifie aussi qu'on n'a pas tamponné une ligne par la même occasion !
            /*quantiteNecessaire = succesControlleur.quantiteProchainPalier(SuccesManager.TypeLigne);
            if(quantiteNecessaire != -1)
            {
                //TODO : Si on arrive ici, c'est qu'avant, aucune des lignes de la gare n'était totalement temponnée !
                //Nécessite peut être le nombre de gare déjà tamponné sur la ligne, afin de réduire la requête
            }*/
        } else {
            //On regarde le nombre de tampons dans la gare
            int quantiteNecessaire = succesControlleur.quantiteProchainPalier(SuccesManager.TypeValidation);
            if(quantiteNecessaire != -1 && gare.getNbTampons() >= quantiteNecessaire)
            {
                //Succès atteint !
                validerNiveauSucces(SuccesManager.TypeValidation);
            }
        }
    }

    private void validerNiveauSucces(int type) {
        succesControlleur.validerNiveauSuivant(type);
        Toast.makeText(mainActivity, R.string.succesAtteint, Toast.LENGTH_LONG).show();
    }
}
