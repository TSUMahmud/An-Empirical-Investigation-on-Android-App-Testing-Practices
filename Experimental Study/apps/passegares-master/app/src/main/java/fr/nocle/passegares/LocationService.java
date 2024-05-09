package fr.nocle.passegares;

import android.Manifest;
import android.annotation.SuppressLint;
import android.app.IntentService;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import android.util.Log;
import android.widget.Toast;

import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;

public class LocationService extends Service {
    private static final int DEMANDE_DROIT_LOCALISATION = 1;
    private static final String PREFERENCE_INTERVAL_ACTUALISATION = "Intervalle_Actualisation";
    private static final int defaultIntervalleActualisation = 15;
    private static final int minIntervalleActualisation = 0;
    private static final int maxIntervalleActualisation = 30;

    private int intervalleActualisation = defaultIntervalleActualisation;

    private LocationManager lm = null;
    private LocationListener ll;
    private Messenger messageHandler;

    /*protected void onHandleIntent(Intent intent) {
        Log.d("LOCPG", "Allo marcel ?");
        if(intent != null)
        {
            Bundle extras = intent.getExtras();
            messageHandler = (Messenger) extras.get("MESSAGER");

            String action = intent.getAction();
            if(action.equals("START"))
            {
                Log.d("LOCPG", "creation");

                ll = (LocationListener) new PositionListener(messageHandler);
                lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, intervalleActualisation, 0, ll);
            } /*else if(action.equals("END"))
            {
                Log.d("LOCPG", "destruction");
                lm.removeUpdates(ll);
            }
        }
    }*/

    @SuppressLint("MissingPermission") //Est déjà vérifié précédemment
    @Override
    public int onStartCommand(Intent intent, int flags, int startId)
    {
        Log.d("LOCPG", "Start commande");

        super.onStartCommand(intent, flags, startId);

        if(intent != null)
        {
            Log.d("LOCPG", "Start location service");
            Bundle extras = intent.getExtras();
            messageHandler = (Messenger) extras.get("MESSAGER");
            ll = (LocationListener) new PositionListener(messageHandler);
            lm.requestLocationUpdates(LocationManager.GPS_PROVIDER, intervalleActualisation, 0, ll);
        }
        return START_STICKY;
    }

    @Override
    public void onCreate()
    {
        Log.d("LOCPG", "Create");
        super.onCreate();
        if(lm == null)
            lm = (LocationManager) getApplicationContext().getSystemService(LOCATION_SERVICE);

        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        try
        {
            int intervallePreference = Integer.valueOf(preferences.getString(PREFERENCE_INTERVAL_ACTUALISATION, String.valueOf(defaultIntervalleActualisation)));
            intervallePreference = Math.min(Math.max(intervallePreference, minIntervalleActualisation), maxIntervalleActualisation);
            intervalleActualisation = intervallePreference * 1000;
        } catch(NumberFormatException ex)
        {
            intervalleActualisation = defaultIntervalleActualisation;
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        Log.d("LOCPG", "Destroy location service");
        if(lm != null && ll != null)
            lm.removeUpdates(ll);
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
