package fr.nocle.passegares.visa;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.LigneTamponnee;
import fr.nocle.passegares.modele.Region;

/**
 * Created by jonathanmm on 01/10/16.
 */

public class LigneTamponneeAdapter extends BaseAdapter {
    private static final int TYPE_REGION = 0;
    private static final int TYPE_LIGNE = 1;
    private Context context;
    private boolean voirTamponDuJour;
    private ArrayList<String> listeRegions;
    private ArrayList<Integer> positionRegions;
    private ArrayList<LigneTamponnee> listeLigne;

    public LigneTamponneeAdapter(Context context, ArrayList<LigneTamponnee> liste, boolean voirTamponDuJour)
    {
        this.context = context;
        this.voirTamponDuJour = voirTamponDuJour;
        this.listeLigne = liste;
        initRegion(liste);
    }

    private void initRegion(ArrayList<LigneTamponnee> listeLignes) {
        listeRegions = new ArrayList<>();
        positionRegions = new ArrayList<>();
        long lastRegion = -1;
        int currentPosition = 0;
        for(LigneTamponnee l : listeLignes)
        {
            if(l.getRegion().getId() != lastRegion)
            {
                listeRegions.add(l.getRegion().getNom());
                positionRegions.add(currentPosition);
                currentPosition++;
            }
            lastRegion = l.getRegion().getId();
            currentPosition++;
        }
    }

    @Override
    public int getCount() {
        return listeLigne.size() + listeRegions.size();
    }

    @Override
    public LigneTamponnee getItem(int position) {
        return listeLigne.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        int itemType = getItemViewType(position);
        if(itemType == TYPE_LIGNE) {
            // Check if an existing view is being reused, otherwise inflate the view
            if (convertView == null) {
                convertView = LayoutInflater.from(this.context).inflate(R.layout.ligne_tamponnee_viewer, parent, false);
            }

            //Il faut trouver le nombre de région qui existent avant
            int realPosition = getRealPositionOfLigne(position);
            LigneTamponnee l = getItem(realPosition);

            TextView champ;
            champ = (TextView) convertView.findViewById(R.id.nomLigne);
            setNomLigne(champ, l.getNomLigne(), l.getRegion());

            champ = (TextView) convertView.findViewById(R.id.nbTampons);

            ProgressBar progressBar = (ProgressBar) convertView.findViewById(R.id.progressBar);
            if (voirTamponDuJour) {
                String tampon;
                if (l.getNbTampons() > 1)
                    tampon = convertView.getContext().getString(R.string.tampons);
                else
                    tampon = convertView.getContext().getString(R.string.tampon);

                champ.setText(l.getNbTampons() + " " + tampon);
                progressBar.setVisibility(View.GONE);
            } else {
                champ.setText(l.getNbTampons() + "/" + l.getNbGares());
                progressBar.setMax(l.getNbGares());
                progressBar.setProgress(l.getNbTampons());
                progressBar.setVisibility(View.VISIBLE);
            }

            ImageView icon = (ImageView) convertView.findViewById(R.id.iconeLigne);

            setIcon(icon, l.getRegion().getNom(), l.getNomLigne());

        } else //Region
        {
            // Check if an existing view is being reused, otherwise inflate the view
            if (convertView == null) {
                convertView = LayoutInflater.from(this.context).inflate(R.layout.titre_nom_region_viewer, parent, false);
            }

            TextView champ = (TextView) convertView.findViewById(R.id.titreRegion);
            champ.setText(listeRegions.get(getSectionForPosition(position)));
        }
        return convertView;
    }

    public int getRealPositionOfLigne(int position) {
        int nbRegion = 0;
        for(int posRegion : positionRegions)
        {
            if(posRegion < position)
                nbRegion++;
        }
        return position - nbRegion;
    }

