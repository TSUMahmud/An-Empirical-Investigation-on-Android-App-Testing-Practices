package fr.nocle.passegares.preferences;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.os.Bundle;
import android.widget.Toast;

import fr.nocle.passegares.R;
import fr.nocle.passegares.bdd.BoutiqueBDD;
import fr.nocle.passegares.bdd.GareBDD;
import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.bdd.LigneBDD;
import fr.nocle.passegares.bdd.RegionBDD;
import fr.nocle.passegares.bdd.TamponBDD;
import fr.nocle.passegares.controlleur.Controlleur;
import fr.nocle.passegares.controlleur.ExportImportBDD;
import fr.nocle.passegares.controlleur.ImportCSV;
import fr.nocle.passegares.succes.SuccesBDD;

class ReinitThread extends Thread {
    private Context contexte;
    private DialogInterface loadingDialog;

    ReinitThread(Context context, DialogInterface loadingDialog) {
        this.contexte = context;
        this.loadingDialog = loadingDialog;
    }

    public void run() {
        Controlleur ctrl = new Controlleur(contexte);
        SQLiteDatabase bdd = ctrl.open();
        bdd.execSQL(TamponBDD.TABLE_SUPPRESSION);
        bdd.execSQL(GareBDD.TABLE_SUPPRESSION);
        bdd.execSQL(LigneBDD.TABLE_SUPPRESSION);
        bdd.execSQL(GareDansLigneBDD.TABLE_SUPPRESSION);
        bdd.execSQL(InventaireBDD.TABLE_SUPPRESSION);
        bdd.execSQL(RegionBDD.TABLE_SUPPRESSION);
        bdd.execSQL(BoutiqueBDD.TABLE_SUPPRESSION);
        bdd.execSQL(SuccesBDD.TABLE_SUPPRESSION);

        bdd.execSQL(TamponBDD.TABLE_CREATION);
        bdd.execSQL(GareBDD.TABLE_CREATION);
        bdd.execSQL(LigneBDD.TABLE_CREATION);
        bdd.execSQL(GareDansLigneBDD.TABLE_CREATION);
        bdd.execSQL(InventaireBDD.TABLE_CREATION);
        bdd.execSQL(InventaireBDD.TABLE_INIT);
        bdd.execSQL(RegionBDD.TABLE_CREATION);
        bdd.execSQL(BoutiqueBDD.TABLE_CREATION);
        bdd.execSQL(SuccesBDD.TABLE_CREATION);
        bdd.execSQL(SuccesBDD.TABLE_INIT);
        bdd.execSQL(SuccesBDD.TABLE_ADD_NBGARE_1000);

        ImportCSV.updatedataRegions(contexte, bdd, 1, -1);

        ctrl.close();

        loadingDialog.dismiss();
//        Toast.makeText(contexte, "Réinitialisation terminée.", Toast.LENGTH_LONG).show();
    }
}

class ReinitGDLThread extends Thread {
    private Context contexte;
    private DialogInterface loadingDialog;

    ReinitGDLThread(Context context, DialogInterface loadingDialog) {
        this.contexte = context;
        this.loadingDialog = loadingDialog;
    }

    public void run() {
        Controlleur ctrl = new Controlleur(contexte);
        SQLiteDatabase bdd = ctrl.open();
        bdd.execSQL(GareDansLigneBDD.TABLE_SUPPRESSION);

        bdd.execSQL(GareDansLigneBDD.TABLE_CREATION);

        ImportCSV.reinitDataGareDansLigne(contexte, bdd);

        ctrl.close();

        loadingDialog.dismiss();
//        Toast.makeText(contexte, "Réinitialisation terminée.", Toast.LENGTH_LONG).show();
    }
}

