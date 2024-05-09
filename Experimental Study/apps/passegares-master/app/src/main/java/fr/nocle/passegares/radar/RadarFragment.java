package fr.nocle.passegares.radar;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

import androidx.fragment.app.Fragment;

import fr.nocle.passegares.MonnaieFragment;
import fr.nocle.passegares.R;
import fr.nocle.passegares.interfaces.LocationManager;
import fr.nocle.passegares.interfaces.OnNavigateIntentManager;
import fr.nocle.passegares.interfaces.OnUpdateManager;
import fr.nocle.passegares.interfaces.ToolbarManager;

public class RadarFragment extends Fragment {
    private LocationManager _locationManager;
    private OnUpdateManager _updateManager;
    private OnNavigateIntentManager _navigateIntentManager;
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
        _toolbarManager.setTitleToolbar(R.string.radar);
    }

    private void createCallbackWithActivity() {
        try
        {
            _locationManager = (LocationManager) getActivity();
            _updateManager = (OnUpdateManager) getActivity();
            _navigateIntentManager = (OnNavigateIntentManager) getActivity();
            _toolbarManager = (ToolbarManager) getActivity();
        } catch(ClassCastException ex)
        {
            Log.e("Radar", "Problème lors du cast de l'activité : " + ex.getMessage());
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        View view = inflater.inflate(R.layout.activity_radar, null);

        _updateManager.OnCheckUpdate();

        return view;
    }

    @Override
    public void onResume()
    {
        super.onResume();
        this.initializeToolbar();
        this._locationManager.askRestoreGarePlusProche();
    }
}
