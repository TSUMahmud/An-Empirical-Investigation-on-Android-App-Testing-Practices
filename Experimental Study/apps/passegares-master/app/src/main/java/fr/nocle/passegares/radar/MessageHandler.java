package fr.nocle.passegares.radar;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import androidx.core.app.NotificationCompat;
import androidx.appcompat.app.AlertDialog;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;

import fr.nocle.passegares.BoutiqueActivity;
import fr.nocle.passegares.GareActivity;
import fr.nocle.passegares.R;
import fr.nocle.passegares.achatDialog.CallbackSuccessDialog;
import fr.nocle.passegares.adapter.GaresAdapter;
import fr.nocle.passegares.boutique.BoutiqueConstantes;
import fr.nocle.passegares.boutique.OuvrirBoutique;
import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.InventaireCtrl;
import fr.nocle.passegares.controlleur.LigneCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Tampon;
import fr.nocle.passegares.navigation.MainMenuActivity;
import fr.nocle.passegares.outils.CouleurOutils;
import fr.nocle.passegares.outils.StringOutils;
import fr.nocle.passegares.succes.SuccesManager;
import fr.nocle.passegares.succes.SuccesCtrl;

/**
 * Created by jonathanmm on 15/08/17.
 */
public class MessageHandler extends Handler {
    private Activity mainActivity;
    private GareCtrl gareControlleur;
    private TamponCtrl tamponControlleur;
    private NotificationCompat.Builder mBuilder;
    private NotificationManager mNotificationManager;
    private ArrayList<Gare> listeGares;
    private InventaireCtrl inventaireControlleur;
    private SuccesManager succesManager;

    static public final String NOTIFICATION_CHANNEL_RADAR_ID = "radar";
    static public final int ACTIVER_NOTIFICATION = 1;
    static public final int DESACTIVER_NOTIFICATION = 2;
    static public final int ACTUALISER_GARE_PLUS_PROCHE = 3;

    public MessageHandler(Activity activity)
    {
        mainActivity = activity;
        gareControlleur = new GareCtrl(activity);
        tamponControlleur = new TamponCtrl(activity);
        inventaireControlleur = new InventaireCtrl(activity);
        LigneCtrl ligneControlleur = new LigneCtrl(activity);
        SuccesCtrl succesControlleur = new SuccesCtrl(activity);
        succesManager = new SuccesManager(activity, succesControlleur, ligneControlleur, gareControlleur, tamponControlleur);
        mNotificationManager = null;
        mBuilder = null;
    }

