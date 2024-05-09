package fr.nocle.passegares.region;

import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;

import fr.nocle.passegares.R;

public class AjoutRegionActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ajout_region);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        AjoutRegionFragment fragment = new AjoutRegionFragment(false);

        getSupportFragmentManager().beginTransaction().replace(R.id.ajout_region_frame_layout, fragment).commit();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
