package fr.nocle.passegares.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.Region;

/**
 * Created by jonathanmm on 25/02/17.
 */

public class RegionsAdapter extends ArrayAdapter<Region> {
    public RegionsAdapter(Context context, ArrayList<Region> liste)
    {
        super(context, 0, liste);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        Region r = getItem(position);
        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.region_viewer, parent, false);
        }

        TextView champ;
        champ = (TextView) convertView.findViewById(R.id.nom_region);
        champ.setText(r.getNom());

        CheckBox checkBox;
        checkBox = (CheckBox) convertView.findViewById(R.id.estInstalle);
        checkBox.setChecked(r.isEstInstalle());

        convertView.setEnabled(!r.isEstInstalle());

        return convertView;
    }
}