    @Override
    public void handleMessage(Message message) {
        if(message.arg1 == ACTIVER_NOTIFICATION)
        {
            int nomApplicationId = mainActivity.getApplicationInfo().labelRes;
            //On passe en mode notif !

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
            {
                mBuilder =
                        new NotificationCompat.Builder(mainActivity, NOTIFICATION_CHANNEL_RADAR_ID)
                                .setContentTitle(mainActivity.getString(nomApplicationId))
                                .setColor(mainActivity.getColor(R.color.applicationColor))
                                .setColorized(true)
                                .setShowWhen(false);

            } else {
                mBuilder =
                        new NotificationCompat.Builder(mainActivity)
                                .setContentTitle(mainActivity.getString(nomApplicationId));

            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP)
                mBuilder.setSmallIcon(R.drawable.pg_logo);
            else
                mBuilder.setSmallIcon(R.drawable.pg_logo_png);

            if(listeGares != null && listeGares.size() > 0)
            {
                mBuilder.setContentText(StringOutils.displayBeautifullNameStation(listeGares.get(0).getNom())).setNumber((int) listeGares.get(0).getDistance());
            } else {
                mBuilder.setContentText(mainActivity.getString(R.string.aucuneGareProche)).setNumber(0);
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
                Intent resultIntent = new Intent(mainActivity, MainMenuActivity.class);
                TaskStackBuilder stackBuilder = null;
                stackBuilder = TaskStackBuilder.create(mainActivity);
                stackBuilder.addParentStack(MainMenuActivity.class);
                stackBuilder.addNextIntent(resultIntent);
                PendingIntent resultPendingIntent =
                        stackBuilder.getPendingIntent(
                                0,
                                PendingIntent.FLAG_UPDATE_CURRENT
                        );
                mBuilder.setContentIntent(resultPendingIntent);
                mNotificationManager = (NotificationManager) mainActivity.getSystemService(Context.NOTIFICATION_SERVICE);
                mNotificationManager.notify(0, mBuilder.build());
            }
        } else if(message.arg1 == DESACTIVER_NOTIFICATION) {
            if (mBuilder != null) {
                //On supprime les notifs !
                mNotificationManager.cancel(0);
                mBuilder = null;
                mNotificationManager = null;
                //Et on met à jour l'affichage au passage
                if (listeGares != null && listeGares.size() > 0)
                    mettreAJourAffichage(gareControlleur, listeGares.get(0), (float) listeGares.get(0).getDistance());
            }
        }
        else if(message.arg1 == ACTUALISER_GARE_PLUS_PROCHE)
        {
            if(listeGares != null && listeGares.size() > 0)
                mettreAJourAffichage(gareControlleur, listeGares.get(0), (float) listeGares.get(0).getDistance());
            else
                mettreAJourAffichage(gareControlleur, null, 0.0f);
        } else {
            Bundle recu = message.getData();
            Double lat = recu.getDouble("LAT");
            Double lon = recu.getDouble("LON");

            Location location = new Location("GPS");
            location.setLatitude(lat);
            location.setLongitude(lon);

            listeGares = gareControlleur.getNearlest(location);
            float minDistance = -1;
            Gare garePlusProche = null;
            ArrayList<Gare> garesTropLoins = new ArrayList<Gare>();

            for(Gare g : listeGares)
            {
                float distance = location.distanceTo(g.getLocation());
                int distanceEntiere = Math.round(distance);
                if(distanceEntiere >= 1000)
                {
                    garesTropLoins.add(g);
                } else {
                    g.setDistance(distance);
                    if(minDistance == -1 || distance < minDistance)
                    {
                        minDistance = distance;
                        garePlusProche = g;
                    }
                }
            };

            //On retire les gares qui sont trop loin
            listeGares.removeAll(garesTropLoins);

            Collections.sort(listeGares, new Comparator<Gare>() {
                @Override
                public int compare(Gare o1, Gare o2) {
                    if(o1.getDistance() > o2.getDistance())
                        return 1;
                    else if(o1.getDistance() < o2.getDistance())
                        return -1;
                    else
                        return 0;
                }
            });

            if(mBuilder == null) {
                mettreAJourAffichage(gareControlleur, garePlusProche, minDistance);
            } else {
                mettreAJourNotif(garePlusProche, minDistance);
            }
        }
    }

    private void mettreAJourNotif(Gare garePlusProche, float minDistance)
    {
        //On met à jour la notif
        if (garePlusProche == null) {
            mBuilder.setContentText(mainActivity.getString(R.string.aucuneGareProche)).setNumber(0);
            // Because the ID remains unchanged, the existing notification is
            // updated.
            mNotificationManager.notify(
                    0,
                    mBuilder.build());
        } else {
            mBuilder.setContentText(StringOutils.displayBeautifullNameStation(garePlusProche.getNom()))
                    .setNumber((int) minDistance);
            /*//TODO : Le bouton Tamponner ne fait rien
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.JELLY_BEAN) {
                if (minDistance <= 150 && !tamponControlleur.ifAlreadyTamponned(garePlusProche.getId()) && mBuilder.mActions.size() == 0) {

                    Intent resultIntent = new Intent(mainActivity, RadarFragment.class);
                    resultIntent.putExtra("Action", "Tamponner");
                    TaskStackBuilder stackBuilder = null;
                    stackBuilder = TaskStackBuilder.create(mainActivity);
                    stackBuilder.addParentStack(RadarFragment.class);
                    stackBuilder.addNextIntent(resultIntent);
                    PendingIntent resultPendingIntent =
                            stackBuilder.getPendingIntent(
                                    0,
                                    PendingIntent.FLAG_UPDATE_CURRENT
                            );
                    //mBuilder.addAction(R.drawable.fa_book, mainActivity.getString(R.string.tamponner), resultPendingIntent);
                } else {
                    mBuilder.mActions.clear();
                }
            }*/
            mNotificationManager.notify(
                    0,
                    mBuilder.build());
        }
    }

