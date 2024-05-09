package fr.nocle.passegares.navigation;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import fr.nocle.passegares.R;
import fr.nocle.passegares.region.AjoutRegionFragment;

public class PremierLancementFragment extends Fragment {
    private int idLayout;
    private boolean addAjoutRegion;

    public PremierLancementFragment(int idLayout)
    {
        this.idLayout = idLayout;
        this.addAjoutRegion = false;
    }

    public PremierLancementFragment(int idLayout, boolean addAjoutRegion)
    {
        this.idLayout = idLayout;
        this.addAjoutRegion = addAjoutRegion;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        manageNextButton();

        return inflater.inflate(idLayout, container, false);
    }

    @Override
    public void onResume()
    {
        super.onResume();
        this.manageNextButton();
    }

    private void manageNextButton() {
        final PremierLancementActivity activity = (PremierLancementActivity) getActivity();
        Button boutonContinuer = getActivity().findViewById(R.id.premier_lancement_bouton_continuer);
        if(this.addAjoutRegion) //Pour le dernier, on change le label du bouton
        {
            boutonContinuer.setText(R.string.boutonTerminer);
            boutonContinuer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    activity.closePremierLancement();
                }
            });
        } else {
            boutonContinuer.setText(R.string.boutonSuivant);
            boutonContinuer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    activity.goToNextItem();
                }
            });
        }
    }


    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        if(this.addAjoutRegion) {
            Fragment fragment = new AjoutRegionFragment(true);
            getChildFragmentManager().beginTransaction().replace(R.id.ajout_region_frame_layout, fragment).commit();
        }
    }
}
