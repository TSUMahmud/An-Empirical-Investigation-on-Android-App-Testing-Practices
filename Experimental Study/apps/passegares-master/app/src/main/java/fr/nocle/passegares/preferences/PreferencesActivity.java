package fr.nocle.passegares.preferences;

import android.os.Bundle;
import android.preference.PreferenceActivity;

import fr.nocle.passegares.interfaces.ToolbarManager;

public class PreferencesActivity extends PreferenceActivity implements ToolbarManager {
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction().replace(android.R.id.content, new PreferencesFragment()).commit();
    }

    @Override
    protected boolean isValidFragment(String fragmentName)
    {
        return PreferencesFragment.class.getName().equals(fragmentName);
    }

    @Override
    public void setTitleToolbar(int ressource) {
        this.setTitle(ressource);
    }

    @Override
    public void setTitleToolbar(String title) {
        this.setTitle(title);
    }
}
