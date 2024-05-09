#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
from junit_xml import TestSuite, TestCase
import time

racineFichiers = '../../app/src/main/assets/'


def getPosColonne(fichier, colonne):
    titre = fichier.readline()
    champ = titre.strip().split(';')
    pos = {}
    i = 0
    for c in champ:
        if c in colonnes:
            pos[c] = i
        i += 1
    return pos


# On commence par récupérer le fichier Regions.csv
fRegions = open(racineFichiers + 'Regions.csv', 'r+')

# Entêtes
titre = fRegions.readline()
champ = titre.strip().split(';')
# nom;dossierId;vCreation;vMaj
posNom = -1
posDossier = -1
posVCreation = -1
posVMaj = -1

i = 0
for c in champ:
    if c == "nom":
        posNom = i
    elif c == "dossierId":
        posDossier = i
    elif c == "vCreation":
        posVCreation = i
    elif c == "vMaj":
        posVMaj = i
    i += 1

listeRegions = {}
for ligne in fRegions.readlines():
    contenu = ligne.strip().split(';')
    region = {'nom': contenu[posNom], 'vCreation': int(
        contenu[posVCreation]), 'vMaj': int(contenu[posVMaj])}
    listeRegions[contenu[posDossier]] = region

# print(listeRegions)

# Maintenant, on va regarder les gares
donneesGares = {}
donneesGaresCoherenceProblemes = {}
donneesGaresProblemes = []
donneesGdLProblemes = []
donneesMetaProbleme = []
testsSuites = []
for dossierId, region in listeRegions.items():
    testCaseRegion = []
    #print('Région ' + dossierId)
    fGares = open(racineFichiers + dossierId + '/Gares.csv', 'r+')
    colonnes = ['idExterne', 'nom', 'exploitant', 'latitude', 'longitude',
                'couleur', 'couleurEvolution', 'vCreation', 'vMaj', 'vSuppression']
    minVCreation = -1
    maxVMaj = 0

    # Entêtes
    pos = getPosColonne(fGares, colonnes)

    # Donnees
    listeGareRegion = []
    for ligne in fGares.readlines():
        contenu = ligne.strip().split(';')
        gare = {}
        for c, i in pos.items():
            if c != 'idExterne':
                gare[c] = contenu[i]

        idExterne = contenu[pos['idExterne']]
        tc = TestCase("Métadonnées de la gare " + idExterne)

        temps = time.process_time()
        # On vérifie qu'il y a bien le bon nombre de colonnes
        if len(gare) + 1 != len(colonnes):  # Plus un car on n'a pas inséré idExterne
            tc.add_failure_info(
                "Il manque des colonnes dans le fichier Gares.csv pour cette gare !")
        else:
            try:
                longitude = float(gare['longitude'])
                latitude = float(gare['latitude'])

                vCreation = int(gare['vCreation'])
                vMaj = int(gare['vMaj'])
                vSuppression = int(gare['vSuppression'])
                if vCreation != 0 and (minVCreation == -1 or vCreation < minVCreation):
                    minVCreation = vCreation

                if vMaj != 0 and vMaj > maxVMaj:
                    maxVMaj = vMaj
                if vSuppression != 0 and vSuppression > maxVMaj:
                    maxVMaj = vSuppression
                if vSuppression != 0 and (vCreation > 0 or vMaj > 0):
                    tc.add_failure_info(
                        "Une donnée supprimée ne peut avoir une version de création ou de mise à jour")
            except:
                tc.add_failure_info("Problème de format dans les données.")

        tc.timestamp = round(time.process_time() - temps, 6)
        testCaseRegion.append(tc)

        # On met dans la liste
        listeGareRegion.append(idExterne)
        tc = TestCase('Gare ' + idExterne)
        temps = time.process_time()
        if idExterne in donneesGares.keys():
            #print('Gare déjà existante : ' + idExterne)
            gareStocke = donneesGares[idExterne]
            identiques = True
            for k, val in gareStocke.items():
                if k != 'region' and k != 'vCreation' and val != gare[k]:
                    identiques = False
            if identiques:
                gareStocke['region'].append(dossierId)
            else:
                gare['region'] = dossierId
                tc.add_failure_info(
                    "Problème de cohérence dans la région : "+dossierId)
                if idExterne in donneesGaresCoherenceProblemes.keys():
                    donneesGaresCoherenceProblemes[idExterne].append(gare)
                else:
                    donneesGaresCoherenceProblemes[idExterne] = [gare]
        elif gare['latitude'] == '' or gare['longitude'] == '':  # Information obligatoire !
            gare['region'] = dossierId
            gare['idExterne'] = idExterne
            donneesGaresProblemes.append(gare)
            tc.add_failure_info("Absence des informations de position")
        else:
            gare['region'] = [dossierId]
            donneesGares[idExterne] = gare
        tc.timestamp = round(time.process_time() - temps, 6)
        testCaseRegion.append(tc)

    # On s'occupe maintenant des lignes
    fLignes = open(racineFichiers + dossierId + '/Lignes.csv', 'r+')
    colonnes = ['idExterne', 'nom', 'type', 'ordre',
                'couleur', 'vCreation', 'vMaj', 'vSuppression']

    # Entêtes
    pos = getPosColonne(fLignes, colonnes)

    # Données
    listeLigneRegion = []
    for ligne in fLignes.readlines():
        contenu = ligne.strip().split(';')
        ligne = {}
        for c, i in pos.items():
            if c != 'idExterne':
                ligne[c] = contenu[i]

        idExterne = contenu[pos['idExterne']]
        tc = TestCase("Métadonnées de la ligne " + idExterne)
        temps = time.process_time()
        vCreation = int(ligne['vCreation'])
        vMaj = int(ligne['vMaj'])
        vSuppression = int(ligne['vSuppression'])
        if vCreation != 0 and (minVCreation == -1 or vCreation < minVCreation):
            minVCreation = vCreation

        if vMaj != 0 and vMaj > maxVMaj:
            maxVMaj = vMaj
        if vSuppression != 0 and vSuppression > maxVMaj:
            maxVMaj = vSuppression
        if vSuppression != 0 and (vCreation > 0 or vMaj > 0):
            tc.add_failure_info(
                "Une donnée supprimée ne peut avoir une version de création ou de mise à jour")
        tc.timestamp = round(time.process_time() - temps, 6)
        testCaseRegion.append(tc)

        # On met dans la ligne
        listeLigneRegion.append(idExterne)

    # On vérifie enfin les relations
    fGdL = open(racineFichiers + dossierId + '/GaresDansLigne.csv', 'r+')
    colonnes = ['idGare', 'idLigne', 'ordre', 'PDLFond',
                'PDLPoint', 'vCreation', 'vMaj', 'vSuppression']
    pos = getPosColonne(fGdL, colonnes)

    # Données
    for relation in fGdL.readlines():
        contenu = relation.strip().split(';')
        relation = {}
        for c, i in pos.items():
            relation[c] = contenu[i]

        temps = time.process_time()
        vCreation = int(relation['vCreation'])
        vMaj = int(relation['vMaj'])
        vSuppression = int(relation['vSuppression'])
        if vCreation != 0 and (minVCreation == -1 or vCreation < minVCreation):
            minVCreation = vCreation

        idLigne = relation['idLigne']
        idGare = relation['idGare']
        tc = TestCase("Métadonnées de la relation gare " +
                      idGare + " dans la ligne " + idLigne)
        if vMaj != 0 and vMaj > maxVMaj:
            maxVMaj = vMaj
        if vSuppression != 0 and vSuppression > maxVMaj:
            maxVMaj = vSuppression
        if vSuppression != 0 and (vCreation > 0 or vMaj > 0):
            tc.add_failure_info(
                "Une donnée supprimée ne peut avoir une version de création ou de mise à jour")
        tc.timestamp = round(time.process_time() - temps, 6)
        testCaseRegion.append(tc)

        # On vérifie que la gare et la ligne existe
        # Exception, si c'est une suppression seulement
        tc = TestCase("Gare " + idGare + " dans la ligne " + idLigne)
        temps = time.process_time()
        if vCreation != 0:
            if not idGare in listeGareRegion:
                # Problème
                donneesGdLProblemes.append(
                    {'region': dossierId, 'type': 'gare', 'id': idGare})
                tc.add_failure_info("Absence de la gare " +
                                    idGare + " dans la région " + dossierId)
            if not idLigne in listeLigneRegion:
                # Problème
                donneesGdLProblemes.append(
                    {'region': dossierId, 'type': 'ligne', 'id': idLigne})
                tc.add_failure_info("Absence de la ligne " +
                                    idLigne + " dans la région " + dossierId)
        tc.timestamp = round(time.process_time() - temps, 6)
        testCaseRegion.append(tc)

    # Et maintenant on compare les metadonnées
    tc = TestCase("Vesion de création de la région")
    temps = time.process_time()
    if region['vCreation'] > minVCreation:
        donneesMetaProbleme.append({'region': dossierId, 'valeur': 'vCreation',
                                    'attendu': minVCreation, 'obtenu': region['vCreation']})
        tc.add_failure_info("Attendu : " + str(minVCreation) +
                            ", obtenu : " + str(region['vCreation']))
    tc.timestamp = round(time.process_time() - temps, 6)
    testCaseRegion.append(tc)

    tc = TestCase("Vesion de mise à jour de la région")
    temps = time.process_time()
    if region['vMaj'] < maxVMaj:
        donneesMetaProbleme.append(
            {'region': dossierId, 'valeur': 'vMaj', 'attendu': maxVMaj, 'obtenu': region['vMaj']})
        tc.add_failure_info("Attendu : " + str(minVCreation) +
                            ", obtenu : " + str(region['vCreation']))
    tc.timestamp = round(time.process_time() - temps, 6)
    testCaseRegion.append(tc)

    # Et on ajoute le testSuite
    ts = TestSuite("Région " + dossierId, testCaseRegion)
    testsSuites.append(ts)

