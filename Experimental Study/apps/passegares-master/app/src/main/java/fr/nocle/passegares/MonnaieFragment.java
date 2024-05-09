package fr.nocle.passegares;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.NumberPicker;
import android.widget.TextView;

import androidx.fragment.app.Fragment;

import java.util.ArrayList;

import fr.nocle.passegares.adapter.MonnaieAdapter;
import fr.nocle.passegares.controlleur.InventaireCtrl;
import fr.nocle.passegares.interfaces.ToolbarManager;
import fr.nocle.passegares.modele.Ticket;

public class MonnaieFragment extends Fragment {

    private InventaireCtrl inventaireCtrl;
    private ToolbarManager _toolbarManager;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setHasOptionsMenu(true);
    }

    @TargetApi(Build.VERSION_CODES.M)
    @Override
    public void onAttach(Context context)
    {
        super.onAttach(context);

        this.initializeManagersAndToolbar();
    }

    @SuppressWarnings("deprecation")
    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);

        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            this.initializeManagersAndToolbar();
        }
    }

    private void initializeManagersAndToolbar()
    {
        this.createCallbackWithActivity();

        this.initializeToolbar();
    }

    private void initializeToolbar()
    {
        _toolbarManager.setTitleToolbar(R.string.porteTicket);
    }

    private void createCallbackWithActivity() {
        try
        {
            _toolbarManager = (ToolbarManager) getActivity();
        } catch(ClassCastException ex)
        {
            Log.e("Radar", "Problème lors du cast de l'activité : " + ex.getMessage());
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        View view = inflater.inflate(R.layout.activity_monnaie, null);

        inventaireCtrl = new InventaireCtrl(getActivity());

        final ArrayList<Ticket> listeTicket = inventaireCtrl.getListTicket();

        int nbTotalTicket = 0;
        for(Ticket t : listeTicket)
            nbTotalTicket += t.getNombre();

        TextView champ = (TextView) view.findViewById(R.id.nombreTicket);
        champ.setText(getString(R.string.nombreTicket) + " " + nbTotalTicket + "/" + inventaireCtrl.getLimiteTicket());

        MonnaieAdapter monnaieAdapter = new MonnaieAdapter(getActivity(), listeTicket);

        final GridView listeView = (GridView) view.findViewById(R.id.listeTicket);
        listeView.setAdapter(monnaieAdapter);

        listeView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, final int position, long id) {
                final Ticket t = listeTicket.get(position);

                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                LayoutInflater inflater = getActivity().getLayoutInflater();
                builder.setView(inflater.inflate(R.layout.jeter_ticket_picker, null))
                        // Add action buttons
                        .setPositiveButton(R.string.boutonJeter, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int id) {
                                AlertDialog ad = (AlertDialog) dialog;
                                NumberPicker numberPicker = (NumberPicker) ad.findViewById(R.id.jeterTicketNombre);

                                int nbTicket = numberPicker.getValue();
                                inventaireCtrl.jeterTicket(t.getIdentifiant(), nbTicket);

                                t.setNombre(t.getNombre() - nbTicket);

                                listeView.invalidateViews();
                                dialog.cancel();
                            }
                        })
                        .setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                dialog.cancel();
                            }
                        });
                AlertDialog dialog = builder.show();

                NumberPicker numberPicker = (NumberPicker) dialog.findViewById(R.id.jeterTicketNombre);
                numberPicker.setMinValue(0);
                numberPicker.setMaxValue(t.getNombre());
            }
        });

        return view;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        inventaireCtrl.close();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.initializeToolbar();
    }
}
