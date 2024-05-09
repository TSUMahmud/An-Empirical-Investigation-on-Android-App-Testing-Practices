package fr.nocle.passegares.succes;

import android.content.Context;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;

/**
 * Created by user on 26/08/2017.
 */

public class SuccesAdapter extends ArrayAdapter<Succes> {
    private Context context;

    public SuccesAdapter(Context context, ArrayList<Succes> liste) {
        super(context, 0, liste);
        this.context = context;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        Succes s = getItem(position);

        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.succes_viewer, parent, false);
        }

        //Label
        TextView labelSucces = (TextView) convertView.findViewById(R.id.nomSucces);
        if(s.isEstAffiche())
            labelSucces.setText(s.getLabel());
        else
            labelSucces.setText(R.string.succesLabelNonAffiche);

        //État
        TextView estValideLabel = (TextView) convertView.findViewById(R.id.etatSucces);
        if(s.isEstValide())
            estValideLabel.setText(R.string.succesLabelValide);
        else
            estValideLabel.setText(R.string.succesLabelNonValide);

        //Progress bar, toujours désactivé pour le moment (TODO)
        ProgressBar progressBar = (ProgressBar) convertView.findViewById(R.id.progressBar);
        if(s.isEstAffiche() && !s.isEstValide()) //On affiche la progression que pour le succès du moment
        {
            progressBar.setMax(s.getObjectif());
            progressBar.setProgress(s.getProgression());

            progressBar.setVisibility(View.VISIBLE);
        }
        else
            progressBar.setVisibility(View.GONE);

        return convertView;
    }
}
