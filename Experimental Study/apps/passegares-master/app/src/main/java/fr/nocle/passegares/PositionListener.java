package fr.nocle.passegares;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.radar.RadarFragment;

/**
 * Created by jonathanmm on 15/10/16.
 */

class PositionListener implements LocationListener {
    private RadarFragment mainActivity;
    private GareCtrl gareControlleur;
    private TamponCtrl tamponControlleur;
    private Messenger messageHandler;

    @Deprecated
    public PositionListener(RadarFragment activity, GareCtrl gareControlleur, TamponCtrl tamponControlleur) {
        mainActivity = activity;
        this.gareControlleur = gareControlleur;
        this.tamponControlleur = tamponControlleur;
        this.messageHandler = null;
    }

    public PositionListener(Messenger messager) {
        mainActivity = null;
        Log.d("LOCPG", "Création du listener !");
        this.messageHandler = messager;
    }

    @Override
    public void onLocationChanged(Location location) {
        //Log.d("LOCPG", "J'ai ! "+listeGares.size());
        Log.d("LOCPG", "Nouvelle localisation !");
        Message message = Message.obtain();
        message.arg1 = 0;
        Bundle envoi = new Bundle();
        envoi.putDouble("LAT", location.getLatitude());
        envoi.putDouble("LON", location.getLongitude());
        message.setData(envoi);
        try {
            messageHandler.send(message);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
/*
        champ = (TextView) mainActivity.findViewById(R.id.position);
        champ.setText("Position actuelle : (" + Double.valueOf(location.getLatitude()).toString() + "; " + Double.valueOf(location.getLongitude()).toString() + ")");

        if(garePlusProche == null)
        {
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNom);
            champ.setText(R.string.aucuneGareProche);
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheDistance);
            champ.setText("- m");
            ListView listView = (ListView) mainActivity.findViewById(R.id.listeGaresProches);
            listView.setAdapter(null);
        } else {
            // Create the adapter to convert the array to views
            GaresAdapter adapter = new GaresAdapter(mainActivity, listeGares);

            // Attach the adapter to a ListView
            ListView listView = (ListView) mainActivity.findViewById(R.id.listeGaresProches);
            listView.setAdapter(adapter);

            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheNom);
            champ.setText(garePlusProche.getNom());
            champ = (TextView) mainActivity.findViewById(R.id.garePlusProcheDistance);
            champ.setText((int) minDistance + " m");

            final Button boutonTamponner = (Button) mainActivity.findViewById(R.id.boutonTampon);
            if(minDistance <= 150 && !tamponControlleur.ifAlreadyTamponned(garePlusProche.getId()))
            {
                boutonTamponner.setEnabled(true);
                final Gare finalGarePlusProche = garePlusProche;
                boutonTamponner.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        //On tamponne
                        Tampon t = new Tampon(-1, finalGarePlusProche.getId(), new Date());
                        tamponControlleur.create(t);
                        boutonTamponner.setEnabled(false);
                    }
                });
            } else {
                boutonTamponner.setEnabled(false);
            }
        }*/
    }

    @Override
    public void onStatusChanged(String provider, int status, Bundle extras) {
        /*String s = "";
        if(status == LocationProvider.AVAILABLE)
            s = "OK";
        else if(status == LocationProvider.TEMPORARILY_UNAVAILABLE)
            s = "KO temp";
        else
            s = "KO";
        Toast.makeText(mainActivity, "Provider : " + provider + ", statut : " + s, Toast.LENGTH_SHORT).show();
        Log.d("Statut location", "Provider : " + provider + ", statut : " + s);*/
    }

    @Override
    public void onProviderEnabled(String provider) {

    }

    @Override
    public void onProviderDisabled(String provider) {

    }
}