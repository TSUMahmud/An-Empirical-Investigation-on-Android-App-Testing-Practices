package fr.nocle.passegares.region;

import androidx.fragment.app.Fragment;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.adapter.RegionsAdapter;
import fr.nocle.passegares.controlleur.RegionCtrl;
import fr.nocle.passegares.modele.Region;

public class AjoutRegionFragment extends Fragment {
    private RegionCtrl regionCtrl;
    private boolean installation;

    public AjoutRegionFragment(boolean installation)
    {
        this.installation = installation;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        View view = inflater.inflate(R.layout.fragment_ajout_region, null);

        if(installation)
        {
            TextView label = (TextView) view.findViewById(R.id.label);
            label.setVisibility(View.INVISIBLE);
        }

        regionCtrl = new RegionCtrl(getActivity());
        regionCtrl.open();
        final ArrayList<Region> listeRegions = regionCtrl.getAllRegions(RegionCtrl.TOUTESREGIONS);

        RegionsAdapter adapter = new RegionsAdapter(getActivity(), listeRegions);
        ListView listView = (ListView) view.findViewById(R.id.listeRegions);
        listView.setAdapter(adapter);

        //À l'acceptation, on affiche une boîte de dialogue de confirmation
        final AlertDialog.Builder dialogInstallRegion = new AlertDialog.Builder(getActivity());
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(final AdapterView<?> parent, final View view, int position, long id) {
                if(view.isEnabled()) {
                    final Region region = listeRegions.get(position);

                    if(installation) //Pas de dialog, on installe direct !
                    {
                        lancerInstallation(region, view);
                    } else {
                        dialogInstallRegion.setMessage(R.string.dialogAjoutRegionExplication).setTitle(R.string.dialogAjoutRegionTitre);
                        dialogInstallRegion.setPositiveButton(R.string.boutonValider, new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                // On valide l'installation des nouvelles données
                                dialog.cancel();
                                lancerInstallation(region, view);
                            }
                        });
                        dialogInstallRegion.setNegativeButton(R.string.boutonAnnuler, new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int id) {
                                // On refuse l'installation des données
                                dialog.cancel();
                            }
                        });

                        dialogInstallRegion.setOnCancelListener(new DialogInterface.OnCancelListener() {
                            @Override
                            public void onCancel(DialogInterface dialog) {
                                parent.invalidate(); //Marche pas
                            }
                        });

                        dialogInstallRegion.create();
                        dialogInstallRegion.show();
                    }
                }
            }
        });

        return view;
    }

    private void lancerInstallation(Region region, View view)
    {
        ProgressDialog loadingDialog = ProgressDialog.show(getActivity(), null, getActivity().getString(R.string.dialogAjoutRegionEnCours), true);
        AjoutRegionThread p = new AjoutRegionThread(getActivity(), loadingDialog, region, installation);
        p.start();
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.estInstalle);
        checkBox.setChecked(true);
        view.setEnabled(false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        regionCtrl.close();
    }
}
