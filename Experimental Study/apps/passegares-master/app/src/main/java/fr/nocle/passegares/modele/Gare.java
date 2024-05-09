package fr.nocle.passegares.modele;

import android.location.Location;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import fr.nocle.passegares.outils.CouleurOutils;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class Gare {
    private long id;
    private String nom;
    private double lon;
    private double lat;
    private double distance;
    private String exploitant;
    private int niveau;
    private int couleur;
    private int couleurEvo;
    private String idStif;
    private ArrayList<Long> idLignes;
    private int nbTampons;
    private Date derniereValidationDate;
    private Long idBoutique;

    public Gare(long id, String idStif, String nom, 
double lon, double lat, String exploitant, 
int niveau, int couleur, int couleurEvo, 
int nbTampons, String derniereValidationDate, Long idBoutique) {
        this.id = id;
        this.idStif = idStif;
        this.nom = nom;
        this.lon = lon;
        this.lat = lat;
        this.exploitant = exploitant;
        this.niveau = niveau;
        this.couleur = couleur;
        this.couleurEvo = couleurEvo;
        this.nbTampons = nbTampons;
        if(derniereValidationDate == null)
            this.derniereValidationDate = null;
        else
        {
            SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                this.derniereValidationDate = formatDate.parse(derniereValidationDate);
            } catch (ParseException e) {
                this.derniereValidationDate = null;
            }
        }
        this.idLignes = new ArrayList<>();
        this.idBoutique = idBoutique;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public double getLongitude() {
        return lon;
    }

    public void setLongitude(double lon) {
        this.lon = lon;
    }

    public double getLatitude() {
        return lat;
    }

    public void setLatitude(double lat) {
        this.lat = lat;
    }

    public Location getLocation()
    {
        Location location = new Location(this.nom);

        location.setLongitude(this.lon);
        location.setLatitude(this.lat);

        return location;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public double getDistance() {
        return distance;
    }

    public String getExploitant() {
        return exploitant;
    }

    public void setExploitant(String exploitant) {
        this.exploitant = exploitant;
    }

    public int getNiveau() {
        return niveau;
    }

    public void setNiveau(int niveau) {
        this.niveau = niveau;
    }

    public int getCouleur() {
        return couleur;
    }

    public String getCouleurString() {
        return CouleurOutils.getHexa(this.couleur);
    }

    public void setCouleur(int couleur) {
        this.couleur = couleur;
    }

    public int getCouleurEvo() {
        return couleurEvo;
    }

    public String getCouleurEvoString() {
        return CouleurOutils.getHexa(this.couleurEvo);
    }

    public void setCouleurEvo(int couleurEvo) {
        this.couleurEvo = couleurEvo;
    }

    public String getIdStif() {
        return idStif;
    }

    public void setIdStif(String idStif) {
        this.idStif = idStif;
    }

    public void addLigneById(long id)
    {
        idLignes.add(id);
    }

    public ArrayList<Long> getIdLignes() {
        return idLignes;
    }

    public Date getDerniereValidationDate() {
        return derniereValidationDate;
    }

    public void setDerniereValidationDate(Date derniereValidationDate) {
        this.derniereValidationDate = derniereValidationDate;
    }

    public int getNbTampons() {
        return nbTampons;
    }

    public void setNbTampons(int nbTampons) {
        this.nbTampons = nbTampons;
    }

    public void incrementeNbTampons() {
        nbTampons++;
    }

    public Long getIdBoutique() {
        return idBoutique;
    }

    public void setIdBoutique(Long idBoutique) {
        this.idBoutique = idBoutique;
    }
}
