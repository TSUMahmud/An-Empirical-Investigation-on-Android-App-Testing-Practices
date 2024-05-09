package fr.nocle.passegares.visa;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;

public class ResumeVisaSwipeAdapter extends FragmentStateAdapter {
    public ResumeVisaSwipeAdapter(Fragment fragment) {
        super(fragment);
    }

    @NonNull
    @Override
    public Fragment createFragment(int position) {
        // Return a NEW fragment instance in createFragment(int)
        ResumeVisaFragment fragment = new ResumeVisaFragment();
        Bundle args = new Bundle();
        // Our object is just an integer :-P
        args.putBoolean(ResumeVisaFragment.ARG_DUJOUR, position == 1);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public int getItemCount() {
        return 2;
    }
}
