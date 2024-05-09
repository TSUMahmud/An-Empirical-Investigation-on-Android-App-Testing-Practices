package fr.nocle.passegares.achatDialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import androidx.appcompat.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.NumberPicker;
import android.widget.TextView;
import android.widget.Toast;

import java.lang.reflect.Field;
import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.InventaireCtrl;
import fr.nocle.passegares.modele.ObjetVendable;
import fr.nocle.passegares.modele.Ticket;
import fr.nocle.passegares.outils.CouleurOutils;

/**
 * Created by jonathanmm on 15/08/17.
 */

public class AchatDialog {
    private AlertDialog.Builder dialogAchatBuilder;
    private AlertDialog.Builder dialogSelectionTicketsBuilder;
    private Activity activity;

    private DialogInterface.OnClickListener successCallback = null;

    private int[] ticketsChoisis;
    private InventaireCtrl inventaireCtrl;

    public AchatDialog(Activity activity)
    {
        this.activity = activity;

        inventaireCtrl = new InventaireCtrl(activity);

        creerDialog();
    }

    public AchatDialog(Activity activity, DialogInterface.OnClickListener successCallback) {
        this(activity);
        this.successCallback = successCallback;
    }

    private void creerDialog() {
        //On prépare la boîte de dialogue
        dialogAchatBuilder = new AlertDialog.Builder(activity);
        dialogAchatBuilder.setTitle(R.string.achatTitle);
        dialogAchatBuilder.setTitle(R.string.selectionTickets);

        dialogSelectionTicketsBuilder = new AlertDialog.Builder(activity);
    }

    public AdapterView.OnItemClickListener getOnItemClickListener(final ArrayList<ObjetVendable> listeObjetsEnVente)
    {
        return new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                final ObjetVendable objet = listeObjetsEnVente.get(position);

                ouvrirDialog(objet);
            }
        };
    }

    public void ouvrirDialog(final ObjetVendable objet) {
        LayoutInflater inflater = activity.getLayoutInflater();

        final View viewDialog = inflater.inflate(R.layout.dialog_achat, null);

        final int coutObjet = objet.getCout();

        TextView coutTotal = (TextView) viewDialog.findViewById(R.id.CoutValeur);
        coutTotal.setText(String.valueOf(coutObjet));

        DialogInterface.OnClickListener successCbk;
        if(successCallback == null)
            successCbk = getDefaultSuccessAchat(objet);
        else
            successCbk = successCallback;

        dialogAchatBuilder.setView(viewDialog)
                .setPositiveButton(R.string.boutonAcheter, successCbk)
                .setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        dialog.cancel();
                    }
                });

        final AlertDialog dialogGenere = dialogAchatBuilder.create();
        dialogGenere.show();

        ticketsChoisis = new int[] {0, 0, 0, 0, 0, 0, 0, 0};

        //On configure chaque ticket
        for(int i = 0; i <= Ticket.Max; i++)
        {
            Class res = R.id.class;
            Field field = null;
            try {
                //On gère la couleur
                field = res.getField("ticket" + i + "Icone");
                int drawableId = field.getInt(null);

                ImageView icone = (ImageView) viewDialog.findViewById(drawableId);
                CouleurOutils.setTicketIcon(icone, i);

                //Et le bouton de sélection
                field = res.getField("ticket" + i + "Bouton");
                final int boutonId = field.getInt(null);

                //Sans oublier le max
                field = res.getField("ticket" + i + "Max");
                final int maxLabelId = field.getInt(null);

                Button bouton = (Button) viewDialog.findViewById(boutonId);

                final int nbMaxTicket = inventaireCtrl.getNbTicket(i);

                TextView maxLabel = (TextView) viewDialog.findViewById(maxLabelId);
                maxLabel.setText("/" + String.valueOf(nbMaxTicket));

                final int finalI = i;
                bouton.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        LayoutInflater inflater = activity.getLayoutInflater();
                        View viewDialogPicker = inflater.inflate(R.layout.jeter_ticket_picker, null);

                        TextView selectionTicketLabel = (TextView) viewDialogPicker.findViewById(R.id.jeterTicketLabel);
                        selectionTicketLabel.setText(R.string.nbTicketsUtiliser);

                        NumberPicker numberPicker = (NumberPicker) viewDialogPicker.findViewById(R.id.jeterTicketNombre);
                        numberPicker.setMinValue(0);
                        int ticketsMaxAChoisir = Math.min(coutObjet - getNbTicketsChoisis() + ticketsChoisis[finalI], nbMaxTicket);
                        numberPicker.setMaxValue(ticketsMaxAChoisir < 0 ? 0 : ticketsMaxAChoisir);
                        numberPicker.setValue(ticketsChoisis[finalI]);

                        dialogSelectionTicketsBuilder.setView(viewDialogPicker);

                        dialogSelectionTicketsBuilder
                                // Add action buttons
                                .setPositiveButton(R.string.boutonSelectionner, new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int id) {
                                        AlertDialog ad = (AlertDialog) dialog;
                                        NumberPicker numberPicker = (NumberPicker) ad.findViewById(R.id.jeterTicketNombre);
                                        if (numberPicker != null)
                                            ticketsChoisis[finalI] = numberPicker.getValue();
                                        else
                                            ticketsChoisis[finalI] = 0;

                                        updateTicketChoisis(viewDialog, coutObjet, dialogGenere);

                                        Button bouton = (Button) viewDialog.findViewById(boutonId);
                                        bouton.setText(String.valueOf(ticketsChoisis[finalI]));

                                        dialog.cancel();
                                    }
                                })
                                .setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int id) {
                                        dialog.cancel();
                                    }
                                });

                        dialogSelectionTicketsBuilder.show();
                    }
                });
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        if(coutObjet != 0)
            dialogGenere.getButton(AlertDialog.BUTTON_POSITIVE).setEnabled(false);
    }

    private int getNbTicketsChoisis()
    {
        int nbSelection = 0;
        for(int i = 0; i <= Ticket.Max; i++)
            nbSelection += ticketsChoisis[i];
        return nbSelection;
    }

    private void updateTicketChoisis(View viewDialog, int coutObjet, AlertDialog dialogGenere) {
        int nbTicketsChoisis = getNbTicketsChoisis();

        TextView nbSelections = (TextView) viewDialog.findViewById(R.id.TotalSelectionneValeur);
        nbSelections.setText(String.valueOf(nbTicketsChoisis));

        dialogGenere.getButton(AlertDialog.BUTTON_POSITIVE).setEnabled(nbTicketsChoisis >= coutObjet);
    }

    private DialogInterface.OnClickListener getDefaultSuccessAchat(final ObjetVendable objet)
    {
        return new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                // On met tout dans une transaction
                inventaireCtrl.beginTransaction();

                objet.setNombre(objet.getNombre() + 1);

                objet.actionPostAchat(inventaireCtrl);
                inventaireCtrl.update(objet);
                //On prélève les tickets
                preleverTickets();

                inventaireCtrl.setTransactionSuccessful();
                inventaireCtrl.endTransaction();

                Toast.makeText(activity.getApplicationContext(), R.string.succesAchatEffectue, Toast.LENGTH_LONG).show();
            }
        };
    }

    public void preleverTickets() {
        for(int i = 0; i <= Ticket.Max; i++)
        {
            int nbTicketCouleur = ticketsChoisis[i];
            if(nbTicketCouleur > 0)
                inventaireCtrl.jeterTicket(i, nbTicketCouleur);
        }
    }
}
