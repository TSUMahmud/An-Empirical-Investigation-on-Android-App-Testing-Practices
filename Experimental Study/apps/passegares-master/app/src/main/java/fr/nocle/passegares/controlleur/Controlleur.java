package fr.nocle.passegares.controlleur;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import fr.nocle.passegares.bdd.Connecteur;

/**
 * Created by jonathanmm on 02/09/16.
 */
public class Controlleur {
    protected final static int VERSION = 145;
    protected final static String NOM_FICHIER = "PasseGares.db";

    protected SQLiteDatabase bdd = null;
    protected Connecteur connecteur = null;

    public Controlleur(Context contexte)
    {
        this.connecteur = new Connecteur(contexte, NOM_FICHIER, null, VERSION);
    }

    public Controlleur(SQLiteDatabase bdd)
    {
        this.bdd = bdd;
    }

    public SQLiteDatabase open()
    {
        bdd = connecteur.getWritableDatabase();
        return bdd;
    }

    public void close()
    {
        vacuum();
        bdd.close();
    }

    public SQLiteDatabase get()
    {
        return bdd;
    }

    public void beginTransaction()
    {
        bdd.beginTransaction();
    }

    public void endTransaction() {
        bdd.endTransaction();
    }

    public void setTransactionSuccessful() {
        bdd.setTransactionSuccessful();
    }

    public void vacuum() { bdd.execSQL("VACUUM;"); }
}
