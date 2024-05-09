package fr.nocle.passegares.navigation;

import android.Manifest;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.preference.PreferenceManager;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import fr.nocle.passegares.BuildConfig;
import fr.nocle.passegares.CreditsActivity;
import fr.nocle.passegares.LocationService;
import fr.nocle.passegares.MonnaieFragment;
import fr.nocle.passegares.R;
import fr.nocle.passegares.interfaces.LocationManager;
import fr.nocle.passegares.interfaces.OnNavigateIntentManager;
import fr.nocle.passegares.interfaces.OnUpdateManager;
import fr.nocle.passegares.interfaces.ToolbarManager;
import fr.nocle.passegares.preferences.PreferencesActivity;
import fr.nocle.passegares.radar.MessageHandler;
import fr.nocle.passegares.radar.RadarFragment;
import fr.nocle.passegares.succes.SuccesFragment;
import fr.nocle.passegares.visa.ResumeVisaSwipeFragment;

public class MainMenuActivity extends AppCompatActivity
        implements NavigationView.OnNavigationItemSelectedListener,
        BottomNavigationView.OnNavigationItemSelectedListener,
        LocationManager,
        OnNavigateIntentManager,
        OnUpdateManager,
        ToolbarManager {

    private Fragment fragmentRadar;
    private Fragment fragmentTicket;
    private Fragment fragmentTampons;
    private Fragment fragmentSucces;
    private NavigationView navigationView;
    private BottomNavigationView bottomNavigationView;
    private FragmentManager fragmentManager;

    private MessageHandler messageHandler;
    private Intent serviceLocation;
    private boolean serviceLocationEnCours = false;
    private boolean installationEnCours = false;

    private static final int DEMANDE_DROIT_LOCALISATION = 1;
    private static final int RESULT_PREMIER_LANCEMENT = 1;

    public static final String PREFERENCE_ACTIVER_NOTIFICATION = "activerNotification";
    public static final String PREFERENCE_PRECEDENTE_VERSION = "derniereVersionMaJDialogue";
    public static final String PREFERENCE_PREMIER_LANCEMENT = "premierLancement";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mainmenu);

        this.checkFirstLaunch();

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                getWindow().setStatusBarColor(getColor(R.color.applicationColor));
        }

        bottomNavigationView = findViewById(R.id.nav_bottomview);

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        navigationView = findViewById(R.id.nav_view);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(
                this, drawer, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();
        navigationView.setNavigationItemSelectedListener(this);

        bottomNavigationView.setOnNavigationItemSelectedListener(this);

        //On récupère le fragment manager pour gérer le bouton retour
        fragmentManager = getSupportFragmentManager();

        //Création du channel de notification
        createNotificationChannel();

        //On lance directement le fragment radar
        this.showFragmentOnStart();

        //Et on démarre la localisation
        this.onStartLocation();
    }

    @Override
    protected void onPause()
    {
        super.onPause();
        this.onPauseLocation();
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        this.onResumeLocation();
    }

    @Override
    protected void onDestroy()
    {
        super.onDestroy();
        this.onStopLocation();
    }

    @Override
    public void onBackPressed() {
        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        if (drawer.isDrawerOpen(GravityCompat.START)) {
            drawer.closeDrawer(GravityCompat.START);
        } else if (fragmentManager.getBackStackEntryCount() > 0) {
            fragmentManager.popBackStack();
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onNavigationItemSelected(MenuItem item) {
        // Lancement du bon fragment
        int id = item.getItemId();

        switch(id)
        {
            // TabBar
            case R.id.bottomnav_radar:
                this.showRadarFragment(true);
                break;
            case R.id.bottomnav_tampon:
                this.showVoirTamponsFragment();
                break;
            case R.id.bottomnav_succes:
                this.showSuccesFragment();
                break;
            case R.id.bottomnav_tickets:
                this.showTicketFragment();
                break;

            //Navigation slider
            case R.id.nav_preferences:
                this.startPreferenceActivity();
                break;
            case R.id.nav_credits:
                this.startCreditsActivity();
                break;
            case R.id.nav_depot:
                this.redirectToDepot();
                break;
        }

        DrawerLayout drawer = findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    private void startPreferenceActivity()
    {
        Intent i = new Intent(getApplicationContext(), PreferencesActivity.class);
        startActivity(i);
    }

    private void startCreditsActivity()
    {
        Intent i = new Intent(getApplicationContext(), CreditsActivity.class);
        startActivity(i);
    }

    private void redirectToDepot()
    {
        Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://framagit.org/JonathanMM/passegares"));
        startActivity(browserIntent);
    }

    private void showRadarFragment(boolean addToStack){
        if (this.fragmentRadar == null) this.fragmentRadar = new RadarFragment();
        this.startTransactionFragment(this.fragmentRadar, addToStack);
    }

    private void showTicketFragment(){
        if (this.fragmentTicket == null) this.fragmentTicket = new MonnaieFragment();
        this.startTransactionFragment(this.fragmentTicket);
    }

    private void showVoirTamponsFragment(){
        if (this.fragmentTampons == null) this.fragmentTampons = new ResumeVisaSwipeFragment();
        this.startTransactionFragment(this.fragmentTampons);
    }

    private void showSuccesFragment(){
        if (this.fragmentSucces == null) this.fragmentSucces = new SuccesFragment();
        this.startTransactionFragment(this.fragmentSucces);
    }

    private void startTransactionFragment(Fragment fragment){
        this.startTransactionFragment(fragment, true);
    }

    private void startTransactionFragment(Fragment fragment, boolean addToStack){
        if (!fragment.isVisible()){
            FragmentTransaction transaction = fragmentManager.beginTransaction()
                    .replace(R.id.activity_main_frame_layout, fragment);
            if(addToStack)
                transaction.addToBackStack(null);
            transaction.commit();
        }
    }

    private void showFragmentOnStart()
    {
        //Par défaut, c'est le fragment radar qu'on voit
        this.showRadarFragment(false);
        this.bottomNavigationView.getMenu().getItem(0).setChecked(true);
    }

    private void onStartLocation() {
        if(installationEnCours) return;

        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_DENIED || ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_DENIED) {
            this.setTextLocation(R.string.localisationImpossible);
        } else {
            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
                if (ActivityCompat.shouldShowRequestPermissionRationale(this,
                        Manifest.permission.ACCESS_FINE_LOCATION) && ActivityCompat.shouldShowRequestPermissionRationale(this,
                        Manifest.permission.ACCESS_COARSE_LOCATION)) {

                    this.setTextLocation(R.string.localisationEnCours);
                    messageHandler = new MessageHandler(this);
                    Log.d("LOCPG", "Demarrage du service");
                    serviceLocation = new Intent(this, LocationService.class);
                    serviceLocation.putExtra("MESSAGER", new Messenger(messageHandler));
                    serviceLocation.setAction("START");
                }
            } else {
                this.setTextLocation(R.string.localisationEnCours);
                messageHandler = new MessageHandler(this);
                Log.d("LOCPG", "Demarrage du service");
                serviceLocation = new Intent(this, LocationService.class);
                serviceLocation.putExtra("MESSAGER", new Messenger(messageHandler));
                serviceLocation.setAction("START");
            }
        }
    }

    private void setTextLocation(int ressource)
    {
        if(this.fragmentRadar.isVisible())
        {
            View view = this.fragmentRadar.getView();
            TextView monTexte = view.findViewById(R.id.garePlusProcheNom);
            monTexte.setText(ressource);
        }
    }

    private void onPauseLocation() {
        if(serviceLocation != null) {
            SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
            boolean notification = preferences.getBoolean(PREFERENCE_ACTIVER_NOTIFICATION, true);
            if (notification) {
                Message message = Message.obtain();
                message.arg1 = MessageHandler.ACTIVER_NOTIFICATION;
                messageHandler.sendMessage(message);
            } else if (serviceLocationEnCours) {
                this.stopService(serviceLocation);
                serviceLocationEnCours = false;
            }
        }
    }

    private void onResumeLocation() {
        if(installationEnCours) return;

        this.invalidateOptionsMenu();
        if(serviceLocation == null) {
            ActivityCompat.requestPermissions(this,
                    new String[]{Manifest.permission.ACCESS_COARSE_LOCATION, Manifest.permission.ACCESS_FINE_LOCATION}, DEMANDE_DROIT_LOCALISATION);
        } else {
            if(!serviceLocationEnCours) {
                this.startService(serviceLocation);
                serviceLocationEnCours = true;
            }

            Message message = Message.obtain();
            message.arg1 = MessageHandler.DESACTIVER_NOTIFICATION;
            messageHandler.sendMessage(message);
        }
    }

    private void onStopLocation() {
        if(messageHandler != null) {
            Message message = Message.obtain();
            message.arg1 = MessageHandler.DESACTIVER_NOTIFICATION;
            messageHandler.sendMessage(message);
        }
        this.stopService(serviceLocation);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode,
                                           String permissions[], int[] grantResults) {
        switch (requestCode) {
            case DEMANDE_DROIT_LOCALISATION: {
                View view = this.fragmentRadar.getView();
                // If request is cancelled, the result arrays are empty.
                TextView monTexte = (TextView) view.findViewById(R.id.garePlusProcheNom);
                if (grantResults.length > 0
                        && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    //Bon, bah, on demande la localisation
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED)
                    {
                        return;
                    }

                    monTexte.setText(R.string.localisationEnCours);
                    messageHandler = new MessageHandler(this);
                    serviceLocation = new Intent(this, LocationService.class);
                    serviceLocation.putExtra("MESSAGER", new Messenger(messageHandler));
                    serviceLocation.setAction("START");
                } else {
                    monTexte.setText(R.string.localisationImpossible);
                    return;
                }
            }
        }
    }

    private SharedPreferences onGetPreferences() {
        return PreferenceManager.getDefaultSharedPreferences(this);
    }

    private void createNotificationChannel() {
        //N'existe que sur android API 26+
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            CharSequence name = getString(R.string.notification_channel_nom);
            String description = getString(R.string.notification_channel_description);
            int importance = NotificationManager.IMPORTANCE_LOW;
            NotificationChannel channel = new NotificationChannel(MessageHandler.NOTIFICATION_CHANNEL_RADAR_ID, name, importance);
            channel.setDescription(description);
            channel.setShowBadge(false);
            NotificationManager notificationManager = this.getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }

    @Override
    public boolean onMoveActivity(Class activityClass) {
        Intent i = new Intent(this, activityClass);
        startActivity(i);
        return true;
    }

    @Override
    public boolean onMoveActivity(Class activityClass, String name, boolean value) {
        Intent i = new Intent(this, activityClass);
        i.putExtra(name, value);
        startActivity(i);
        return true;
    }

    @Override
    public boolean onMoveActivity(Class activityClass, String name, int value) {
        Intent i = new Intent(this, activityClass);
        i.putExtra(name, value);
        startActivity(i);
        return true;
    }

    @Override
    public boolean onMoveActivity(Class activityClass, String name1, int value1, String name2, boolean value2) {
        Intent i = new Intent(this, activityClass);
        i.putExtra(name1, value1);
        i.putExtra(name2, value2);
        startActivity(i);
        return true;
    }

    @Override
    public boolean getBooleanExtra(String name, boolean defaultValue) {
        return getIntent().getBooleanExtra(name, defaultValue);
    }

    private void checkFirstLaunch() {
        SharedPreferences preferences = this.onGetPreferences();
        boolean premierLancement = preferences.getBoolean(PREFERENCE_PREMIER_LANCEMENT, true);
        int lastVersionUpdate = preferences.getInt(PREFERENCE_PRECEDENTE_VERSION, 0);

        if(premierLancement && lastVersionUpdate != BuildConfig.VERSION_CODE)
        {
            Intent i = new Intent(this, PremierLancementActivity.class);
            startActivityForResult(i, RESULT_PREMIER_LANCEMENT);
            installationEnCours = true;
            SharedPreferences.Editor editor = preferences.edit();
            editor.putBoolean(MainMenuActivity.PREFERENCE_PREMIER_LANCEMENT, true); //On marque comme étant fait.
            editor.putInt(PREFERENCE_PRECEDENTE_VERSION, BuildConfig.VERSION_CODE); //On désactive en même temps la popup des nouveautés
            editor.apply();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        super.onActivityResult(requestCode, resultCode, data);

        if(requestCode == RESULT_PREMIER_LANCEMENT) {
            this.setInstallationTerminee();
            this.onStartLocation();
        }
    }

    @Override
    public void OnCheckUpdate() {
        checkDisplayUpdateDialog();
    }


    private void checkDisplayUpdateDialog() {
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        int lastVersionUpdate = preferences.getInt(PREFERENCE_PRECEDENTE_VERSION, 0);
        if(lastVersionUpdate != BuildConfig.VERSION_CODE)
        {
            //On affiche la boîte de dialogue de mise à jour
            AlertDialog.Builder dialog = new AlertDialog.Builder(this);
            dialog.setMessage(R.string.nouveautesRelease)
                    .setTitle(R.string.dialogMiseAJourTitle);
            dialog.setPositiveButton(R.string.boutonDAccord, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    dialog.cancel();
                }
            });
            dialog.create();
            dialog.show();
            SharedPreferences.Editor editor = preferences.edit();
            editor.putInt(PREFERENCE_PRECEDENTE_VERSION, BuildConfig.VERSION_CODE);
            editor.apply();
        }
    }

    @Override
    public void setTitleToolbar(int ressource) {
        this.setTitle(ressource);
    }

    @Override
    public void setTitleToolbar(String title) {
        this.setTitle(title);
    }

    @Override
    public void askRestoreGarePlusProche() {
        if(messageHandler != null) {
            Message message = Message.obtain();
            message.arg1 = MessageHandler.ACTUALISER_GARE_PLUS_PROCHE;
            messageHandler.sendMessage(message);
        }
    }

    public void setInstallationTerminee()
    {
        installationEnCours = false;
    }
}
