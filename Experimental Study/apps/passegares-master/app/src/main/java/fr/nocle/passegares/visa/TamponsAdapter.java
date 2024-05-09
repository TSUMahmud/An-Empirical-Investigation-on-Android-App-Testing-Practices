package fr.nocle.passegares.visa;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

import fr.nocle.passegares.modele.GareTamponnee;
import fr.nocle.passegares.R;
import fr.nocle.passegares.modele.Ligne;
import fr.nocle.passegares.outils.CouleurOutils;
import fr.nocle.passegares.outils.StringOutils;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class TamponsAdapter extends ArrayAdapter<GareTamponnee> {
    private Ligne ligne;
    private boolean afficherFournit;
    private boolean afficherNecessite;
    private boolean afficherNiveau;

    public TamponsAdapter(Context context, ArrayList<GareTamponnee> liste, Ligne l)
    {
        super(context, 0, liste);
        this.ligne = l;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent)
    {
        GareTamponnee t = getItem(position);
        // Check if an existing view is being reused, otherwise inflate the view
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.tampon_viewer, parent, false);
        }

        TextView champ;
        String nomGare = t.getNomGare();
        champ = (TextView) convertView.findViewById(R.id.nom_gare);
        champ.setText(StringOutils.displayBeautifullNameStation(nomGare, 30));
        if(t.getNbValidations() == 0)
            champ.setTextColor(Color.GRAY);
        else
            champ.setTextColor(Color.BLACK);
        champ = (TextView) convertView.findViewById(R.id.nb_validations);
        champ.setText(String.valueOf(t.getNbValidations()));
        champ = (TextView) convertView.findViewById(R.id.date_tampon);
        if(StringOutils.getRelativeDate(getContext(), t.getDateDerniereValidation()).equals(""))
            champ.setText(null); //Pas encore validé, on laisse vide
        else
        {
            if(afficherNiveau)
                champ.setText(getContext().getString(R.string.niveau) + " " + t.getNiveau());
            else
                champ.setText(getContext().getString(R.string.derniereValidation) + " " + StringOutils.getRelativeDate(getContext(), t.getDateDerniereValidation()));
        }

        //Couleur des tickets
        TextView zoneCouleurFournit = (TextView) convertView.findViewById(R.id.couleurFournit);
        if(t.getNiveau() >= 1 && afficherFournit) {
            int color = Color.parseColor(CouleurOutils.getHexa(t.getCouleur()));
            zoneCouleurFournit.setBackgroundColor(color);
            zoneCouleurFournit.setVisibility(View.VISIBLE);
        } else
        {
            zoneCouleurFournit.setVisibility(View.INVISIBLE);
        }

        TextView zoneCouleurNecessite = (TextView) convertView.findViewById(R.id.couleurNecessite);
        if(t.getNiveau() >= 1 && afficherNecessite)
        {
            int color = Color.parseColor(CouleurOutils.getHexa(t.getCouleurEvolution()));
            zoneCouleurNecessite.setBackgroundColor(color);
            zoneCouleurNecessite.setVisibility(View.VISIBLE);
        } else { //On masque
            zoneCouleurNecessite.setVisibility(View.INVISIBLE);
        }

        //Plan de ligne
        ImageView pdlFond = (ImageView) convertView.findViewById(R.id.planLigneFond);
        ImageView pdlPoint = (ImageView) convertView.findViewById(R.id.planLignePoint);
        if(t.getPlanDeLigneFond() != 0)
        {
            //On va récupérer la couleur
            String couleurHexa = "#000000";

            if(ligne != null && ligne.getCouleur() != null && ligne.getCouleur() != "")
                couleurHexa = ligne.getCouleur();

            int color = Color.parseColor(couleurHexa);

            int valueAlpha;
            if(t.getNbValidations() == 0)
                valueAlpha = 55;
            else
                valueAlpha = 255;

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN)
            {
                pdlFond.setImageAlpha(valueAlpha);
                pdlPoint.setImageAlpha(valueAlpha);
            } else
            {
                pdlFond.setAlpha(valueAlpha);
                pdlPoint.setAlpha(valueAlpha);
            }

            pdlFond.setVisibility(View.VISIBLE);
            pdlFond.setColorFilter(color);
            switch(t.getPlanDeLigneFond())
            {
                case GareTamponnee.LIGNE_SEUL_CENTRE:
                    pdlFond.setImageResource(R.drawable.plf_01);
                    break;
                case GareTamponnee.LIGNE_SEUL_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_02);
                    break;
                case GareTamponnee.LIGNE_SEUL_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_03);
                    break;
                case GareTamponnee.LIGNE_SEUL_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_04);
                    break;
                case GareTamponnee.LIGNE_CENTRE_SEUL:
                    pdlFond.setImageResource(R.drawable.plf_10);
                    break;
                case GareTamponnee.LIGNE_CENTRE_CENTRE:
                    pdlFond.setImageResource(R.drawable.plf_11);
                    break;
                case GareTamponnee.LIGNE_CENTRE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_12);
                    break;
                case GareTamponnee.LIGNE_CENTRE_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_13);
                    break;
                case GareTamponnee.LIGNE_CENTRE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_14);
                    break;
                case GareTamponnee.LIGNE_CENTRE_BRANCHE_SP:
                    pdlFond.setImageResource(R.drawable.plf_19);
                    break;
                case GareTamponnee.LIGNE_GAUCHE_SEUL:
                    pdlFond.setImageResource(R.drawable.plf_20);
                    break;
                case GareTamponnee.LIGNE_GAUCHE_CENTRE:
                    pdlFond.setImageResource(R.drawable.plf_21);
                    break;
                case GareTamponnee.LIGNE_GAUCHE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_22);
                    break;
                /*case GareTamponnee.LIGNE_GAUCHE_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_23);
                    break;*/
                case GareTamponnee.LIGNE_GAUCHE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_24);
                    break;
                case GareTamponnee.LIGNE_GAUCHE_SEUL_SP:
                    pdlFond.setImageResource(R.drawable.plf_25);
                    break;
                case GareTamponnee.LIGNE_GAUCHE_GAUCHE_SP:
                    pdlFond.setImageResource(R.drawable.plf_27);
                    break;
                case GareTamponnee.LIGNE_SP_GAUCHE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_72);
                    break;
                case GareTamponnee.LIGNE_SP_GAUCHE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_74);
                    break;
                case GareTamponnee.LIGNE_DROITE_SEUL:
                    pdlFond.setImageResource(R.drawable.plf_30);
                    break;
                case GareTamponnee.LIGNE_DROITE_CENTRE:
                    pdlFond.setImageResource(R.drawable.plf_31);
                    break;
                /*case GareTamponnee.LIGNE_DROITE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_32);
                    break;*/
                case GareTamponnee.LIGNE_DROITE_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_33);
                    break;
                case GareTamponnee.LIGNE_DROITE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_34);
                    break;
                case GareTamponnee.LIGNE_DROITE_BRANCHE_SP:
                    pdlFond.setImageResource(R.drawable.plf_39);
                    break;
                case GareTamponnee.LIGNE_SP_DROITE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_84);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_SEUL:
                    pdlFond.setImageResource(R.drawable.plf_40);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_CENTRE:
                    pdlFond.setImageResource(R.drawable.plf_41);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_42);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_43);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_BRANCHE:
                    pdlFond.setImageResource(R.drawable.plf_44);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_DROITE_SP:
                    pdlFond.setImageResource(R.drawable.plf_48);
                    break;
                case GareTamponnee.LIGNE_BRANCHE_BRANCHE_SP:
                    pdlFond.setImageResource(R.drawable.plf_49);
                    break;
                case GareTamponnee.LIGNE_SP_BRANCHE_GAUCHE:
                    pdlFond.setImageResource(R.drawable.plf_92);
                    break;
                case GareTamponnee.LIGNE_SP_BRANCHE_DROITE:
                    pdlFond.setImageResource(R.drawable.plf_93);
                    break;
                default:
                    pdlFond.setVisibility(View.GONE);
            }

            pdlPoint.setVisibility(View.VISIBLE);
            pdlPoint.setColorFilter(color);
            switch(t.getPlanDeLignePoint())
            {
                case GareTamponnee.POINT_CENTRE_DEUX:
                    pdlPoint.setImageResource(R.drawable.pld_01);
                    break;
                case GareTamponnee.POINT_CENTRE_BAS:
                    pdlPoint.setImageResource(R.drawable.pld_02);
                    break;
                case GareTamponnee.POINT_CENTRE_HAUT:
                    pdlPoint.setImageResource(R.drawable.pld_03);
                    break;
                case GareTamponnee.POINT_DROITE_DEUX:
                    pdlPoint.setImageResource(R.drawable.pld_11);
                    break;
                case GareTamponnee.POINT_DROITE_BAS:
                    pdlPoint.setImageResource(R.drawable.pld_12);
                    break;
                case GareTamponnee.POINT_DROITE_HAUT:
                    pdlPoint.setImageResource(R.drawable.pld_13);
                    break;
                case GareTamponnee.POINT_GAUCHE_DEUX:
                    pdlPoint.setImageResource(R.drawable.pld_21);
                    break;
                case GareTamponnee.POINT_GAUCHE_BAS:
                    pdlPoint.setImageResource(R.drawable.pld_22);
                    break;
                case GareTamponnee.POINT_GAUCHE_HAUT:
                    pdlPoint.setImageResource(R.drawable.pld_23);
                    break;
                default:
                    pdlPoint.setVisibility(View.GONE);
            }
        } else
        {
            pdlFond.setVisibility(View.GONE);
            pdlPoint.setVisibility(View.GONE);
        }

        return convertView;
    }

    public void setAfficherFournit(boolean afficherFournit) {
        this.afficherFournit = afficherFournit;
    }

    public boolean isAfficherFournit() {
        return afficherFournit;
    }

    public void setAfficherNecessite(boolean afficherNecessite) {
        this.afficherNecessite = afficherNecessite;
    }

    public boolean isAfficherNecessite() {
        return afficherNecessite;
    }

    public void setAfficherNiveau(boolean afficherNiveau) {
        this.afficherNiveau = afficherNiveau;
    }

    public boolean isAfficherNiveau() {
        return afficherNiveau;
    }
}