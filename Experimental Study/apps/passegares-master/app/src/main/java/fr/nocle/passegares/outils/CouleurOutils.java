package fr.nocle.passegares.outils;

import android.graphics.Color;
import android.widget.ImageView;

import fr.nocle.passegares.R;
import fr.nocle.passegares.bdd.InventaireBDD;
import fr.nocle.passegares.modele.Ticket;

/**
 * Created by jonathanmm on 19/12/16.
 */

public class CouleurOutils {
    static public String getHexa(int couleur) {
        switch(couleur)
        {
            case InventaireBDD.MONNAIE_ROUGE:
                return "#f44336";
            case InventaireBDD.MONNAIE_VIOLET:
                return "#9c27b0";
            case InventaireBDD.MONNAIE_CYAN:
                return "#00bcd4";
            case InventaireBDD.MONNAIE_LIME:
                return "#cddc39";
            case InventaireBDD.MONNAIE_JAUNE:
                return "#ffeb3b";
            case InventaireBDD.MONNAIE_ORANGE:
                return "#ff9800";
            case InventaireBDD.MONNAIE_MARRON:
                return "#795548";
            case InventaireBDD.MONNAIE_VERT:
                return "#4caf50";
        }

        return "#f44336"; //Couleur inconnue => rouge
    }

    static public void setTicketIcon(ImageView image, int couleur)
    {
        switch(couleur)
        {
            case Ticket.Rouge:
                image.setImageResource(R.drawable.ic_ticket_rouge);
                break;
            case Ticket.Violet:
                image.setImageResource(R.drawable.ic_ticket_violet);
                break;
            case Ticket.Cyan:
                image.setImageResource(R.drawable.ic_ticket_cyan);
                break;
            case Ticket.Lime:
                image.setImageResource(R.drawable.ic_ticket_lime);
                break;
            case Ticket.Jaune:
                image.setImageResource(R.drawable.ic_ticket_jaune);
                break;
            case Ticket.Orange:
                image.setImageResource(R.drawable.ic_ticket_orange);
                break;
            case Ticket.Marron:
                image.setImageResource(R.drawable.ic_ticket_marron);
                break;
            case Ticket.Vert:
                image.setImageResource(R.drawable.ic_ticket_vert);
                break;
            default:
                int color = Color.parseColor(getHexa(couleur));
                image.setColorFilter(color);
        }
    }
}
