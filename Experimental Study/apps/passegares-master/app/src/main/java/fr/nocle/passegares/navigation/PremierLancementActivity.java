package fr.nocle.passegares.navigation;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;

import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;

import fr.nocle.passegares.R;

public class PremierLancementActivity extends FragmentActivity {
    PremierLancementAdapter adapter;
    ViewPager2 viewPager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_premier_lancement);

        adapter = new PremierLancementAdapter(this);

        viewPager = findViewById(R.id.swipe_premier_lancement);
        viewPager.setAdapter(adapter);

        TabLayout tabLayout = findViewById(R.id.premier_lancement_tablayout);
        new TabLayoutMediator(tabLayout, viewPager,
                new TabLayoutMediator.TabConfigurationStrategy() {
                    @Override
                    public void onConfigureTab(@NonNull TabLayout.Tab tab, int position) {

                    }
                }
        ).attach();
    }

    public void goToNextItem()
    {
        viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
    }

    public void closePremierLancement()
    {
        this.finish();
    }
}
