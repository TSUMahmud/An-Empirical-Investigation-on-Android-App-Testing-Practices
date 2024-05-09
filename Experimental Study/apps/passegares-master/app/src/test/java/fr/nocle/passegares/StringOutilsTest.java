package fr.nocle.passegares;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateFormat;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.invocation.InvocationOnMock;
import org.mockito.stubbing.Answer;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import fr.nocle.passegares.outils.StringOutils;

import static org.junit.Assert.assertEquals;
import static org.mockito.Matchers.any;
import static org.mockito.Matchers.anyInt;
import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.when;

/**
 * Created by jonathanmm on 08/01/17.
 */

@RunWith(PowerMockRunner.class)
@PrepareForTest(TextUtils.class)
public class StringOutilsTest {
    @Mock
    private Context mockApplicationContext;

    @Before
    public void initMock() {
        MockitoAnnotations.initMocks(this);

        PowerMockito.mockStatic(TextUtils.class);
        PowerMockito.when(TextUtils.join(anyString(), any(ArrayList.class))).thenAnswer(new Answer<String>() {
            @Override
            public String answer(InvocationOnMock invocation) throws Throwable {
                String delimiter = (String) invocation.getArguments()[0];
                ArrayList<String> bouts = (ArrayList<String>) invocation.getArguments()[1];

                if(bouts == null)
                    return "";

                boolean premier = true;
                String retour = "";
                for(String mot : bouts)
                {
                    if(!premier)
                        retour += delimiter;
                    else
                        premier = false;

                    retour += mot;
                }

                return retour;
            }
        });
    }

    //DisplayBeautifulNameStation
    @Test
    public void displayBeautifullNameStation_unMot_formattageCorrect() {
        assertEquals("Bonhomme", StringOutils.displayBeautifullNameStation("BONHOMME"));
    }

    @Test
    public void displayBeautifullNameStation_troisMot_formattageCorrect() {
        assertEquals("Bonhomme de Neige", StringOutils.displayBeautifullNameStation("BONHOMME DE NEIGE"));
    }

    @Test
    public void displayBeautifullNameStation_troisMotTiret_formattageCorrect() {
        assertEquals("Bonhomme-de-Neige", StringOutils.displayBeautifullNameStation("BONHOMME-DE-NEIGE"));
    }

    @Test
    public void displayBeautifullNameStation_troisMotEspaceTiret_formattageCorrect() {
        assertEquals("Bonhomme de-Neige", StringOutils.displayBeautifullNameStation("BONHOMME DE-NEIGE"));
    }

    @Test
    public void displayBeautifullNameStation_longTitreCoupe_formattageCorrect() {
        assertEquals("Je Suis Un Titre de Plus de 30…", StringOutils.displayBeautifullNameStation("JE SUIS UN TITRE DE PLUS DE 30 CARACTÈRES !", 30));
    }

    @Test
    public void displayBeautifullNameStation_longTitreCoupeDix_formattageCorrect() {
        assertEquals("Je Suis Un…", StringOutils.displayBeautifullNameStation("JE SUIS UN TITRE DE PLUS DE 10 CARACTÈRES !", 10));
    }

    @Test
    public void displayBeautifullNameStation_troisMotParentheses_formattageCorrect() {
        assertEquals("Bonhomme (Neige)", StringOutils.displayBeautifullNameStation("BONHOMME (NEIGE)"));
    }

    @Test
    public void displayBeautifullNameStation_troisMotParenthesesLiaisons_formattageCorrect() {
        assertEquals("Bonhomme (de Neige)", StringOutils.displayBeautifullNameStation("BONHOMME (DE NEIGE)"));
    }

    @Test
    public void displayBeautifullNameStation_troisMotApostrophe_formattageCorrect() {
        assertEquals("Banane de l'Autruche", StringOutils.displayBeautifullNameStation("BANANE DE L'AUTRUCHE"));
    }

    @Test
    public void displayBeautifullNameStation_premierMotApostropheLiaison_formattageCorrect() {
        assertEquals("L'Autruche", StringOutils.displayBeautifullNameStation("L'AUTRUCHE"));
    }

