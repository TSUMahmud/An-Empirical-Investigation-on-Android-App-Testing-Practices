package fr.nocle.passegares.boutique;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.Toast;

import fr.nocle.passegares.achatDialog.*;
import fr.nocle.passegares.controlleur.BoutiqueCtrl;
import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.modele.Boutique;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.ObjetVendable;

/**
 * Created by jonathanmm on 15/08/17.
 */

public class OuvrirBoutique {
    private BoutiqueCtrl boutiqueControlleur;
    private GareCtrl gareControlleur;
    private Gare gare;
    private AchatDialog dialog;
    private CallbackSuccessDialog callbackSuccessDialog;
    private Activity mainActivity;

    public OuvrirBoutique(Activity activity, GareCtrl gareControlleur, Gare gare)
    {
        boutiqueControlleur = new BoutiqueCtrl(activity);
        dialog = new AchatDialog(activity, getSuccessCallback());

        this.gareControlleur = gareControlleur;
        this.gare = gare;
        this.mainActivity = activity;
    }

    public void setCallbackSuccessDialog(CallbackSuccessDialog callbackSuccessDialog) {
        this.callbackSuccessDialog = callbackSuccessDialog;
    }

    public void ouvrirDialog()
    {
        int cout = calculerCout();
        ObjetVendable obj = new ObjetVendable(0, 0, cout);

        dialog.ouvrirDialog(obj);
    }

    private int calculerCout()
    {
        int nbBoutique = boutiqueControlleur.getNbBoutiques();
        if(nbBoutique >= 7)
            return 75; //Max
        return 5 + 10 * nbBoutique;
    }

    private void creerBoutique()
    {
        String nomBoutique = BoutiqueCtrl.generateNomBoutique(gare);
        Boutique boutique = new Boutique(-1, 0, nomBoutique);
        boutiqueControlleur.create(boutique);
        gare.setIdBoutique(boutique.getId());
        gareControlleur.update(gare);
        //Et on oublie pas de prélever les tickets
        dialog.preleverTickets();

        //On invalide la barre de menu côté radar application pour mettre à jour le nombre de tickets
        this.mainActivity.invalidateOptionsMenu();
    }

    public DialogInterface.OnClickListener getSuccessCallback() {
        return new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                creerBoutique();

                if(callbackSuccessDialog != null)
                    callbackSuccessDialog.callback();
            }
        };
    }
}
