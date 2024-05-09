package fr.nocle.passegares.region;

import android.content.Context;
import android.content.DialogInterface;
import android.database.sqlite.SQLiteDatabase;

import fr.nocle.passegares.controlleur.ImportCSV;
import fr.nocle.passegares.controlleur.RegionCtrl;
import fr.nocle.passegares.modele.Region;

class AjoutRegionThread extends Thread {
    private Context contexte;
    private DialogInterface loadingDialog;
    private Region region;
    private boolean installation;

    AjoutRegionThread(Context context, DialogInterface loadingDialog, Region region, boolean installation) {
        this.contexte = context;
        this.loadingDialog = loadingDialog;
        this.region = region;
        this.installation = installation;
    }

    public void run() {
        RegionCtrl regionCtrl = new RegionCtrl(contexte);
        SQLiteDatabase bdd = regionCtrl.open();

        //On utilise une transaction pour que tout passe en même temps
        bdd.beginTransaction();
        ImportCSV.updateAllDataRegion(contexte, bdd, 1, -1, region);

        //Et on met à jour la région !
        region.setEstInstalle(true);
        regionCtrl.update(region);

        bdd.setTransactionSuccessful();
        bdd.endTransaction();
        regionCtrl.close();

        loadingDialog.dismiss();
    }
}
