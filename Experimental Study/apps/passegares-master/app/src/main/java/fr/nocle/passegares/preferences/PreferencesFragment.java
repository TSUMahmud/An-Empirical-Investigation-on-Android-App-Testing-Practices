package fr.nocle.passegares.preferences;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.util.Log;

import fr.nocle.passegares.region.AjoutRegionActivity;
import fr.nocle.passegares.BuildConfig;
import fr.nocle.passegares.R;
import fr.nocle.passegares.interfaces.ToolbarManager;

public class PreferencesFragment extends PreferenceFragment {
    private ToolbarManager _toolbarManager;

    @Override
    public void onCreate(final Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.preferences);

        Preference versionAPKPref = (Preference) findPreference("versionAPK");
        String versionName = BuildConfig.VERSION_NAME;
        versionAPKPref.setSummary(versionName);

        Preference ajoutRegion = (Preference) findPreference("ajoutRegion");
        ajoutRegion.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference preference) {
                Intent i = new Intent(getActivity(), AjoutRegionActivity.class);

                startActivity(i);
                return true;
            }
        });

        Preference preferencesAvancees = (Preference) findPreference("preferencesAvancees");
        preferencesAvancees.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference preference) {
                Intent i = new Intent(getActivity(), PreferencesAvanceesActivity.class);

                startActivity(i);
                return true;
            }
        });
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
        _toolbarManager.setTitleToolbar(R.string.preferences);
    }

    private void createCallbackToolbarManager() {
        try
        {
            _toolbarManager = (ToolbarManager) getActivity();
        } catch(ClassCastException ex)
        {
            Log.e("Preferences", "Problème lors du cast de l'activité : " + ex.getMessage());
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.initializeToolbar();
    }
}
