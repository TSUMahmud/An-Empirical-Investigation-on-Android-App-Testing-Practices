package fr.nocle.passegares;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.adapter.CorrespondancesAdapter;
import fr.nocle.passegares.boutique.BoutiqueConstantes;
import fr.nocle.passegares.controlleur.BoutiqueCtrl;
import fr.nocle.passegares.controlleur.GareCtrl;
import fr.nocle.passegares.modele.Boutique;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Ligne;
import fr.nocle.passegares.outils.CouleurOutils;
import fr.nocle.passegares.outils.StringOutils;
import fr.nocle.passegares.visa.VisaActivity;

public class GareActivity extends AppCompatActivity {

    public static String ARG_IDGARE = "IDGARE";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_gare);

        getSupportActionBar().setElevation(0);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        Intent i = getIntent();
        long idGare = i.getLongExtra(ARG_IDGARE, 0);

        GareCtrl gareControlleur = new GareCtrl(this);
        Gare gare = gareControlleur.get(idGare);

        TextView champ;

        champ = (TextView) findViewById(R.id.nomGare);
        champ.setText(StringOutils.displayBeautifullNameStation(gare.getNom()));

        champ = (TextView) findViewById(R.id.niveau);
        champ.setText(StringOutils.displayBeautifullNameStation(String.valueOf(gare.getNiveau())));

        //On gère les tickets
        if (gare.getNiveau() == 0) {
            GridLayout zoneTicket = (GridLayout) findViewById(R.id.zoneTicket);
            zoneTicket.setVisibility(View.GONE);
        } else {
            GridLayout zoneTicket = (GridLayout) findViewById(R.id.zoneTicket);
            zoneTicket.setVisibility(View.VISIBLE);

            ImageView ticketFournit = (ImageView) findViewById(R.id.ticketFournitIcone);
            CouleurOutils.setTicketIcon(ticketFournit, gare.getCouleur());

            ImageView ticketDemande = (ImageView) findViewById(R.id.ticketDemandeIcone);
            CouleurOutils.setTicketIcon(ticketDemande, gare.getCouleurEvo());
        }

        //On regarde pour la boutique
        if (gare.getNiveau() < BoutiqueConstantes.niveauOuverture || gare.getIdBoutique() == null || gare.getIdBoutique() == 0) {
            cacherZoneBoutique();
        } else {
            //On récupère la boutique
            BoutiqueCtrl boutiqueCtrl = new BoutiqueCtrl(this);
            Boutique boutique = boutiqueCtrl.get(gare.getIdBoutique());

            if(boutique == null)
            {
                cacherZoneBoutique();
            } else {
                champ = (TextView) findViewById(R.id.boutique);
                champ.setText(boutique.getNom());

                GridLayout zoneBoutique = (GridLayout) findViewById(R.id.zoneBoutique);
                zoneBoutique.setVisibility(View.VISIBLE);
            }
        }

        champ = (TextView) findViewById(R.id.correspondances);
        final ArrayList<Ligne> correspondances = gareControlleur.getCorrespondances(gare);
        ArrayList<String> nomCorrespondances = new ArrayList<>();
        for (Ligne l : correspondances) {
            if (l.getNom().equals("Ligne Unique") && l.getRegion() != null)
                nomCorrespondances.add(l.getNom() + " (" + l.getRegion().getNom() + ")");
            else
                nomCorrespondances.add(l.getNom());
        }
        champ.setText(TextUtils.join(", ", nomCorrespondances));

        //On prépare la dialog box des correspondances
        final AlertDialog.Builder dialog = new AlertDialog.Builder(this);
        dialog.setTitle(R.string.correspondances);

        LayoutInflater inflater = this.getLayoutInflater();

        View viewDialog = inflater.inflate(R.layout.dialog_correspondances_gare, null);

        ListView gridCorrespondance = (ListView) viewDialog.findViewById(R.id.listeCorrespondance);

        CorrespondancesAdapter correspondancesAdapter = new CorrespondancesAdapter(this, correspondances);
        gridCorrespondance.setAdapter(correspondancesAdapter);

        final Activity mainActivity = this;
        gridCorrespondance.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Ligne ligne = correspondances.get(position);
                Intent i = new Intent(mainActivity, VisaActivity.class);
                i.putExtra(VisaActivity.ARG_IDLIGNE, ligne.getId());
                startActivity(i);
            }
        });

        dialog.setView(viewDialog);
        dialog.create();

        GridLayout zoneCorrespondance = (GridLayout) findViewById(R.id.zoneCorrespondance);
        zoneCorrespondance.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.show();
            }
        });

        champ = (TextView) findViewById(R.id.nombreValidations);
        champ.setText(String.valueOf(gare.getNbTampons()));

        //On regarde la dernière validation
        GridLayout grille = (GridLayout) findViewById(R.id.derniereValidationGrille);
        if (gare.getNbTampons() > 0) {
            champ = (TextView) findViewById(R.id.derniereValidationDate);
            champ.setText(StringOutils.getRelativeDate(this, gare.getDerniereValidationDate()));

            grille.setVisibility(View.VISIBLE);
        } else {
            grille.setVisibility(View.GONE);
        }
        gareControlleur.close();

        //On regarde la distance
        //On récupère la dernière position connue
        LocationManager locationManager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
        if (locationManager != null && !(ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED)) {
            Location dernierePositionConnue = locationManager.getLastKnownLocation(LocationManager.GPS_PROVIDER);
            if(dernierePositionConnue != null)
            {
                TextView champDistance = (TextView) findViewById(R.id.distance);
                float distanceValeur = dernierePositionConnue.distanceTo(gare.getLocation());
                champDistance.setText(StringOutils.displayBeautifullDistance(distanceValeur));
            }
        }

        ImageView boutonDistance = (ImageView) findViewById(R.id.distanceBouton);
        final Gare finalGare = gare;
        boutonDistance.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://openstreetmap.org/?mlat=" + finalGare.getLatitude() + "&mlon=" + finalGare.getLongitude()));
                startActivity(browserIntent);
            }
        });
    }

    private void cacherZoneBoutique() {
        GridLayout zoneBoutique = (GridLayout) findViewById(R.id.zoneBoutique);
        zoneBoutique.setVisibility(View.GONE);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
