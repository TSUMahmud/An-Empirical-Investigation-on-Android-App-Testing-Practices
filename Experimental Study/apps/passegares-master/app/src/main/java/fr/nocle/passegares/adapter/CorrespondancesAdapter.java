package fr.nocle.passegares.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.Ligne;
import fr.nocle.passegares.visa.LigneTamponneeAdapter;

/**
 * Created by jonathanmm on 06/07/17.
 */

public class CorrespondancesAdapter extends ArrayAdapter<Ligne> {
    public CorrespondancesAdapter(Context context, ArrayList<Ligne> liste)
    {
        super(context, 0, liste);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        Ligne l = getItem(position);

        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.viewer_correspondance, parent, false);
        }

        TextView champ;
        champ = (TextView) convertView.findViewById(R.id.nomLigne);
        LigneTamponneeAdapter.setNomLigne(champ, l.getNom(), l.getRegion());

        ImageView icon = (ImageView) convertView.findViewById(R.id.iconeLigne);
        LigneTamponneeAdapter.setIcon(icon, l.getRegion().getNom(), l.getNom());

        return convertView;
    }
}
