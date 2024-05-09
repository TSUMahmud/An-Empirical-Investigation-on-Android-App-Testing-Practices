package fr.nocle.passegares.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.List;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.ObjetVendable;

/**
 * Created by jonathanmm on 11/07/17.
 */

public class ObjetVendableAdapter extends ArrayAdapter<ObjetVendable> {
    public ObjetVendableAdapter(Context context, List<ObjetVendable> objects) {
        super(context, 0, objects);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ObjetVendable objetVendable = getItem(position);
        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.article_viewer, parent, false);
        }

        TextView articleNom = (TextView) convertView.findViewById(R.id.articleNom);
        articleNom.setText(objetVendable.getNom());
        TextView articleCout = (TextView) convertView.findViewById(R.id.articlePrix);
        articleCout.setText(String.valueOf(objetVendable.getCout()));

        return convertView;
    }
}