    private EvoluateInfo canIEvoluate(Gare garePlusProche)
    {
        int niveauCourant = garePlusProche.getNiveau();
        EvoluateInfo retour = new EvoluateInfo();
        if(niveauCourant == 0)
        {
            int nbTampon = tamponControlleur.getCountTampon(garePlusProche.getId());
            retour.canIEvoluate = nbTampon >= 3;
            retour.nbElementsToEvoluate = nbTampon;
        }
        else if(niveauCourant == 1)
        {
            int nbTickets = inventaireControlleur.getNbTicket(garePlusProche.getCouleurEvo());
            retour.canIEvoluate = nbTickets >= 10;
            retour.nbElementsToEvoluate = nbTickets;
        }
        else if(niveauCourant == 2)
        {
            int nbTickets = inventaireControlleur.getNbTicket(garePlusProche.getCouleurEvo());
            retour.canIEvoluate = nbTickets >= 25;
            retour.nbElementsToEvoluate = nbTickets;
        }

        return retour;
    }

    private void prepareDialogEvolution(View viewDialog, Gare garePlusProche, String labelEvolution, int nbTicketsNecessaire)
    {
        TextView labelMessage = (TextView) viewDialog.findViewById(R.id.evolutionLabel);
        TextView nbTicket = (TextView) viewDialog.findViewById(R.id.nombreTicket);
        ImageView iconeTicket = (ImageView) viewDialog.findViewById(R.id.iconTicket);
        CouleurOutils.setTicketIcon(iconeTicket, garePlusProche.getCouleurEvo());

        labelMessage.setText(labelEvolution);
        int nbTicketsNiveauSuivant = 0;
        if(garePlusProche.getNiveau() == 1)
            nbTicketsNiveauSuivant = 10;
        else if(garePlusProche.getNiveau() == 2)
            nbTicketsNiveauSuivant = 25;

        nbTicket.setText(String.valueOf(nbTicketsNecessaire) + "/" + String.valueOf(nbTicketsNiveauSuivant));
    }

