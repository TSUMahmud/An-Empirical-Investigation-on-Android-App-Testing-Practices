package fr.nocle.passegares.visa;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;

import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;

import fr.nocle.passegares.R;

public class ResumeVisaSwipeFragment extends Fragment {
    ResumeVisaSwipeAdapter adapter;
    ViewPager2 viewPager;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_resume_visa_swipe, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        adapter = new ResumeVisaSwipeAdapter(this);

        viewPager = view.findViewById(R.id.swipe_tampon_du_jour);
        viewPager.setAdapter(adapter);

        TabLayout tabLayout = view.findViewById(R.id.tab_layout);
        new TabLayoutMediator(tabLayout, viewPager,
                new TabLayoutMediator.TabConfigurationStrategy() {
                    @Override
                    public void onConfigureTab(@NonNull TabLayout.Tab tab, int position) {
                        int title = 0;

                        switch (position)
                        {
                            case 0:
                                title = R.string.voirTamponsToujours;
                                break;
                            case 1:
                                title = R.string.voirTamponDuJour;
                                break;
                        }

                        tab.setText(title);
                    }
                }
        ).attach();
    }

}