public class PreferencesAvanceesActivity extends PreferenceActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getFragmentManager().beginTransaction().replace(android.R.id.content, new MyPreferenceFragment()).commit();
    }

    public static class MyPreferenceFragment extends PreferenceFragment
    {
        private static final int UPDATE_FILE = 1;

        @Override
        public void onCreate(final Bundle savedInstanceState)
        {
            super.onCreate(savedInstanceState);
            addPreferencesFromResource(R.xml.preferencesavancees);

            Preference viderBDDPref = (Preference) findPreference("viderBDD");
            //On fait une dialogue de confirmation
            final AlertDialog.Builder dialogViderBDD = new AlertDialog.Builder(getActivity());

            //On créer aussi une dialogue de chargement
            dialogViderBDD.setMessage(R.string.dialogVidageBDDExplication).setTitle(R.string.dialogVidageBDDTitre);
            dialogViderBDD.setPositiveButton(R.string.boutonEffacer, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    // On valide la suppression des données
                    dialog.cancel();
                    ProgressDialog loadingDialog = ProgressDialog.show(getActivity(), null, getActivity().getString(R.string.dialogVidageBDDSuppressionEnCours), true);

                    ReinitThread p = new ReinitThread(getActivity(), loadingDialog);
                    p.start();
                }
            });
            dialogViderBDD.setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    // On refuse la suppression des données
                    dialog.cancel();
                }
            });

            dialogViderBDD.create();
            viderBDDPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                public boolean onPreferenceClick(Preference preference) {
                    dialogViderBDD.show();

                    return true;
                }
            });

            Preference reinitGDLPref = (Preference) findPreference("reinitGDL");
            //On fait une dialogue de confirmation
            final AlertDialog.Builder dialogReinitGDL = new AlertDialog.Builder(getActivity());

            //On créer aussi une dialogue de chargement
            dialogReinitGDL.setMessage(R.string.dialogReinitGDLExplication).setTitle(R.string.dialogReinitGDLTitre);
            dialogReinitGDL.setPositiveButton(R.string.boutonReinit, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    // On valide la suppression des données
                    dialog.cancel();
                    ProgressDialog loadingDialog = ProgressDialog.show(getActivity(), null, getActivity().getString(R.string.dialogReinitGDLSuppressionEnCours), true);

                    ReinitGDLThread p = new ReinitGDLThread(getActivity(), loadingDialog);
                    p.start();
                }
            });
            dialogReinitGDL.setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    // On refuse la suppression des données
                    dialog.cancel();
                }
            });

            dialogReinitGDL.create();
            reinitGDLPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                public boolean onPreferenceClick(Preference preference) {
                    dialogReinitGDL.show();

                    return true;
                }
            });

            Preference exportBDD = (Preference) findPreference("exportBDD");
            final Activity myActivity = getActivity();
            exportBDD.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                @Override
                public boolean onPreferenceClick(Preference preference) {
                    if(ExportImportBDD.verifierPermissionEcritureFichier(getActivity())) {
                        //Vaccum
                        Controlleur ctrl = new Controlleur(myActivity);
                        ctrl.open();
                        ctrl.vacuum();
                        ctrl.close();

                        String cheminExport = ExportImportBDD.exporterBDD(getActivity());
                        if(cheminExport != null)
                            Toast.makeText(getActivity(), getString(R.string.exportMessageSucces) + " " + cheminExport, Toast.LENGTH_LONG).show();
                        else
                            Toast.makeText(getActivity(), R.string.exportMessageErreur, Toast.LENGTH_LONG).show();

                    }
                    else
                    {
                        Toast.makeText(getActivity(), R.string.exportDemanderPermission, Toast.LENGTH_LONG).show();
                    }
                    return true;
                }
            });

            Preference importBDD = (Preference) findPreference("importBDD");
            importBDD.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                @Override
                public boolean onPreferenceClick(Preference preference) {
                    Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                    intent.setType("*/*");

                    startActivityForResult(intent, UPDATE_FILE);
                    return true;
                }
            });
        }

        @Override
        public void onActivityResult(int requestCode, int resultCode, Intent data) {
            //On essaye de faire un import
            if (requestCode == UPDATE_FILE) {
                if (resultCode == RESULT_OK) {
                    Uri nouvelleBDDUri = data.getData();
                    String adresse = ExportImportBDD.importerBDD(getActivity(), nouvelleBDDUri);
                    if(adresse == null)
                        Toast.makeText(getActivity(), R.string.importMessageErreur, Toast.LENGTH_LONG).show();
                    else
                    {
                        Toast.makeText(getActivity(), R.string.importMessageSucces, Toast.LENGTH_LONG).show();
                        Context baseContext = getActivity().getBaseContext();
                        Intent i = baseContext.getPackageManager().getLaunchIntentForPackage(baseContext.getPackageName());
                        i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                        startActivity(i);
                    }
                }
            }
        }
    }
}
