package fr.nocle.passegares;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.NumberPicker;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

import java.lang.reflect.Field;
import java.util.ArrayList;

import fr.nocle.passegares.achatDialog.AchatDialog;
import fr.nocle.passegares.adapter.ObjetVendableAdapter;
import fr.nocle.passegares.controlleur.BoutiqueCtrl;
import fr.nocle.passegares.controlleur.InventaireCtrl;
import fr.nocle.passegares.modele.Boutique;
import fr.nocle.passegares.modele.ObjetVendable;
import fr.nocle.passegares.modele.Ticket;
import fr.nocle.passegares.outils.CouleurOutils;

public class BoutiqueActivity extends AppCompatActivity {
    int[] ticketsChoisis;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_boutique);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        Intent i = getIntent();
        final long idBoutique = i.getLongExtra("BOUTIQUEID", 0);

        final BoutiqueCtrl boutiqueCtrl = new BoutiqueCtrl(this);
        Boutique boutique = boutiqueCtrl.get(idBoutique);

        TextView nomBoutiqueLabel = (TextView) findViewById(R.id.nomBoutiqueLabel);
        nomBoutiqueLabel.setText(boutique.getNom());

        //On affiche la liste des objets
        final ArrayList<ObjetVendable> listeObjetsEnVente = boutiqueCtrl.getListeObjetsEnVente();
        ObjetVendableAdapter adapter = new ObjetVendableAdapter(this, listeObjetsEnVente);

        ListView listeArticles = (ListView) findViewById(R.id.listeArticles);
        listeArticles.setAdapter(adapter);

        //On prépare la boîte de dialogue
        AchatDialog achatDialog = new AchatDialog(this);

        listeArticles.setOnItemClickListener(achatDialog.getOnItemClickListener(listeObjetsEnVente));
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