    private void gestionBoutonEvolution(final GareCtrl gareControlleur, final Gare garePlusProche, final ImageView boutonEvolution, final float minDistance) {
        boutonEvolution.setVisibility(View.VISIBLE);
        boutonEvolution.setEnabled(true);

        //On va créer la boîte de dialogue pour l'évolution
        AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(mainActivity);
        dialogBuilder.setTitle(R.string.evoluerGare);

        //On regarde si la condition de changement de niveau est respectée
        EvoluateInfo evoluateInfo = canIEvoluate(garePlusProche);
        if (evoluateInfo.canIEvoluate)
        {
            String labelEvolution = "Voulez-vous vraiment faire passer la gare au niveau "+ (garePlusProche.getNiveau() + 1) + " ?";
            if(garePlusProche.getNiveau() == 0)
                dialogBuilder.setMessage(labelEvolution);
            else {
                LayoutInflater inflater = mainActivity.getLayoutInflater();

                View viewDialog = inflater.inflate(R.layout.dialog_evolution, null);
                prepareDialogEvolution(viewDialog, garePlusProche, labelEvolution, evoluateInfo.nbElementsToEvoluate);
                dialogBuilder.setView(viewDialog);
            }
            dialogBuilder.setPositiveButton(R.string.boutonValider, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                Gare g = gareControlleur.get(garePlusProche.getId());
                g.setNiveau(g.getNiveau() + 1);
                gareControlleur.update(g);

                //On met aussi à jour la vue
                if(listeGares.size() > 0)
                    listeGares.get(0).setNiveau(g.getNiveau());

                //On prélève aussi les tickets
                if(g.getNiveau() == 2)
                    inventaireControlleur.jeterTicket(garePlusProche.getCouleurEvo(), 10);
                else if(g.getNiveau() == 3)
                    inventaireControlleur.jeterTicket(garePlusProche.getCouleurEvo(), 25);

                //Il faut invalider le menu pour le mettre à jour
                mainActivity.invalidateOptionsMenu();

                dialog.cancel();
                mettreAJourAffichage(gareControlleur, g, minDistance);
               }
            });
            dialogBuilder.setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    // Refus, on ferme
                    dialog.cancel();
                }
            });

            //On va aussi changer la couleur du bouton
            boutonEvolution.setColorFilter(Color.GREEN, PorterDuff.Mode.MULTIPLY);
        } else
        {
            if(garePlusProche.getNiveau() == 0) {
                int labelId = evoluateInfo.nbElementsToEvoluate > 1 ? R.string.evolutionGareNiveauUnPasAssezS : R.string.evolutionGareNiveauUnPasAssez;
                dialogBuilder.setMessage(String.format(mainActivity.getString(labelId), evoluateInfo.nbElementsToEvoluate));
            } else if(garePlusProche.getNiveau() >= 1 && garePlusProche.getNiveau() <= 2) {
                LayoutInflater inflater = mainActivity.getLayoutInflater();

                View viewDialog = inflater.inflate(R.layout.dialog_evolution, null);

                prepareDialogEvolution(viewDialog, garePlusProche, mainActivity.getString(R.string.evolutionGareNiveauPlusUnConfirmation)+ " " + String.valueOf(garePlusProche.getNiveau() + 1), evoluateInfo.nbElementsToEvoluate);

                dialogBuilder.setView(viewDialog);
            }
            else {
                dialogBuilder.setMessage(R.string.evolutionGareNiveauMax);
            }

            //TODO : Mettre un bouton d'accord
            dialogBuilder.setPositiveButton(R.string.boutonValider, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    //On ferme la boîte
                    dialog.cancel();
                }
            });

            //Et on remet la couleur de base du bouton
            boutonEvolution.clearColorFilter();
        }
        final AlertDialog dialog = dialogBuilder.create();

        boutonEvolution.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.show();
            }
        });
    }

    private void gestionBoutonFourniture(Gare garePlusProche, final ImageView boutonFournisseur)
    {
        //On ne peut prendre un ticket que si on est au moins niveau 1
        if(garePlusProche.getNiveau() > 0)
        {
            boutonFournisseur.setVisibility(View.VISIBLE);
            CouleurOutils.setTicketIcon(boutonFournisseur, garePlusProche.getCouleur());
        }
        else
            boutonFournisseur.setVisibility(View.INVISIBLE);
    }

    private void gestionBoutonCreerBoutique(final Gare garePlusProche, final Button boutonCreerBoutique, final Button boutonVoirBoutique) {
        //Uniquement s'il n'y a pas déjà une boutique, et qu'on est au moins niveau deux
        if(garePlusProche.getNiveau() >= BoutiqueConstantes.niveauOuverture && (garePlusProche.getIdBoutique() == null || garePlusProche.getIdBoutique() == 0)) {
            boutonCreerBoutique.setVisibility(View.VISIBLE);
            boutonCreerBoutique.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    OuvrirBoutique ouvrirBoutique = new OuvrirBoutique(mainActivity, gareControlleur, garePlusProche);
                    ouvrirBoutique.setCallbackSuccessDialog(new CallbackSuccessDialog() {
                        @Override
                        public void callback() {
                            Toast.makeText(mainActivity, R.string.boutiqueOuvertureConfirmation, Toast.LENGTH_LONG).show();
                            boutonCreerBoutique.setVisibility(View.GONE);
                            gestionBoutonVoirBoutique(garePlusProche, boutonVoirBoutique);
                        }
                    });
                    ouvrirBoutique.ouvrirDialog();
                }
            });
        } else {
            boutonCreerBoutique.setVisibility(View.GONE);
        }
    }

    private void gestionBoutonVoirBoutique(final Gare garePlusProche, final Button boutonVoirBoutique) {
        //Uniquement s'il n'y a pas déjà une boutique, et qu'on est au moins niveau deux
        if(garePlusProche.getIdBoutique() > 0) {
            boutonVoirBoutique.setVisibility(View.VISIBLE);
            boutonVoirBoutique.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent i = new Intent(mainActivity.getApplicationContext(), BoutiqueActivity.class);
                    i.putExtra("BOUTIQUEID", garePlusProche.getIdBoutique());
                    mainActivity.startActivity(i);
                }
            });
        } else {
            boutonVoirBoutique.setVisibility(View.GONE);
        }
    }

    private void mettreAJourAffichage(final GareCtrl gareControlleur, final Gare garePlusProche, final float minDistance)
    {
        TextView champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNom); //Le premier champ récupéré sera toujours celui du nom de la gare
        if(champ == null) //On a quitté le fragment
            return;

        //On récupère les boutons
        final Button boutonTamponner = (Button) mainActivity.findViewById(R.id.boutonTampon);
        final Button boutonCreerBoutique = (Button) mainActivity.findViewById(R.id.boutonCreerBoutique);
        final Button boutonVoirBoutique = (Button) mainActivity.findViewById(R.id.boutonVoirBoutique);
        final ImageView boutonFournisseur = (ImageView) mainActivity.findViewById(R.id.boutonFournisseur);
        final ImageView boutonEvolution = (ImageView) mainActivity.findViewById(R.id.boutonEvolution);


        if (garePlusProche == null) {
            champ.setText(R.string.aucuneGareProche);
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNiveau);
            champ.setText(R.string.niveauNull);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1)
                champ.setTextAlignment(View.TEXT_ALIGNMENT_CENTER);
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheDistance);
            champ.setText(R.string.naDistance);
            boutonTamponner.setEnabled(false);
            boutonFournisseur.setVisibility(View.GONE);
            boutonEvolution.setVisibility(View.GONE);
            ListView listView = (ListView) mainActivity.findViewById(R.id.listeGaresProches);
            listView.setAdapter(null);
        } else {
            // Create the adapter to convert the array to views
            GaresAdapter adapter = new GaresAdapter(mainActivity, listeGares);

            // Attach the adapter to a ListView
            ListView listView = (ListView) mainActivity.findViewById(R.id.listeGaresProches);
            listView.setAdapter(adapter);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                    Gare gareTamponnee = listeGares.get(position);
                    Intent i = new Intent(mainActivity, GareActivity.class);
                    i.putExtra(GareActivity.ARG_IDGARE, gareTamponnee.getId());
                    mainActivity.startActivity(i);
                }
            });

            int distanceEntiere = Math.round(minDistance);

            champ.setText(StringOutils.displayBeautifullNameStation(garePlusProche.getNom()));
	        champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNiveau);
            champ.setText(mainActivity.getString(R.string.niveau) + " " + garePlusProche.getNiveau());
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheDistance);
            champ.setText(distanceEntiere + " m");

            if (distanceEntiere <= 150) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                    champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNiveau);
                    champ.setTextAlignment(View.TEXT_ALIGNMENT_TEXT_END);
                }

                if(!tamponControlleur.ifAlreadyTamponned(garePlusProche.getId()))
                {
                    boutonTamponner.setEnabled(true);
                    final Gare finalGarePlusProche = garePlusProche;
                    boutonTamponner.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            //On tamponne
                            Tampon t = new Tampon(-1, finalGarePlusProche.getId(), new Date());
                            tamponControlleur.create(t);

                            //On met à jour la gare
                            garePlusProche.setDerniereValidationDate(t.getDate());
                            garePlusProche.incrementeNbTampons();
                            gareControlleur.update(garePlusProche);

                            //On donne les éventuels succès
                            succesManager.verifierSucces(garePlusProche);

                            boutonTamponner.setEnabled(false);

                            //On va au passage lui donner un ticket s'il peut en avoir un
                            if(garePlusProche.getNiveau() >= 1)
                                donnerTicket(garePlusProche.getCouleur());

                            //Et on regarde si on peut monter de niveau ou pas
                            gestionBoutonEvolution(gareControlleur, finalGarePlusProche, boutonEvolution, minDistance);
                        }
                    });
                }

                gestionBoutonEvolution(gareControlleur, garePlusProche, boutonEvolution, minDistance);
                gestionBoutonFourniture(garePlusProche, boutonFournisseur);
                gestionBoutonCreerBoutique(garePlusProche, boutonCreerBoutique, boutonVoirBoutique);
                gestionBoutonVoirBoutique(garePlusProche, boutonVoirBoutique);
            } else {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                    champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNiveau);
                    champ.setTextAlignment(View.TEXT_ALIGNMENT_CENTER);
                }

                boutonTamponner.setEnabled(false);
                boutonFournisseur.setVisibility(View.GONE);
                boutonEvolution.setVisibility(View.GONE);
                boutonCreerBoutique.setVisibility(View.GONE);
                boutonVoirBoutique.setVisibility(View.GONE);
            }
        }
    }

    private void donnerTicket(int couleur) {
        inventaireControlleur.donnerTicket(couleur);

        mainActivity.invalidateOptionsMenu();
    }
}