    @Test
    public void displayBeautifullNameStation_tiretEntreEspaces_formattageCorrect() {
        assertEquals("La Défense − Grand Arche", StringOutils.displayBeautifullNameStation("LA DÉFENSE - GRAND ARCHE"));
        assertEquals("Dugny − La Courneuve", StringOutils.displayBeautifullNameStation("DUGNY - LA COURNEUVE"));
    }

    @Test
    public void displayBeautifullNameStation_casReel_formattageCorrect() {
        assertEquals("Esplanade de la Défense", StringOutils.displayBeautifullNameStation("ESPLANADE DE LA DÉFENSE"));
        assertEquals("Porte de Neuilly (Avenue de Madrid)", StringOutils.displayBeautifullNameStation("PORTE DE NEUILLY (AVENUE DE MADRID)"));
        assertEquals("Arts et Métiers", StringOutils.displayBeautifullNameStation("ARTS ET MÉTIERS"));
        assertEquals("Château d'Eau", StringOutils.displayBeautifullNameStation("CHÂTEAU D'EAU"));
        assertEquals("Gare de l'Est", StringOutils.displayBeautifullNameStation("GARE DE L'EST"));
        assertEquals("La Chapelle", StringOutils.displayBeautifullNameStation("LA CHAPELLE"));
        assertEquals("Asnières-sur-Seine", StringOutils.displayBeautifullNameStation("ASNIÈRES-SUR-SEINE"));
        assertEquals("Soisy-sous-Mortmorency", StringOutils.displayBeautifullNameStation("SOISY-SOUS-MORTMORENCY"));
        assertEquals("La Remise à Jorelle", StringOutils.displayBeautifullNameStation("LA REMISE À JORELLE"));
        assertEquals("Rue des Boulets", StringOutils.displayBeautifullNameStation("RUE DES BOULETS"));
        assertEquals("Saint-Germain-en-Laye", StringOutils.displayBeautifullNameStation("SAINT-GERMAIN-EN-LAYE"));
        assertEquals("L'Onde (Maison des Arts)", StringOutils.displayBeautifullNameStation("L'ONDE (MAISON DES ARTS)"));
        assertEquals("Viarme Talensac", StringOutils.displayBeautifullNameStation("VIARME -TALENSAC"));
    }

// getRelativeDate
    @Test
    public void getRelativeDate_null_formattageCorrect() {
        assertEquals("", StringOutils.getRelativeDate(mockApplicationContext, null));
    }