# Résultat
dossierFichier = 'rapport/'

# On génère le résultat pour Junit
if os.path.exists(dossierFichier) and os.path.exists(dossierFichier + 'rapport.xml'):
    os.remove(dossierFichier + 'rapport.xml')
elif not os.path.exists(dossierFichier):
    os.makedirs(dossierFichier)
with open(dossierFichier + 'rapport.xml', 'w') as f:
    TestSuite.to_file(f, testsSuites, prettyprint=False)

if len(donneesGaresCoherenceProblemes) + len(donneesGaresProblemes) + len(donneesGdLProblemes) + len(donneesMetaProbleme) == 0:
    if os.path.exists(dossierFichier) and os.path.exists(dossierFichier + 'rapport.txt'):
        os.remove(dossierFichier + 'rapport.txt')
    sys.exit(0)
else:  # Y'a des erreurs !
    if not os.path.exists(dossierFichier):
        os.makedirs(dossierFichier)
    fRapport = open(dossierFichier + 'rapport.txt', 'w')
    fRapport.write('Erreur dans les cohérences de données'+"\n\n")
    if len(donneesGaresCoherenceProblemes) + len(donneesGaresProblemes) > 0:
        fRapport.write('Problème dans les gares'+"\n")
        if len(donneesGaresCoherenceProblemes) > 0:
            for idExterne, gares in donneesGaresCoherenceProblemes.items():
                fRapport.write('- Gare : ' + idExterne+"\n")
                gareOriginel = donneesGares[idExterne]
                fRapport.write('  |— Région(s) : ' +
                               ', '.join(gareOriginel['region'])+"\n")
                for k, v in gareOriginel.items():
                    if k != 'region':
                        fRapport.write('    |- '+k+' : '+v+"\n")
                for gare in gares:
                    fRapport.write('  |— Région : ' + gare['region']+"\n")
                    for k, v in gare.items():
                        if k != 'region' and v != gareOriginel[k]:
                            fRapport.write('    |- '+k+' : '+v+"\n")
                fRapport.write("\n")

        if len(donneesGaresProblemes) > 0:
            for gare in donneesGaresProblemes:
                fRapport.write('- Gare : ' + gare['idExterne']+"\n")
                fRapport.write('  |— Nom : ' + gare['nom']+"\n")
                fRapport.write('  |— Région : ' + gare['region']+"\n")
                for k, v in gare.items():
                    if (k == 'latitude' or k == 'longitude') and v == '':
                        fRapport.write('    |- '+k+' est vide'+"\n")

        fRapport.write("\n")

    if len(donneesGdLProblemes) > 0:
        fRapport.write('Problème dans les relations Gares dans ligne'+"\n")
        for probleme in donneesGdLProblemes:
            fRapport.write('- Pour la région '+probleme['region']+', la '+probleme['type'] +
                           ' '+probleme['id']+' est mentionnée mais n\'existe pas'+"\n")
        fRapport.write("\n")
        fRapport.write("\n")

    if len(donneesMetaProbleme) > 0:
        fRapport.write('Problème dans les méta données'+"\n")
        for probleme in donneesMetaProbleme:
            fRapport.write('- Pour la région '+probleme['region']+', la valeur de '+probleme['valeur']+' est de '+str(
                probleme['obtenu'])+' alors qu\'elle devrait être de '+str(probleme['attendu'])+"\n")

    fRapport.close()
    sys.exit(1)