    static public void setIcon(ImageView icon, String nomRegion, String nomLigne)
    {
        if(!nomRegion.equals("Île-de-France") && !nomRegion.equals("Hauts-de-France") &&
                !nomRegion.equals("Pays de la Loire") && !nomRegion.equals("Occitanie") &&
                !nomRegion.equals("Bretagne") && !nomRegion.equals("Centre-Val de Loire"))
        {
            if(nomLigne.length() >= 3 && nomLigne.substring(0, 3).contentEquals("TER"))
            {
                icon.setImageResource(R.drawable.il_ter);
                icon.setVisibility(View.VISIBLE);
            } else
                icon.setVisibility(View.INVISIBLE);
            return;
        }

        //Transports de Lille (Hauts-de-France)
        if(nomRegion.equals("Hauts-de-France"))
        {
            switch (nomLigne)
            {
                case "Métro 1":
                    icon.setImageResource(R.drawable.il_lille_metro_1);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Métro 2":
                    icon.setImageResource(R.drawable.il_lille_metro_2);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Tram R":
                    icon.setImageResource(R.drawable.il_lille_tramway_r);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Tram T":
                    icon.setImageResource(R.drawable.il_lille_tramway_t);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "TER Hauts-de-France":
                    icon.setImageResource(R.drawable.il_ter);
                    icon.setVisibility(View.VISIBLE);
                    break;
                default:
                    icon.setVisibility(View.INVISIBLE);
                    break;
            }
            return;
        }

        //Transports de Nantes/Angers/Aléop en TER (Pays de la Loire)
        if(nomRegion.equals("Pays de la Loire"))
        {
            switch (nomLigne)
            {
                case "Tramway 1 de Nantes":
                    icon.setImageResource(R.drawable.il_nantes_tramway_1);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Tramway 2 de Nantes":
                    icon.setImageResource(R.drawable.il_nantes_tramway_2);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Tramway 3 de Nantes":
                    icon.setImageResource(R.drawable.il_nantes_tramway_3);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Tram A d'Angers":
                    icon.setImageResource(R.drawable.il_angers_tramway_a);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Aléop en TER":
                    icon.setImageResource(R.drawable.il_paysloire_aleop);
                    icon.setVisibility(View.VISIBLE);
                    break;
                default:
                    icon.setVisibility(View.INVISIBLE);
                    break;
            }
            return;
        }

        //Transports de Toulouse (Occitanie)
        if(nomRegion.equals("Occitanie"))
        {
            switch (nomLigne)
            {
                case "Métro A de Toulouse":
                    icon.setImageResource(R.drawable.il_toulouse_metro_a);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "Métro B de Toulouse":
                    icon.setImageResource(R.drawable.il_toulouse_metro_b);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "T1 de Toulouse":
                    icon.setImageResource(R.drawable.il_toulouse_tramway_t1);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "T2 de Toulouse":
                    icon.setImageResource(R.drawable.il_toulouse_tramway_t2);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "TER Occitanie":
                    icon.setImageResource(R.drawable.il_ter);
                    icon.setVisibility(View.VISIBLE);
                    break;
                default:
                    icon.setVisibility(View.INVISIBLE);
                    break;
            }
            return;
        }

        //Métro de Rennes/TER BreizhGo
        if(nomRegion.equals("Bretagne"))
        {
            switch(nomLigne)
            {
                case "Métro A":
                    icon.setImageResource(R.drawable.il_rennes_metro_a);
                    icon.setVisibility(View.VISIBLE);
                    break;
                case "TER BreizhGo":
                    icon.setImageResource(R.drawable.il_bretagne_terbreizhgo);
                    icon.setVisibility(View.VISIBLE);
                    break;
                default:
                    icon.setVisibility(View.INVISIBLE);
                    break;
            }
            return;
        }

        //Rémi Centre Val de Loire
        if(nomRegion.equals("Centre-Val de Loire"))
        {
            switch(nomLigne)
            {
                case "Rémi Centre-Val de Loire":
                    icon.setImageResource(R.drawable.il_centrevdl_remi);
                    icon.setVisibility(View.VISIBLE);
                    break;
                default:
                    icon.setVisibility(View.INVISIBLE);
                    break;
            }
            return;
        }

        //Pour l'Île-de-France
        switch (nomLigne)
        {
            case "RER A":
                icon.setImageResource(R.drawable.il_paris_rer_a);
                icon.setVisibility(View.VISIBLE);
                break;
            case "RER B":
                icon.setImageResource(R.drawable.il_paris_rer_b);
                icon.setVisibility(View.VISIBLE);
                break;
            case "RER C":
                icon.setImageResource(R.drawable.il_paris_rer_c);
                icon.setVisibility(View.VISIBLE);
                break;
            case "RER D":
                icon.setImageResource(R.drawable.il_paris_rer_d);
                icon.setVisibility(View.VISIBLE);
                break;
            case "RER E":
                icon.setImageResource(R.drawable.il_paris_rer_e);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien H":
                icon.setImageResource(R.drawable.il_paris_transilien_h);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien J":
                icon.setImageResource(R.drawable.il_paris_transilien_j);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien K":
                icon.setImageResource(R.drawable.il_paris_transilien_k);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien L":
                icon.setImageResource(R.drawable.il_paris_transilien_l);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien N":
                icon.setImageResource(R.drawable.il_paris_transilien_n);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien P":
                icon.setImageResource(R.drawable.il_paris_transilien_p);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien R":
                icon.setImageResource(R.drawable.il_paris_transilien_r);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Transilien U":
                icon.setImageResource(R.drawable.il_paris_transilien_u);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 1":
                icon.setImageResource(R.drawable.il_paris_metro_m1);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 2":
                icon.setImageResource(R.drawable.il_paris_metro_m2);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 3":
                icon.setImageResource(R.drawable.il_paris_metro_m3);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 3bis":
                icon.setImageResource(R.drawable.il_paris_metro_m3bis);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 4":
                icon.setImageResource(R.drawable.il_paris_metro_m4);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 5":
                icon.setImageResource(R.drawable.il_paris_metro_m5);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 6":
                icon.setImageResource(R.drawable.il_paris_metro_m6);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 7":
                icon.setImageResource(R.drawable.il_paris_metro_m7);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 7bis":
                icon.setImageResource(R.drawable.il_paris_metro_m7bis);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 8":
                icon.setImageResource(R.drawable.il_paris_metro_m8);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 9":
                icon.setImageResource(R.drawable.il_paris_metro_m9);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 10":
                icon.setImageResource(R.drawable.il_paris_metro_m10);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 11":
                icon.setImageResource(R.drawable.il_paris_metro_m11);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 12":
                icon.setImageResource(R.drawable.il_paris_metro_m12);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 13":
                icon.setImageResource(R.drawable.il_paris_metro_m13);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Métro 14":
                icon.setImageResource(R.drawable.il_paris_metro_m14);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T1":
                icon.setImageResource(R.drawable.il_paris_tram_t1);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T2":
                icon.setImageResource(R.drawable.il_paris_tram_t2);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T3a":
                icon.setImageResource(R.drawable.il_paris_tram_t3a);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T3b":
                icon.setImageResource(R.drawable.il_paris_tram_t3b);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T4":
                icon.setImageResource(R.drawable.il_paris_tram_t4);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T5":
                icon.setImageResource(R.drawable.il_paris_tram_t5);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T6":
                icon.setImageResource(R.drawable.il_paris_tram_t6);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T7":
                icon.setImageResource(R.drawable.il_paris_tram_t7);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T8":
                icon.setImageResource(R.drawable.il_paris_tram_t8);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Tramway T11":
                icon.setImageResource(R.drawable.il_paris_tram_t11);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Grandes Lignes":
                icon.setImageResource(R.drawable.il_gl);
                icon.setVisibility(View.VISIBLE);
                break;
            case "orlyval":
                icon.setImageResource(R.drawable.il_paris_navette_orlyval);
                icon.setVisibility(View.VISIBLE);
                break;
            case "CDGVAL":
                icon.setImageResource(R.drawable.il_paris_navette_cdgval);
                icon.setVisibility(View.VISIBLE);
                break;
            case "Funiculaire de Montmartre":
                icon.setImageResource(R.drawable.il_paris_navette_funiculaire_montmartre);
                icon.setVisibility(View.VISIBLE);
                break;
            default:
                icon.setVisibility(View.INVISIBLE);
                break;
        }
    }

    static public void setNomLigne(TextView champ, String nomLigne, Region region)
    {
        if(nomLigne.equals("Ligne Unique") && region != null)
            champ.setText(nomLigne + " (" + region.getNom() + ")");
        else
            champ.setText(nomLigne);
    }

    public int getSectionForPosition(int position) {
        return positionRegions.indexOf(position);
    }

    @Override
    public int getItemViewType(int position) {
        return positionRegions.contains(position) ? TYPE_REGION : TYPE_LIGNE;
    }

    @Override
    public int getViewTypeCount() {
        return 2;
    }

    @Override
    public boolean isEnabled(int position) {
        if (getItemViewType(position) == TYPE_REGION){
            return false;
        }
        return true;
    }
}