    @Test
    public void getRelativeDate_maintenant_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifSeconde, 0)).thenReturn("Il y a 0 seconde");
        assertEquals("Il y a 0 seconde", StringOutils.getRelativeDate(mockApplicationContext, new Date()));
    }

    @Test
    public void getRelativeDate_cinqSecondes_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifSecondes, 5)).thenReturn("Il y a 5 secondes");
        assertEquals("Il y a 5 secondes", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 5000)));
    }

    @Test
    public void getRelativeDate_uneMinute_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifMinute)).thenReturn("Il y a 1 minute");
        assertEquals("Il y a 1 minute", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 60000)));
    }

    @Test
    public void getRelativeDate_uneMinuteCinq_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifMinuteSec, "05")).thenReturn("Il y a 1 minute 05 sec");
        assertEquals("Il y a 1 minute 05 sec", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 65000)));
    }

    @Test
    public void getRelativeDate_cinqMinutes_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifMinutes, 5)).thenReturn("Il y a 5 minutes");
        assertEquals("Il y a 5 minutes", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 300000))); //1000 * 60 * 5
    }

    @Test
    public void getRelativeDate_cinqMinutesCinq_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifMinutesSec, 5, "05")).thenReturn("Il y a 5 minutes 05 sec");
        assertEquals("Il y a 5 minutes 05 sec", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 305000))); //1000 * 60 * 5
    }

    @Test
    public void getRelativeDate_uneHeure_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifHeure)).thenReturn("Il y a 1 heure");
        assertEquals("Il y a 1 heure", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 3600000))); //1000 * 60 * 60
    }

    @Test
    public void getRelativeDate_uneHeureCinq_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifHeureMin, "05")).thenReturn("Il y a 1 heure 05 min");
        assertEquals("Il y a 1 heure 05 min", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 3900000))); //1000 * 60 * 60
    }

    @Test
    public void getRelativeDate_cinqHeures_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifHeures, 5)).thenReturn("Il y a 5 heures");
        assertEquals("Il y a 5 heures", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 18000000))); //1000 * 60 * 60 * 5
    }

    @Test
    public void getRelativeDate_cinqHeurescinq_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifHeuresMin, 5, "05")).thenReturn("Il y a 5 heures 05 min");
        assertEquals("Il y a 5 heures 05 min", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 18300000))); //1000 * 60 * 60 * 5
    }

    @Test
    public void getRelativeDate_unjour_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifJour)).thenReturn("Il y a 1 jour");
        assertEquals("Il y a 1 jour", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 86400000))); //1000 * 60 * 60 * 24
    }

    @Test
    public void getRelativeDate_unjourUneHeureDix_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifJourH, 1, "10")).thenReturn("Il y a 1 jour, 1h10");
        assertEquals("Il y a 1 jour, 1h10", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 90600000))); //1000 * 60 * 60 * 24
    }

    @Test
    public void getRelativeDate_cinqjour_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifJours, 5)).thenReturn("Il y a 5 jours");
        assertEquals("Il y a 5 jours", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 432000000))); //1000 * 60 * 60 * 24 * 5
    }

    @Test
    public void getRelativeDate_cinqjourUneHeureUne_formattageCorrect() {
        when(mockApplicationContext.getString(R.string.tempsRelatifJoursH, 5, 1, "01")).thenReturn("Il y a 5 jours, 1h01");
        assertEquals("Il y a 5 jours, 1h01", StringOutils.getRelativeDate(mockApplicationContext, new Date((new Date()).getTime() - 435660000))); //1000 * 60 * 60 * 24 * 5
    }

    private String putZero(int number)
    {
        if(number <= 9)
            return '0' + String.valueOf(number);

        return String.valueOf(number);
    }

    @Test
    public void getRelativeDate_ancien_formattageCorrect() {
        Locale.setDefault(Locale.FRANCE);
        Calendar cal = Calendar.getInstance(Locale.getDefault());
        cal.set(Calendar.YEAR, 2007);
        cal.set(Calendar.MONTH, Calendar.FEBRUARY); //Commence à 0 et non à 1…
        cal.set(Calendar.DATE, 14);
        cal.set(Calendar.HOUR_OF_DAY, 23);
        cal.set(Calendar.MINUTE, 37);
        cal.set(Calendar.SECOND, 25);
        String expectedDate = putZero(cal.get(Calendar.DATE)) + "/" + putZero(cal.get(Calendar.MONTH) + 1) + "/" +putZero(cal.get(Calendar.YEAR)) + " " +putZero(cal.get(Calendar.HOUR_OF_DAY)) + "h" +putZero(cal.get(Calendar.MINUTE));
        assertEquals(expectedDate, StringOutils.getRelativeDate(mockApplicationContext, cal.getTime()));
    }

//manageDeParticule

    @Test
    public void manageDeParticule_casGeneraux() {
        assertEquals("de la Girafe", StringOutils.manageDeParticule("la Girafe"));
        assertEquals("du Crabe", StringOutils.manageDeParticule("le Crabe"));
        assertEquals("des Moutons", StringOutils.manageDeParticule("les Moutons"));
        assertEquals("de Chat", StringOutils.manageDeParticule("Chat"));
    }


//displayBeautifullDistance

    @Test
    public void displayBeautifullDistance_km_arrondiSup() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("2,35 km", StringOutils.displayBeautifullDistance(2349));
    }

    @Test
    public void displayBeautifullDistance_km_deuxDecimales() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("2,34 km", StringOutils.displayBeautifullDistance(2344));
    }

    @Test
    public void displayBeautifullDistance_km_uneDecimale() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("2,30 km", StringOutils.displayBeautifullDistance(2301));
    }

    @Test
    public void displayBeautifullDistance_km_zeroDecimale() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("2,00 km", StringOutils.displayBeautifullDistance(2002));
    }

    @Test
    public void displayBeautifullDistance_km_un() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("1,00 km", StringOutils.displayBeautifullDistance(999.7f));
    }

    @Test
    public void displayBeautifullDistance_m() {
        Locale.setDefault(Locale.FRANCE);
        assertEquals("50 m", StringOutils.displayBeautifullDistance(50));
    }
}
