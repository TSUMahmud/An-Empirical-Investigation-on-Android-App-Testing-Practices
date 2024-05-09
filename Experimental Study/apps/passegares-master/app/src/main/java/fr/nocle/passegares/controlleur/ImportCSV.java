package fr.nocle.passegares.controlleur;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import fr.nocle.passegares.bdd.GareDansLigneBDD;
import fr.nocle.passegares.bdd.LigneBDD;
import fr.nocle.passegares.modele.Gare;
import fr.nocle.passegares.modele.Ligne;
import fr.nocle.passegares.modele.Region;

/**
 * Created by jonathanmm on 03/09/16.
 */
public class ImportCSV {
    @Deprecated
    public static ArrayList<Gare> importListGares(Context contexte, SQLiteDatabase bdd) {

        String csvFile = "emplacement-des-gares-idf-data-generalisee.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(csvFile)));
            int i = 0;
            int posIdLignes = -1, posNomLignes = -1, posTypeLigne = -1;
            int posIdGare = -1, posNomGare = -1, posExploitantGare = -1, posPositionGare = -1;
            int posVCreation = -1, posVMaj = -1;

            ArrayList<Gare> listeGares = new ArrayList<Gare>();
            ArrayList<Ligne> listeLignes = new ArrayList<Ligne>();
            HashMap<String, Long> idLignesDansBDD = new HashMap<>();
            HashMap<Long, Integer> nbGaresDansLigne = new HashMap<>();

            while ((line = br.readLine()) != null) {

                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idGare"))
                            posIdGare = j;
                        else if(c.equalsIgnoreCase("nomGare"))
                            posNomGare = j;
                        else if(c.equalsIgnoreCase("idLignes"))
                            posIdLignes = j;
                        else if(c.equalsIgnoreCase("nomLignes"))
                            posNomLignes = j;
                        else if(c.equalsIgnoreCase("typeLigne"))
                            posTypeLigne = j;
                        else if(c.equalsIgnoreCase("exploitantGare"))
                            posExploitantGare = j;
                        else if(c.equalsIgnoreCase("positionGare"))
                            posPositionGare = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        j++;
                    }
                } else {
                    //Données de la gare
                    String[] position = cellules[posPositionGare].split(",");
                    Gare g = new Gare(-1, cellules[posIdGare], cellules[posNomGare],
                            new Double(position[1].trim()).doubleValue(),
                            new Double(position[0].trim()).doubleValue(),
                            cellules[posExploitantGare], 0, 0, 0, 0, "", null);

                    //On regarde maintenant ses lignes
                    String[] idLignes = cellules[posIdLignes].split(" / ");
                    String[] nomLignes = cellules[posNomLignes].split(" / ");
                    for(int j = 0; j < idLignes.length; j++)
                    {
                        String idLigne = idLignes[j];
                        if(idLignesDansBDD.containsKey(idLigne))
                        {
                            long idLigneDansBDD = idLignesDansBDD.get(idLigne);
                            //La ligne existe déjà, on l'insert dans la gare
                            g.addLigneById(idLigneDansBDD);
                            nbGaresDansLigne.put(idLigneDansBDD, nbGaresDansLigne.get(idLigneDansBDD) + 1);
                        } else {
                            //Nouvelle ligne rencontrée, on l'ajoute dans le système
                            Ligne l = new Ligne(-1, idLigne, nomLignes[j], cellules[posTypeLigne], 0, "", 0);
                            long nouvelId = bdd.insert(LigneBDD.TABLE_NOM, null, LigneCtrl.creerDepuisObj(l));
                            l.setId(nouvelId);
                            listeLignes.add(l);
                            //On l'indexe
                            idLignesDansBDD.put(idLigne, nouvelId);
                            nbGaresDansLigne.put(nouvelId, 1);
                            //Et on l'ajoute dans la gare
                            g.addLigneById(nouvelId);
                        }
                    }

                    listeGares.add(g);
                }
                i++;
            }
            //Maintenant, il suffit de mettre à jour le nombre de gares par ligne
            updateNbGaresDansLigne(bdd, nbGaresDansLigne);
            return listeGares;
        } catch (FileNotFoundException e) {
            Log.e("Import Gares", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Gares", "Problème d'entrée/sortie");
        }
        return null;
    }

    public static void updateNbGaresDansLigne(SQLiteDatabase bdd, HashMap<Long, Integer> nbGares)
    {
        // Parcours de la Hashmap
        Iterator i = nbGares.entrySet().iterator();

        for(Map.Entry<Long, Integer> item : nbGares.entrySet())
        {
            ContentValues valeur = new ContentValues();
            valeur.put(LigneBDD.TABLE_NB_GARES, item.getValue());

            bdd.update(LigneBDD.TABLE_NOM, valeur, LigneBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(item.getKey())});
        }
    }

    public static void updateNbGaresDansLigne(SQLiteDatabase bdd, Ligne ligne)
    {
        Cursor c = bdd.rawQuery("SELECT COUNT(*) FROM " + GareDansLigneBDD.TABLE_NOM + " WHERE idLigne = ?", new String[]{String.valueOf(ligne.getId())});
        c.moveToFirst();
        ContentValues valeur = new ContentValues();
        valeur.put(LigneBDD.TABLE_NB_GARES, c.getInt(0));
        c.close();
        bdd.update(LigneBDD.TABLE_NOM, valeur, LigneBDD.TABLE_CLE + " = ?", new String[] {String.valueOf(ligne.getId())});
    }

    @Deprecated
    public static ArrayList<Gare> getToUpdateGares(Context contexte, SQLiteDatabase bdd, int since, int to)
    {
        String name = "emplacement-des-gares-idf-data-generalisee.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        GareCtrl gareCtrl = new GareCtrl(bdd);
        LigneCtrl ligneCtrl = new LigneCtrl(bdd);

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdLignes = -1, posNomLignes = -1, posTypeLigne = -1;
            int posIdGare = -1, posNomGare = -1, posExploitantGare = -1, posPositionGare = -1;
            int posVCreation = -1, posVMaj = -1;

            ArrayList<Gare> listeGares = new ArrayList<Gare>();
            ArrayList<Ligne> listeLignes = new ArrayList<Ligne>();
            HashMap<String, Long> idLignesDansBDD = new HashMap<>();
            HashMap<Long, Integer> nbGaresDansLigne = new HashMap<>();

            while ((line = br.readLine()) != null) {

                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idGare"))
                            posIdGare = j;
                        else if(c.equalsIgnoreCase("nomGare"))
                            posNomGare = j;
                        else if(c.equalsIgnoreCase("idLignes"))
                            posIdLignes = j;
                        else if(c.equalsIgnoreCase("nomLignes"))
                            posNomLignes = j;
                        else if(c.equalsIgnoreCase("typeLigne"))
                            posTypeLigne = j;
                        else if(c.equalsIgnoreCase("exploitantGare"))
                            posExploitantGare = j;
                        else if(c.equalsIgnoreCase("positionGare"))
                            posPositionGare = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        j++;
                    }
                } else {
                    //On regarde la date de création
                    int vCreation = new Integer(cellules[posVCreation]).intValue();
                    int vMaj = new Integer(cellules[posVMaj]).intValue();

                    //Infos gare
                    String[] position = cellules[posPositionGare].split(",");
                    String[] idLignes = cellules[posIdLignes].split(" / ");
                    String[] nomLignes = cellules[posNomLignes].split(" / ");
                    if(since < vCreation && to >= vCreation)
                    {
                        //Nouvelle donnée
                        //Données de la gare
                        Gare g = new Gare(-1, cellules[posIdGare], cellules[posNomGare],
                                new Double(position[1].trim()).doubleValue(),
                                new Double(position[0].trim()).doubleValue(),
                                cellules[posExploitantGare], 0, 0, 0, 0, "", null);

                        //On regarde maintenant ses lignes
                        for(int j = 0; j < idLignes.length; j++)
                        {
                            String idLigne = idLignes[j];
                            if(idLignesDansBDD.containsKey(idLigne))
                            {
                                long idLigneDansBDD = idLignesDansBDD.get(idLigne);
                                //La ligne existe déjà, on l'insert dans la gare
                                g.addLigneById(idLigneDansBDD);
                                nbGaresDansLigne.put(idLigneDansBDD, nbGaresDansLigne.get(idLigneDansBDD) + 1);
                            } else {
                                //Nouvelle ligne rencontrée, on l'ajoute dans le système
                                Ligne l = new Ligne(-1, idLigne, nomLignes[j], cellules[posTypeLigne], 0, "", 0);
                                long nouvelId = bdd.insert(LigneBDD.TABLE_NOM, null, LigneCtrl.creerDepuisObj(l));
                                l.setId(nouvelId);
                                listeLignes.add(l);
                                //On l'indexe
                                idLignesDansBDD.put(idLigne, nouvelId);
                                nbGaresDansLigne.put(nouvelId, 1);
                                //Et on l'ajoute dans la gare
                                g.addLigneById(nouvelId);
                            }
                        }

                        listeGares.add(g);
                    } else if(since < vMaj && to >= vMaj)
                    {
                        //On va récupérer la gare
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        //On la met à jour
                        g.setNom(cellules[posNomGare]);
                        g.setLongitude(new Double(position[1].trim()).doubleValue());
                        g.setLatitude(new Double(position[0].trim()).doubleValue());
                        g.setExploitant(cellules[posExploitantGare]);
                        gareCtrl.update(g);

                        //Maintenant, on va regarder quels sont ses liaisons de ligne actuelles
                        ArrayList<Ligne> correspondances = gareCtrl.getCorrespondances(g);
                        ArrayList<String> correspondancesListeLigne = new ArrayList<>();
                        for(Ligne l: correspondances)
                        {
                            correspondancesListeLigne.add(l.getIdStif());
                        }

                        //On regarde maintenant ses lignes
                        for(int j = 0; j < idLignes.length; j++) {
                            String idLigne = idLignes[j];
                            int iDansTableau = correspondancesListeLigne.indexOf(idLigne);
                            if(iDansTableau == -1) //La ligne n'existe pas actuellement dans le tableau des correspondances
                            {
                                Ligne l = ligneCtrl.get(idLigne);
                                long idLigneDansBDD;
                                if(l == null) //Nouvelle ligne
                                {
                                    l = new Ligne(-1, idLigne, nomLignes[j], cellules[posTypeLigne], 0, "", 0);
                                    idLigneDansBDD = bdd.insert(LigneBDD.TABLE_NOM, null, LigneCtrl.creerDepuisObj(l));
                                    l.setId(idLigneDansBDD);
                                } else {
                                    idLigneDansBDD = l.getId();
                                }
                                bdd.insert(GareDansLigneBDD.TABLE_NOM, null, GareCtrl.creerRelationGareLigne(g.getId(), idLigneDansBDD));
                                bdd.execSQL(
                                        "UPDATE " + LigneBDD.TABLE_NOM + " SET " + LigneBDD.TABLE_NB_GARES + " = " + LigneBDD.TABLE_NB_GARES + " + 1 WHERE " + LigneBDD.TABLE_CLE + " = ?",
                                        new String[] {String.valueOf(idLigneDansBDD)}
                                );
                            } else { //Il l'était déjà, il n'y a juste qu'à l'enlever du tableau
                                correspondancesListeLigne.remove(iDansTableau);
                                correspondances.remove(iDansTableau); //Même Id
                            }
                        }

                        //Là, il nous reste que les lignes en trop dans le tableau
                        for(Ligne l: correspondances)
                        {
                            bdd.delete(
                                    GareDansLigneBDD.TABLE_NOM,
                                    GareDansLigneBDD.TABLE_ID_GARE + " = ? AND " + GareDansLigneBDD.TABLE_ID_LIGNE + " = ?",
                                    new String[]{String.valueOf(g.getId()), String.valueOf(l.getId())}
                            );
                            bdd.rawQuery(
                                    "UPDATE " + LigneBDD.TABLE_NOM + " SET " + LigneBDD.TABLE_NB_GARES + " = " + LigneBDD.TABLE_NB_GARES + " - 1 WHERE " + LigneBDD.TABLE_CLE + " = ?",
                                    new String[] {String.valueOf(l.getId())}
                            );
                        }
                    }
                }
                i++;
            }
            //Maintenant, il suffit de mettre à jour le nombre de gares par ligne
            return listeGares;
        } catch (FileNotFoundException e) {
            Log.e("Import Gares", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Gares", "Problème d'entrée/sortie");
        }
        return null;
    }

    public static void reinitDataGareDansLigne(Context contexte, SQLiteDatabase bdd)
    {
        RegionCtrl regionCtrl = new RegionCtrl(bdd);
        for(Region r : regionCtrl.getAllRegions(RegionCtrl.REGIONSINSTALLE))
        {
            updateDataGareDansLigne(contexte, bdd, 1, -1, r.getId(), r.getDossierId());
        }
    }

    public static void updateData(Context contexte, SQLiteDatabase bdd, int since, int to)
    {
        ArrayList<Region> listeRegionAImporter =  updatedataRegions(contexte, bdd, since, to);
        if(listeRegionAImporter != null)
        {
            for(Region r : listeRegionAImporter)
            {
                updateAllDataRegion(contexte, bdd, since, to, r);
            }
        }
    }

    public static void updateAllDataRegion(Context contexte, SQLiteDatabase bdd, int since, int to, Region r)
    {
        updateDataGares(contexte, bdd, since, to, r.getDossierId());
        updateDataLignes(contexte, bdd, since, to, r.getId(), r.getDossierId());
        updateDataGareDansLigne(contexte, bdd, since, to, r.getId(), r.getDossierId());
    }

    public static ArrayList<Region> updatedataRegions(Context contexte, SQLiteDatabase bdd, int since, int to)
    {
        String name = "Regions.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        RegionCtrl regionCtrl = new RegionCtrl(bdd);

        //On prépare la liste des régions pour la mise à jour
        ArrayList<Region> listeRegions = new ArrayList<>();
        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdRegion = -1, posNomRegion = -1, posDossierIdRegion = -1;
            int posVCreation = -1, posVMaj = -1;

            while ((line = br.readLine()) != null)
            {
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("id"))
                            posIdRegion = j;
                        else if(c.equalsIgnoreCase("nom"))
                            posNomRegion = j;
                        else if(c.equalsIgnoreCase("dossierId"))
                            posDossierIdRegion = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        j++;
                    }
                } else {
                    //On regarde la date de création
                    int vCreation = Integer.valueOf(cellules[posVCreation]);
                    int vMaj = Integer.valueOf(cellules[posVMaj]);

                    //Infos gare
                    if(since < vCreation && (to == -1 || to >= vCreation))
                    {
                        //Nouvelle donnée
                        //Données de la region
                        Region r = new Region(Long.valueOf(cellules[posIdRegion]),
                                cellules[posNomRegion],
                                false,
                                cellules[posDossierIdRegion]);

                        //On sauvegarde
                        regionCtrl.create(r);

                        //TO FIX : Les régions nouvellement crées ne devraient pas être ajouté directement, à enlever quand moyen sélectionner régions sera fait
                        //listeRegions.add(r);
                    } else if(since < vMaj && to >= vMaj)
                    {
                        //On va récupérer la région
                        Region r = regionCtrl.get(Long.valueOf(cellules[posIdRegion]));

                        if(r == null) //La région n'a pas été trouvé, on la crée
                        {
                            r = new Region(Long.valueOf(cellules[posIdRegion]),
                                    cellules[posNomRegion],
                                    false,
                                    cellules[posDossierIdRegion]);

                            //On sauvegarde
                            regionCtrl.create(r);
                        } else {

                            //On met à jour
                            r.setNom(cellules[posNomRegion]);
                            r.setDossierId(cellules[posDossierIdRegion]);

                            regionCtrl.update(r);

                            if(r.isEstInstalle())
                                listeRegions.add(r);
                        }
                    }
                }
                i++;
            }

            return listeRegions;
        } catch (FileNotFoundException e) {
            Log.e("Import Régions", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Régions", "Problème d'entrée/sortie");
        }
        return null;
    }

    public static void updateDataGares(Context contexte, SQLiteDatabase bdd, int since, int to, String ville)
    {
        String name = ville + "/" + "Gares.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        GareCtrl gareCtrl = new GareCtrl(bdd);

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdGare = -1, posNomGare = -1, posExploitantGare = -1;
            int posLatitudeGare = -1, posLongitudeGare = -1;
            int posCouleur = -1, posCouleurEvo = -1;
            int posVCreation = -1, posVMaj = -1, posVSupprime = -1;

            while ((line = br.readLine()) != null)
            {
                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idExterne"))
                            posIdGare = j;
                        else if(c.equalsIgnoreCase("nom"))
                            posNomGare = j;
                        else if(c.equalsIgnoreCase("exploitant"))
                            posExploitantGare = j;
                        else if(c.equalsIgnoreCase("latitude"))
                            posLatitudeGare = j;
                        else if(c.equalsIgnoreCase("longitude"))
                            posLongitudeGare = j;
                        else if(c.equalsIgnoreCase("couleur"))
                            posCouleur = j;
                        else if(c.equalsIgnoreCase("couleurEvolution"))
                            posCouleurEvo = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        else if(c.equalsIgnoreCase("vSuppression"))
                            posVSupprime = j;
                        j++;
                    }
                } else {
                    //On regarde la date de création
                    int vCreation = Integer.valueOf(cellules[posVCreation]);
                    int vMaj = Integer.valueOf(cellules[posVMaj]);
                    int vSupprime = Integer.valueOf(cellules[posVSupprime]);

                    //Infos gare
                    if(since < vCreation && (to == -1 || to >= vCreation))
                    {
                        //Nouvelle donnée
                        //Données de la gare
                        Gare g = new Gare(-1, cellules[posIdGare], cellules[posNomGare],
                                Double.valueOf(cellules[posLongitudeGare]),
                                Double.valueOf(cellules[posLatitudeGare]),
                                cellules[posExploitantGare], 0,
                                Integer.valueOf(cellules[posCouleur]),
                                Integer.valueOf(cellules[posCouleurEvo]), 0, null, null);

                        //On sauvegarde
                        gareCtrl.create(g);
                    } else if(since < vMaj && to >= vMaj)
                    {
                        //On va récupérer la gare
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        //On la met à jour
                        g.setNom(cellules[posNomGare]);
                        g.setLongitude(Double.valueOf(cellules[posLongitudeGare]));
                        g.setLatitude(Double.valueOf(cellules[posLatitudeGare]));
                        g.setExploitant(cellules[posExploitantGare]);
                        g.setCouleur(Integer.valueOf(cellules[posCouleur]));
                        g.setCouleurEvo(Integer.valueOf(cellules[posCouleurEvo]));
                        gareCtrl.update(g);
                    } else if(since < vSupprime && to >= vSupprime)
                    {
                        //On va récupérer la gare
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        //Et on supprime
                        gareCtrl.delete(g.getId());
                    }
                }
                i++;
            }
        } catch (FileNotFoundException e) {
            Log.e("Import Gares", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Gares", "Problème d'entrée/sortie");
        }
    }

    public static void updateDataLignes(Context contexte, SQLiteDatabase bdd, int since, int to, long idRegion, String ville)
    {
        String name = ville + "/" + "Lignes.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        LigneCtrl ligneCtrl = new LigneCtrl(bdd);

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdLigne = -1, posNomLigne = -1, posTypeLigne = -1, posOrdreLigne = -1;
            int posCouleurLigne = -1;
            int posVCreation = -1, posVMaj = -1, posVSupprime = -1;

            while ((line = br.readLine()) != null)
            {
                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idExterne"))
                            posIdLigne = j;
                        else if(c.equalsIgnoreCase("nom"))
                            posNomLigne = j;
                        else if(c.equalsIgnoreCase("type"))
                            posTypeLigne = j;
                        else if(c.equalsIgnoreCase("ordre"))
                            posOrdreLigne = j;
                        else if(c.equalsIgnoreCase("couleur"))
                            posCouleurLigne = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        else if(c.equalsIgnoreCase("vSuppression"))
                            posVSupprime = j;
                        j++;
                    }
                } else {
                    //On regarde la date de création
                    int vCreation = Integer.valueOf(cellules[posVCreation]);
                    int vMaj = Integer.valueOf(cellules[posVMaj]);
                    int vSupprime = Integer.valueOf(cellules[posVSupprime]);

                    //Infos gare
                    if(since < vCreation && (to == -1 || to >= vCreation))
                    {
                        //Nouvelle donnée
                        //Données de la ligne
                        Ligne l = new Ligne(-1, cellules[posIdLigne], cellules[posNomLigne], cellules[posTypeLigne],
                                Integer.valueOf(cellules[posOrdreLigne]),
                                cellules[posCouleurLigne], idRegion);

                        //On sauvegarde
                        ligneCtrl.create(l);
                    } else if(since < vMaj && to >= vMaj)
                    {
                        //On va récupérer la ligne
                        Ligne l = ligneCtrl.get(cellules[posIdLigne]);

                        //Exception : GL
                        if(l == null && cellules[posIdLigne].equals("GL"))
                            l = ligneCtrl.get("");

                        //On la met à jour
                        l.setNom(cellules[posNomLigne]);
                        l.setType(cellules[posTypeLigne]);
                        l.setOrdre(Integer.valueOf(cellules[posOrdreLigne]));
                        l.setCouleur(cellules[posCouleurLigne]);
                        ligneCtrl.update(l);
                        updateNbGaresDansLigne(bdd, l);
                    } else if(since < vSupprime && to >= vSupprime)
                    {
                        //On va récupérer la gare
                        Ligne l = ligneCtrl.get(cellules[posIdLigne]);
                        //Et on supprime
                        ligneCtrl.delete(l.getId());
                    }
                }
                i++;
            }
        } catch (FileNotFoundException e) {
            Log.e("Import Lignes", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Lignes", "Problème d'entrée/sortie");
        }
    }

    public static void updateDataGareDansLigne(Context contexte, SQLiteDatabase bdd, int since, int to, long idRegion, String ville)
    {
        String name = ville + "/" + "GaresDansLigne.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        GareCtrl gareCtrl = new GareCtrl(bdd);
        LigneCtrl ligneCtrl = new LigneCtrl(bdd);
        GareDansLigneCtrl gdlCtrl = new GareDansLigneCtrl(bdd);

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdGare = -1, posIdLigne = -1, posOrdre = -1, posPDLFond = -1, posPDLPoint = -1;
            int posVCreation = -1, posVMaj = -1, posVSupprime = -1;

            while ((line = br.readLine()) != null)
            {
                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idLigne"))
                            posIdLigne = j;
                        else if(c.equalsIgnoreCase("idGare"))
                            posIdGare = j;
                        else if(c.equalsIgnoreCase("ordre"))
                            posOrdre = j;
                        else if(c.equalsIgnoreCase("PDLFond"))
                            posPDLFond = j;
                        else if(c.equalsIgnoreCase("PDLPoint"))
                            posPDLPoint = j;
                        else if(c.equalsIgnoreCase("vCreation"))
                            posVCreation = j;
                        else if(c.equalsIgnoreCase("vMaj"))
                            posVMaj = j;
                        else if(c.equalsIgnoreCase("vSuppression"))
                            posVSupprime = j;
                        j++;
                    }
                } else {
                    //On regarde la date de création
                    int vCreation = Integer.valueOf(cellules[posVCreation]);
                    int vMaj = Integer.valueOf(cellules[posVMaj]);
                    int vSupprime = Integer.valueOf(cellules[posVSupprime]);

                    //Infos gare
                    if(since < vCreation && (to == -1 || to >= vCreation))
                    {
                        //Nouvelle donnée
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        Ligne l = ligneCtrl.get(cellules[posIdLigne], contexte);
                        int ordre = Integer.parseInt(cellules[posOrdre]);
                        int pdlFond = Integer.parseInt(cellules[posPDLFond]);
                        int pdlPoint = Integer.parseInt(cellules[posPDLPoint]);

                        //On sauvegarde
                        if(g != null && l != null)
                        {
                            gdlCtrl.create(g, l, ordre, pdlFond, pdlPoint, idRegion);
                            updateNbGaresDansLigne(bdd, l);
                        }
                    } else if(since < vMaj && to >= vMaj)
                    {
                        //On va récupérer la ligne
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        Ligne l = ligneCtrl.get(cellules[posIdLigne]);
                        int ordre = Integer.parseInt(cellules[posOrdre]);
                        int pdlFond = Integer.parseInt(cellules[posPDLFond]);
                        int pdlPoint = Integer.parseInt(cellules[posPDLPoint]);

                        gdlCtrl.update(g, l, ordre, pdlFond, pdlPoint);
                    } else if(since < vSupprime && to >= vSupprime)
                    {
                        Gare g = gareCtrl.get(cellules[posIdGare]);
                        Ligne l = ligneCtrl.get(cellules[posIdLigne]);

                        //Et on supprime
                        if(g != null && l != null) //Si c'est null alors la donnée est déjà supprimée
                            gdlCtrl.delete(g, l);

                        if(l != null)
                            updateNbGaresDansLigne(bdd, l);
                    }
                }
                i++;
            }
        } catch (FileNotFoundException e) {
            Log.e("Import GaresDansLigne", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import GaresDansLigne", "Problème d'entrée/sortie");
        }
    }

    /**
     * Fonction permettant d'insérer une ligne si elle n'a pas été trouvée
     * @param contexte Contexte de l'activité
     * @param bdd Connexion à la base de données
     * @param idStif identifiant externe
     */
    public static Ligne insertDataUneLigne(Context contexte, SQLiteDatabase bdd, String idStif)
    {
        String ville = "Paris";
        int idRegion = 1; //Provisoire
        String name = ville + "/" + "Lignes.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ";";
        LigneCtrl ligneCtrl = new LigneCtrl(bdd);

        try {
            br = new BufferedReader(new InputStreamReader(contexte.getAssets().open(name)));
            int i = 0;
            int posIdLigne = -1, posNomLigne = -1, posTypeLigne = -1, posOrdreLigne = -1;
            int posCouleurLigne = -1;

            while ((line = br.readLine()) != null)
            {
                // use comma as separator
                String[] cellules = line.split(cvsSplitBy);

                if(i == 0) //Première ligne
                {
                    int j = 0;
                    for(String c : cellules)
                    {
                        if(c.equalsIgnoreCase("idExterne"))
                            posIdLigne = j;
                        else if(c.equalsIgnoreCase("nom"))
                            posNomLigne = j;
                        else if(c.equalsIgnoreCase("type"))
                            posTypeLigne = j;
                        else if(c.equalsIgnoreCase("ordre"))
                            posOrdreLigne = j;
                        else if(c.equalsIgnoreCase("couleur"))
                            posCouleurLigne = j;
                        j++;
                    }
                } else {
                    String idLigneLigne = cellules[posIdLigne];

                    if(idStif.equals(idLigneLigne))
                    {
                        //Données de la ligne
                        Ligne l = new Ligne(-1, cellules[posIdLigne], cellules[posNomLigne], cellules[posTypeLigne],
                                Integer.valueOf(cellules[posOrdreLigne]),
                                cellules[posCouleurLigne], idRegion);

                        //On sauvegarde
                        return ligneCtrl.create(l);
                    }
                }
                i++;
            }
        } catch (FileNotFoundException e) {
            Log.e("Import Lignes", "Fichier non trouvé");
        } catch (IOException e) {
            Log.e("Import Lignes", "Problème d'entrée/sortie");
        }

        return null;
    }
}
