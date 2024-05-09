package fr.nocle.passegares.navigation;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import fr.nocle.passegares.R;

public class PremierLancementAdapter extends FragmentStateAdapter {
    public PremierLancementAdapter(FragmentActivity activity) {
        super(activity);
    }

    @NonNull
    @Override
    public Fragment createFragment(int position) {
        switch(position)
        {
            case 0:
                return new PremierLancementFragment(R.layout.fragment_premier_lancement_ecran1);
            case 1:
                return new PremierLancementFragment(R.layout.fragment_premier_lancement_ecran2);
            case 2:
                return new PremierLancementFragment(R.layout.fragment_premier_lancement_ecran3, true);
            default:
                return new PremierLancementFragment(R.layout.fragment_premier_lancement_ecran1);
        }
    }

    @Override
    public int getItemCount() {
        return 3;
    }
}
