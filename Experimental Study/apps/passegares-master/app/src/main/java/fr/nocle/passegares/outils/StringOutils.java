package fr.nocle.passegares.outils;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import android.text.TextUtils;

import org.w3c.dom.Text;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

import fr.nocle.passegares.R;

/**
 * Created by jonathanmm on 11/12/16.
 */

public class StringOutils
{
    public static String displayBeautifullNameStation(String name, int limit)
    {
        String[] mots = name.split(" ");
        ArrayList<String> motsFormate = new ArrayList<>();
        boolean premierMot = true;
        ArrayList<String> particulesNonMajuscule = new ArrayList<String>();
        particulesNonMajuscule.add("de");
        particulesNonMajuscule.add("des");
        particulesNonMajuscule.add("du");
        particulesNonMajuscule.add("la");
        particulesNonMajuscule.add("le");
        particulesNonMajuscule.add("et");
        particulesNonMajuscule.add("au");
        particulesNonMajuscule.add("a");
        particulesNonMajuscule.add("à");
        particulesNonMajuscule.add("sur");
        particulesNonMajuscule.add("sous");
        particulesNonMajuscule.add("en");
        for(String mot : mots)
        {
            if(mot.equals("-")) {
                //On gère le cas du tiret tout seul
                motsFormate.add("−");
                //Le mot qui suit sera considéré comme le premier
                premierMot = true;
            } else {
                String[] composants = mot.split("-");
                ArrayList<String> bouts = new ArrayList<>();
                for (String composant : composants) {
                    if(composant.length() == 0)
                        continue;

                    String motFormate = "";
                    int posPremiereLettre = 0;

                    if (composant.substring(0, 1).equals("(")) {
                        motFormate = "(";
                        posPremiereLettre = 1;
                    } else if (composant.length() >= 2 && (composant.substring(1, 2).equals("'") || composant.substring(1, 2).equals("’"))) {
                        if (premierMot)
                            motFormate = composant.substring(0, 1).toUpperCase() + "'";
                        else
                            motFormate = composant.substring(0, 1).toLowerCase() + "'";
                        posPremiereLettre = 2;
                    }

                    if (premierMot || !particulesNonMajuscule.contains(composant.substring(posPremiereLettre).toLowerCase()))
                        motFormate = motFormate + composant.substring(posPremiereLettre, posPremiereLettre + 1).toUpperCase() + composant.substring(posPremiereLettre + 1).toLowerCase();
                    else
                        motFormate = motFormate + composant.substring(posPremiereLettre).toLowerCase();

                    bouts.add(motFormate);

                    if (premierMot)
                        premierMot = false;
                }
                motsFormate.add(TextUtils.join("-", bouts));
            }
        }
        String phraseFormate = TextUtils.join(" ", motsFormate);
        if(limit != 0 && phraseFormate.length() > limit)
            return phraseFormate.substring(0, limit) + "…";
        else
            return phraseFormate;
    }

    public static String displayBeautifullNameStation(String name)
    {
        return displayBeautifullNameStation(name, 0);
    }

    public static String getRelativeDate(Context context, Date dateAbsolue)
    {
        if(dateAbsolue == null)
            return "";
        Date auj = new Date();
        long millisecondes = auj.getTime() - dateAbsolue.getTime();
        int secondes = Math.round(millisecondes / 1000);
        if(secondes < 2)
            return context.getString(R.string.tempsRelatifSeconde, secondes);
        else if(secondes < 60)
            return context.getString(R.string.tempsRelatifSecondes, secondes);
        else if(secondes < 120)
        {
            int sec = secondes % 60;
            if (sec > 0)
                return context.getString(R.string.tempsRelatifMinuteSec, putZero(sec));
            return context.getString(R.string.tempsRelatifMinute);
        }
        else if(secondes < 3600)
        {
            int sec = secondes % 60;
            if (sec > 0)
                return context.getString(R.string.tempsRelatifMinutesSec, (int) Math.ceil(secondes/60), putZero(sec));
            return context.getString(R.string.tempsRelatifMinutes, (int) Math.ceil(secondes/60));
        }
        else if(secondes < 7200)
        {
            int min = (int) Math.ceil(secondes / 60) % 60;
            if (min > 0)
                return context.getString(R.string.tempsRelatifHeureMin, putZero(min));
            return context.getString(R.string.tempsRelatifHeure);
        }
        else if(secondes < 86400)
        {
            int min = (int) Math.ceil(secondes / 60) % 60;
            if (min > 0)
                return context.getString(R.string.tempsRelatifHeuresMin, (int) Math.ceil(secondes/3600), putZero(min));
            return context.getString(R.string.tempsRelatifHeures, (int) Math.ceil(secondes/3600));
        }
        else if(secondes < 172800) //86400*2
        {
            int h = (int) Math.ceil(secondes/3600) % 24;
            if (h > 0)
                return context.getString(R.string.tempsRelatifJourH, h, putZero(Math.ceil(secondes / 60) % 60) );
            return context.getString(R.string.tempsRelatifJour);
        }
        else if(secondes <= 1209600) //86400*14
        {
            int h = (int) Math.ceil(secondes/3600) % 24;
            if (h > 0)
                return context.getString(R.string.tempsRelatifJoursH, (int) Math.ceil(secondes/86400), h, putZero(Math.ceil(secondes / 60) % 60) );
            return context.getString(R.string.tempsRelatifJours, (int) Math.ceil(secondes/86400));
        }
        else
        {
            SimpleDateFormat formatDate = new SimpleDateFormat("dd/MM/yyyy HH'h'mm", Locale.getDefault());
            return formatDate.format(dateAbsolue);
        }
    }

    private static String putZero(int nombre)
    {
        if(nombre <= 9)
            return "0"+String.valueOf(nombre);
        else
            return String.valueOf(nombre);
    }

    private static String putZero(double nombre)
    {
        return putZero((int) nombre);
    }

    public static String manageDeParticule(String name) {
        String[] mots = name.split(" ");
        String premierMot = mots[0].toLowerCase();
        String retour;

        ArrayList<String> particulesModification = new ArrayList<String>();
        particulesModification.add("le");
        particulesModification.add("les");
        if(particulesModification.contains(premierMot))
        {
            if(premierMot.contentEquals("le"))
                retour = "du";
            else
                retour = "des";
        } else
            retour = "de " + mots[0];

        for(int i = 1; i < mots.length; i++)
        {
            retour += " " + mots[i];
        }

        return retour;
    }

    public static String displayBeautifullDistance(float distance)
    {
        String distanceTexte;
        if(distance < 999.5)
            distanceTexte = Math.round(distance) + " m";
        else
        {
            DecimalFormat df = new DecimalFormat("#.00");
            df.setRoundingMode(RoundingMode.HALF_UP);
            distanceTexte = df.format(distance / 1000) + " km";
        }
        return distanceTexte;
    }
}
