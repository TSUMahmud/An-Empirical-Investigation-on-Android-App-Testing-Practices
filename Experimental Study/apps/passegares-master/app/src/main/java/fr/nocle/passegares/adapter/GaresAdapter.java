package fr.nocle.passegares.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Tampon;
import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class GaresAdapter extends ArrayAdapter<Gare> {
    public GaresAdapter(Context context, ArrayList<Gare> liste)
    {
        super(context, 0, liste);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        Gare g = getItem(position);
        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.gare_viewer, parent, false);
        }

        TextView champ;
        int distanceEntiere = (int) Math.round(g.getDistance());
        champ = (TextView) convertView.findViewById(R.id.nom_gare);
        champ.setText(StringOutils.displayBeautifullNameStation(g.getNom()));
        champ = (TextView) convertView.findViewById(R.id.distance_gare);
        champ.setText(String.valueOf(distanceEntiere) + " m");

        return convertView;
    }
}