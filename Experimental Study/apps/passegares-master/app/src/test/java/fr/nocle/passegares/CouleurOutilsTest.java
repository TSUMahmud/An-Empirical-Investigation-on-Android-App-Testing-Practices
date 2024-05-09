package fr.nocle.passegares;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.powermock.modules.junit4.PowerMockRunner;

import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.outils.CouleurOutils;

import static org.junit.Assert.assertEquals;

/**
 * Created by jonathanmm on 19/02/17.
 */

@RunWith(PowerMockRunner.class)
public class CouleurOutilsTest {
    @Test
    public void getHexa_rouge_formattageCorrect()
    {
        assertEquals("#f44336", CouleurOutils.getHexa(InventaireBDD.MONNAIE_ROUGE));
    }

    @Test
    public void getHexa_cyan_formattageCorrect()
    {
        assertEquals("#00bcd4", CouleurOutils.getHexa(InventaireBDD.MONNAIE_CYAN));
    }

    @Test
    public void getHexa_jaune_formattageCorrect()
    {
        assertEquals("#ffeb3b", CouleurOutils.getHexa(InventaireBDD.MONNAIE_JAUNE));
    }

    @Test
    public void getHexa_lime_formattageCorrect()
    {
        assertEquals("#cddc39", CouleurOutils.getHexa(InventaireBDD.MONNAIE_LIME));
    }

    @Test
    public void getHexa_marron_formattageCorrect()
    {
        assertEquals("#795548", CouleurOutils.getHexa(InventaireBDD.MONNAIE_MARRON));
    }

    @Test
    public void getHexa_orange_formattageCorrect()
    {
        assertEquals("#ff9800", CouleurOutils.getHexa(InventaireBDD.MONNAIE_ORANGE));
    }

    @Test
    public void getHexa_vert_formattageCorrect()
    {
        assertEquals("#4caf50", CouleurOutils.getHexa(InventaireBDD.MONNAIE_VERT));
    }

    @Test
    public void getHexa_violet_formattageCorrect()
    {
        assertEquals("#9c27b0", CouleurOutils.getHexa(InventaireBDD.MONNAIE_VIOLET));
    }

    @Test
    public void getHexa_autre_formattageCorrect()
    {
        assertEquals("#f44336", CouleurOutils.getHexa(-1));
    }
}
