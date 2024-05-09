package fr.nocle.passegares.visa;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import androidx.fragment.app.Fragment;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.interfaces.OnNavigateIntentManager;
import fr.nocle.passegares.modele.LigneTamponnee;
import fr.nocle.passegares.interfaces.ToolbarManager;

public class ResumeVisaFragment extends Fragment {

    private ToolbarManager _toolbarManager;
    private OnNavigateIntentManager _onNavigateIntentManager;
    private boolean _uniquementDuJour = false;
    private String _titleToolbar;

    public static String ARG_DUJOUR = "DUJOUR";

    private void readBundle(Bundle b)
    {
        if(b != null)
        {
            _uniquementDuJour = b.getBoolean(ARG_DUJOUR);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setHasOptionsMenu(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        View view = inflater.inflate(R.layout.activity_resume_visa, null);

        readBundle(getArguments());

        generateListeLigne(view);

        return view;
    }

    public void generateListeLigne(View view) {
        TamponCtrl tamponControlleur = new TamponCtrl(getActivity());
        final ArrayList<LigneTamponnee> listeLignes = tamponControlleur.getByLines(this._uniquementDuJour);

        Collections.sort(listeLignes, new Comparator<LigneTamponnee>() {
            @Override
            public int compare(LigneTamponnee o1, LigneTamponnee o2) {
                if(o1.getRegion().getId() == o2.getRegion().getId()) {
                    if (o1.getOrdre() > o2.getOrdre())
                        return 1;
                    else if (o1.getOrdre() < o2.getOrdre())
                        return -1;
                    else
                        return 0;
                } else if(o1.getRegion().getId() > o2.getRegion().getId())
                    return 1;
                else
                    return -1;
            }
        });

        //On s'occupe du titre
        _titleToolbar = generateTitle(listeLignes);
        setToolbarTitle();

        // Create the adapter to convert the array to views
        final LigneTamponneeAdapter adapter = new LigneTamponneeAdapter(getActivity(), listeLignes, this._uniquementDuJour);

        // Attach the adapter to a ListView
        ListView listView = (ListView) view.findViewById(R.id.listeLignes);
        listView.invalidate();
        listView.setAdapter(adapter);
        final boolean voirTamponDuJour = this._uniquementDuJour;
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int realPosition = adapter.getRealPositionOfLigne(position);
                LigneTamponnee ligneTamponnee = listeLignes.get(realPosition);
                Intent i = new Intent(getActivity(), VisaActivity.class);
                i.putExtra(VisaActivity.ARG_IDLIGNE, ligneTamponnee.getIdLigne());
                if(voirTamponDuJour)
                    i.putExtra(ARG_DUJOUR, true);
                startActivity(i);
            }
        });
        tamponControlleur.close();
    }

    private void setToolbarTitle() {
        _toolbarManager.setTitleToolbar(this._titleToolbar);
    }

    private String generateTitle(ArrayList<LigneTamponnee> listeLignes)
    {
        int nbTampons = listeLignes.size();
        String titre;
        if(this._uniquementDuJour)
        {
            if(nbTampons >= 2)
                titre = getString(R.string.titre_tampons_du_jour);
            else
                titre = getString(R.string.titre_tampon_du_jour);
        }
        else
        {
            if(nbTampons >= 2)
                titre = getString(R.string.titre_tampons);
            else
                titre = getString(R.string.titre_tampon);
        }
        return nbTampons + " " + titre;
    }

    @TargetApi(Build.VERSION_CODES.M)
    @Override
    public void onAttach(Context context)
    {
        super.onAttach(context);

        this.createCallbackToolbarManager();
    }

    @SuppressWarnings("depreciation")
    @Override
    public void onAttach(Activity activity)
    {
        super.onAttach(activity);

        if(Build.VERSION.SDK_INT < Build.VERSION_CODES.M)
        {
            this.createCallbackToolbarManager();
        }
    }

    private void createCallbackToolbarManager() {
        try
        {
            _toolbarManager = (ToolbarManager) getActivity();
            _onNavigateIntentManager = (OnNavigateIntentManager) getActivity();
        } catch(ClassCastException ex)
        {
            Log.e("ResumeVisa", "Problème lors du cast de l'activité : " + ex.getMessage());
        }
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_tampon, menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.voirTout:
                _onNavigateIntentManager.onMoveActivity(VisaActivity.class, VisaActivity.ARG_IDLIGNE, 0, ARG_DUJOUR, _uniquementDuJour);
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.setToolbarTitle();

        this.generateListeLigne(getView());
    }
}
