package fr.nocle.passegares.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import org.w3c.dom.Text;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Ticket;
import fr.nocle.passegares.outils.CouleurOutils;
import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 19/12/16.
 */
public class MonnaieAdapter extends ArrayAdapter<Ticket> {
    public MonnaieAdapter(Context context, ArrayList<Ticket> liste)
    {
        super(context, 0, liste);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        Ticket t = getItem(position);
        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.monnaie_viewer, parent, false);
        }

        ImageView icone = (ImageView) convertView.findViewById(R.id.iconTicket);
        CouleurOutils.setTicketIcon(icone, t.getCouleur());
        TextView champ = (TextView) convertView.findViewById(R.id.nbTicket);
        champ.setText(String.valueOf(t.getNombre()));

        return convertView;
    }
}