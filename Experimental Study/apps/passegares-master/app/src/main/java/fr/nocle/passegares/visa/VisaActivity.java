package fr.nocle.passegares.visa;

import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import java.util.ArrayList;

import fr.nocle.passegares.GareActivity;
import fr.nocle.passegares.R;
import fr.nocle.passegares.controlleur.LigneCtrl;
import fr.nocle.passegares.controlleur.TamponCtrl;
import fr.nocle.passegares.modele.GareTamponnee;
import fr.nocle.passegares.modele.Ligne;

public class VisaActivity extends AppCompatActivity {
    static public final String PREFERENCE_NOUVELLE_INTERFACE_VISA = "nouvelleInterfaceVisa";

    private TamponsAdapter adapter;

    public static String ARG_IDLIGNE = "IDLIGNE";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_visa);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        Intent i = getIntent();
        long idLigne = i.getLongExtra(ARG_IDLIGNE, 0);
        boolean voirTamponDuJour = i.getBooleanExtra(ResumeVisaFragment.ARG_DUJOUR, false);

        TamponCtrl tamponControlleur = new TamponCtrl(this);

        //On récupère l'interface à afficher
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        boolean nouvelleInterface = preferences.getBoolean(PREFERENCE_NOUVELLE_INTERFACE_VISA, true);

        Ligne l = null;
        final ArrayList<GareTamponnee> listeTampons = tamponControlleur.getByLine(idLigne, voirTamponDuJour, nouvelleInterface);

        //On s'occupe du titre
        if(idLigne == 0)
        {
            int nbStations = listeTampons.size();
            String titre;
            if(voirTamponDuJour)
            {
                if(nbStations >= 2)
                    titre = getString(R.string.tousTamponsDuJour);
                else
                    titre = getString(R.string.tousTamponDuJour);
            } else
            {
                if(nbStations >= 2)
                    titre = getString(R.string.tousTampons);
                else
                    titre = getString(R.string.tousTampon);
            }
            setTitle(nbStations + " " + titre);
        } else {
            LigneCtrl ligneControlleur = new LigneCtrl(this);
            l = ligneControlleur.get(idLigne);
            ligneControlleur.close();

            String precision;
            if(nouvelleInterface && !voirTamponDuJour)
            {
                //On regarde ce qui est vraiment tamponné
                int nbGaresTamponnees = 0;
                for(GareTamponnee g : listeTampons)
                {
                    if(g.getNbValidations() > 0)
                        nbGaresTamponnees++;
                }
                precision = " (" + nbGaresTamponnees + "/" + listeTampons.size() + ")";
            }
            else
                precision = " (" + listeTampons.size() + ")";
            setTitle(l.getNom() + precision);
        }

        // Create the adapter to convert the array to views
        adapter = new TamponsAdapter(this, listeTampons, l);

        // Attach the adapter to a ListView
        ListView listView = (ListView) findViewById(R.id.listeTampons);
        listView.setAdapter(adapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                GareTamponnee gareTamponnee = listeTampons.get(position);
                Intent i = new Intent(getApplicationContext(), GareActivity.class);
                i.putExtra(GareActivity.ARG_IDGARE, gareTamponnee.getIdGare());
                startActivity(i);
            }
        });

        tamponControlleur.close();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_visa, menu);
        return true;
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.voirFourni:
                triggerFourni(item);
                return true;
            case R.id.voirNecessite:
                triggerNecessite(item);
                return true;
            case R.id.voirNiveau:
                triggerNiveau(item);
                return true;
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void triggerNiveau(MenuItem item) {
        //On regarde le statut précédent de la case
        boolean nouveauStatut = !item.isChecked();

        item.setChecked(nouveauStatut);
        adapter.setAfficherNiveau(nouveauStatut);
        adapter.notifyDataSetChanged();
    }

    private void triggerFourni(MenuItem item) {
        //On regarde le statut précédent de la case
        boolean nouveauStatut = !item.isChecked();

        item.setChecked(nouveauStatut);
        adapter.setAfficherFournit(nouveauStatut);
        adapter.notifyDataSetChanged();
    }

    private void triggerNecessite(MenuItem item) {
        //On regarde le statut précédent de la case
        boolean nouveauStatut = !item.isChecked();

        item.setChecked(nouveauStatut);
        adapter.setAfficherNecessite(nouveauStatut);
        adapter.notifyDataSetChanged();
    }
}
