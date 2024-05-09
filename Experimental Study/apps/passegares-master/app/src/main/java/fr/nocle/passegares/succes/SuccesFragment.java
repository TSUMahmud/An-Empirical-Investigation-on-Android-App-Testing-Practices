package fr.nocle.passegares.succes;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import androidx.fragment.app.Fragment;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.interfaces.ToolbarManager;

public class SuccesFragment extends Fragment {
    private SuccesCtrl succesControlleur;
    private ToolbarManager _toolbarManager;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        View view = inflater.inflate(R.layout.activity_succes, null);

        succesControlleur = new SuccesCtrl(getActivity());

        //On récupère la liste des succès
        ArrayList<Succes> listeSucces = succesControlleur.getAllSucces();

        //On récupère la progression
        for(Succes s : listeSucces)
        {
            if(s.isEstAffiche() && !s.isEstValide())
            {
                switch(s.getType())
                {
                    case SuccesManager.TypeGare:
                        GareCtrl gareControlleur = new GareCtrl(getActivity());
                        s.setProgression(gareControlleur.getNbGaresTamponnees());
                        gareControlleur.close();
                        break;
                    case SuccesManager.TypeValidation:
                        TamponCtrl tamponControlleur = new TamponCtrl(getActivity());
                        s.setProgression(tamponControlleur.getMaxTamponInGare());
                        tamponControlleur.close();
                        break;
                }
            }
        }

        SuccesAdapter adapter = new SuccesAdapter(getActivity(), listeSucces);
        ListView listeSuccesView = (ListView) view.findViewById(R.id.listeSucces);
        listeSuccesView.setAdapter(adapter);

        return view;
    }

    @TargetApi(Build.VERSION_CODES.M)
    @Override
    public void onAttach(Context context)
    {
        super.onAttach(context);
        initializeManagerAndToolbar();
    }

    @SuppressWarnings("depreciation")
    @Override
    public void onAttach(Activity activity)
    {
        super.onAttach(activity);

        if(Build.VERSION.SDK_INT < Build.VERSION_CODES.M)
        {
            initializeManagerAndToolbar();
        }
    }

    private void initializeManagerAndToolbar() {
        this.createCallbackToolbarManager();

        this.initializeToolbar();
    }

    private void initializeToolbar() {
        _toolbarManager.setTitleToolbar(R.string.voirSucces);
    }

    private void createCallbackToolbarManager() {
        try
        {
            _toolbarManager = (ToolbarManager) getActivity();
        } catch(ClassCastException ex)
        {
            Log.e("Succès", "Problème lors du cast de l'activité : " + ex.getMessage());
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.initializeToolbar();
    }
}
