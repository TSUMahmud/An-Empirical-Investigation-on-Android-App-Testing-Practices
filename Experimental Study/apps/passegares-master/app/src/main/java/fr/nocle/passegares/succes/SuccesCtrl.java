package fr.nocle.passegares.succes;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.Controlleur;

/**
 * Created by user on 25/08/2017.
 */

public class SuccesCtrl extends Controlleur {

    public SuccesCtrl(Context contexte) {
        super(contexte);
        this.open();
    }

    public SuccesCtrl(SQLiteDatabase bdd) {
        super(bdd);
    }

    public int quantiteProchainPalier(int type)
    {
        Cursor c = bdd.query(SuccesBDD.TABLE_NOM,
                new String[] {SuccesBDD.TABLE_CLE, SuccesBDD.TABLE_QTE_NECESSAIRE},
                SuccesBDD.TABLE_TYPE + " = ? AND " + SuccesBDD.TABLE_EST_VALIDE + " = ?",
                new String[] {String.valueOf(type), String.valueOf(SuccesManager.EstNonValide)},
                        null,
                        null,
                SuccesBDD.TABLE_NIVEAU + " ASC");
        if(!c.moveToFirst())
        {
            c.close();
            return -1;
        }
        int quantite = c.getInt(1);
        c.close();
        return quantite;
    }

    public void validerNiveauSuivant(int type)
    {
        Cursor c = bdd.query(SuccesBDD.TABLE_NOM,
                new String[] {SuccesBDD.TABLE_CLE},
                SuccesBDD.TABLE_TYPE + " = ? AND " + SuccesBDD.TABLE_EST_VALIDE + " = ?",
                new String[] {String.valueOf(type), String.valueOf(SuccesManager.EstNonValide)},
                null,
                null,
                SuccesBDD.TABLE_NIVEAU + " ASC");
        if(!c.moveToFirst())
        {
            c.close();
            return;
        }
        long id = c.getLong(0);
        c.close();

        ContentValues contentValues = new ContentValues();
        contentValues.put(SuccesBDD.TABLE_EST_VALIDE, SuccesManager.EstValide);
        bdd.update(SuccesBDD.TABLE_NOM, contentValues, SuccesBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(id)});
    }

    public ArrayList<Succes> getAllSucces()
    {
        Cursor c = bdd.query(SuccesBDD.TABLE_NOM,
                new String[] {SuccesBDD.TABLE_TYPE, SuccesBDD.TABLE_NIVEAU, SuccesBDD.TABLE_QTE_NECESSAIRE, SuccesBDD.TABLE_EST_VALIDE},
                "",
                new String[] {},
                null,
                null,
                SuccesBDD.TABLE_TYPE + " ASC, " + SuccesBDD.TABLE_NIVEAU + " ASC");
        if(!c.moveToFirst())
        {
            c.close();
            return null;
        }

        ArrayList<Succes> listeSucces = new ArrayList<>();
        int lastType = -1;
        boolean lastEstValide = true;
        while(c.moveToNext())
        {
            int type = c.getInt(0);
            int niveau = c.getInt(1);

            boolean estValide = c.getInt(3) == SuccesManager.EstValide;

            //On doit déterminer le label du succès
            int label = getLabel(type, niveau);

            //Et s'il faut l'afficher ou non
            boolean estAffiche;
            if(type != lastType || estValide) //On change de type, on affiche toujours le premier succès, ou si validé, alors on l'affiche toujours
                estAffiche = true;
            else //Même type mais pas validé
            {
                //Si c'est le premier a être non validé, alors on l'affiche quand même
                estAffiche = lastEstValide;
            }

            Succes s = new Succes(type, label, estValide, estAffiche, c.getInt(2));
            listeSucces.add(s);

            lastType = type;
            lastEstValide = estValide;
        }
        c.close();
        return listeSucces;
    }

    private int getLabel(int type, int niveau) {
        switch(type)
        {
            case SuccesManager.TypeGare:
                switch(niveau)
                {
                    case 1:
                        return R.string.succesLabelGareNiveau1;
                    case 2:
                        return R.string.succesLabelGareNiveau2;
                    case 3:
                        return R.string.succesLabelGareNiveau3;
                    case 4:
                        return R.string.succesLabelGareNiveau4;
                    case 5:
                        return R.string.succesLabelGareNiveau5;
                    case 6:
                        return R.string.succesLabelGareNiveau6;
                    case 7:
                        return R.string.succesLabelGareNiveau7;
                    case 8:
                        return R.string.succesLabelGareNiveau8;
                }
            case SuccesManager.TypeLigne:
                switch(niveau) {
                    case 1:
                        return R.string.succesLabelLigneNiveau1;
                    case 2:
                        return R.string.succesLabelLigneNiveau2;
                    case 3:
                        return R.string.succesLabelLigneNiveau3;
                    case 4:
                        return R.string.succesLabelLigneNiveau4;
                    case 5:
                        return R.string.succesLabelLigneNiveau5;
                    case 6:
                        return R.string.succesLabelLigneNiveau6;
                    case 7:
                        return R.string.succesLabelLigneNiveau7;
                }
            case SuccesManager.TypeValidation:
                switch(niveau) {
                    case 1:
                        return R.string.succesLabelValidationNiveau1;
                    case 2:
                        return R.string.succesLabelValidationNiveau2;
                    case 3:
                        return R.string.succesLabelValidationNiveau3;
                    case 4:
                        return R.string.succesLabelValidationNiveau4;
                    case 5:
                        return R.string.succesLabelValidationNiveau5;
                }
        }

        return 0; //On ne devrait pas arriver ici
    }
}
