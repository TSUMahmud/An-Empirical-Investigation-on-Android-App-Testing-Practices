package fr.nocle.passegares.controlleur;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/**
 * Created by jonathanmm on 21/05/17.
 */

public class ExportImportBDD {
    @Nullable
    public static String exporterBDD(Activity activity)
    {
        File copieBDD = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "PasseGares.db");
        File sourceBDD = activity.getDatabasePath(Controlleur.NOM_FICHIER);

        try {
            //Si le fichier d'export existe déjà
            if(copieBDD.exists())
                copieBDD.delete();
            //Et on crée le nouveau fichier
            copieBDD.createNewFile();

            FileInputStream fluxSortieBDD = new FileInputStream(sourceBDD);
            FileOutputStream fluxEntreeBDD = new FileOutputStream(copieBDD);

            if(transfertFichier(fluxEntreeBDD, fluxSortieBDD))
                return copieBDD.getAbsolutePath();
            else
                return null;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static boolean transfertFichier(FileOutputStream fluxEntreeBDD, FileInputStream fluxSortieBDD) {
        //On défini les FileChannel a l'exterieur du try catch pour pouvoir les fermer dans finally
        FileChannel sortie = null;
        FileChannel entree = null;

        try {
            sortie = fluxSortieBDD.getChannel();
            entree = fluxEntreeBDD.getChannel();

            if(sortie.isOpen()) {
                sortie.transferTo(0, sortie.size(), entree);
                return true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(sortie != null)
            {
                try {
                    sortie.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            if(entree != null)
            {
                try {
                    entree.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }

    public static boolean verifierPermissionEcritureFichier(Activity activity) {
        int REQUEST_EXTERNAL_STORAGE = 1;
        String[] PERMISSIONS_STORAGE = {
            Manifest.permission.READ_EXTERNAL_STORAGE,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
        };

        int permission = ActivityCompat.checkSelfPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE);

        if (permission != PackageManager.PERMISSION_GRANTED) {
            // We don't have permission so prompt the user
            ActivityCompat.requestPermissions(
                activity,
                PERMISSIONS_STORAGE,
                REQUEST_EXTERNAL_STORAGE
            );

            return false;
        }
        return true;
    }

    public static String importerBDD(Activity activity, Uri uri)
    {
        File copieBDD = activity.getDatabasePath(Controlleur.NOM_FICHIER);

        try {
            //Si le fichier d'export existe déjà
            if(copieBDD.exists())
                copieBDD.delete();
            //Et on crée le nouveau fichier
            copieBDD.createNewFile();

            ParcelFileDescriptor pfd = activity.getContentResolver().
                    openFileDescriptor(uri, "r");
            FileInputStream fluxSortieBDD = new FileInputStream(pfd.getFileDescriptor());
            FileOutputStream fluxEntreeBDD = new FileOutputStream(copieBDD);

            if(transfertFichier(fluxEntreeBDD, fluxSortieBDD))
                return copieBDD.getAbsolutePath();
            else
                return null;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
