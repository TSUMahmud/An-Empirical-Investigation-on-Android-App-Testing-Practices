import tools
import zipfile
import csv
import os
from regionManager import RegionManager

class gtfsParser:
  def __init__(self, config):
    self.config = config

  def getLigneType(self, ligneType):
    if ligneType == 0:
      return 'Tramway'
    elif ligneType == 1:
      return 'Metro'
    elif ligneType == 2:
      return 'Train'
    elif ligneType == 7:
      return 'Funiculaire'

  def parse(self):
    #Étape 1 : On commence par télécharger l'archive
    lien = self.config['link_download']
    tmpFileName = 'gtfs.zip'
    tools.telechargerFichier(lien, tmpFileName) #Désactivé pour les tests

    #Étape 2 : On dezippe
    tmpDirName = 'gtfs/'
    zip_ref = zipfile.ZipFile(tmpFileName, 'r') #Désactivé pour les tests
    zip_ref.extractall(tmpDirName) #Désactivé pour les tests
    zip_ref.close() #Désactivé pour les tests

    #Étape 3 : On commence par les lignes
    print('Récupération des lignes')
    cheminFichier = tmpDirName + "routes.txt"
    routesFile = open(cheminFichier, 'r+', encoding='utf-8-sig')

    #Étape 3a : On récupère ses entêtes
    lignesFichier = csv.reader(routesFile)
    separateur = ','
    titre = separateur.join(lignesFichier.__next__())
    posCol = tools.getEntetes(titre, None, separateur)
    print('Liste des entêtes : ')
    print(posCol)

    #Étape 3b : On regarde les lignes qui nous intéresse
    lignes = {}
    region = self.config['default_value']['dossierId']
    for contenu in lignesFichier:
      row = {}
      for c,i in posCol.items():
        row[c] = tools.nettoyerTexte(contenu[i])
      
      #On ne gare que les types Tram (0), Métro (1), Trains (2) et Funiculaires (7)
      routeType = int(row['route_type'])
      if routeType == 0 or routeType == 1 or routeType == 2 or routeType == 7:
        idLigne = row['route_id']
        if 'route_color' in row.keys():
          couleur = row['route_color']
        else:
          couleur = '#000000'
        lignes[idLigne] = {'nom': row['route_short_name'], 'couleur': couleur, 'trips': [], 'stops': []}
        #Et on la créer dans le fichier
        idLigneExterne = "Ligne_"+self.config['prefixIdExterne']+idLigne

        regionMgt = RegionManager(self.config, region, region)
        regionFichier = regionMgt.getFichierRegion()
        if not idLigneExterne in regionFichier['idLignes']:
          regionFichier['idLignes'].append(idLigneExterne)
          regionFichier['garesDansLigneAssociation'][idLigneExterne] = []
          #On va créer la ligne
          regionFichier['lignes'].write(idLigneExterne+ ";"+lignes[idLigne]['nom']+";"+self.getLigneType(routeType)+";0;"+lignes[idLigne]['couleur']+";"+str(tools.metadonnes)+";0;0\n")
    routesFile.close()
    print('Récupération des lignes terminées')

    #Étape 4 : On passe aux parcours
    print('Récupération des trips')
    cheminFichier = tmpDirName + "trips.txt"
    tripsFile = open(cheminFichier, 'r+', encoding='utf-8-sig')
    
    #Étape 4a : On récupère ses entêtes
    titre = tripsFile.readline()
    separateur = ','
    posCol = tools.getEntetes(titre, None, separateur)
    print('Liste des entêtes : ')
    print(posCol)

    #Étape 4b : On regarde les lignes qui nous intéresse
    for ligne in tripsFile.readlines():
      contenu = ligne.strip().split(separateur)
      row = {}
      for c,i in posCol.items():
        row[c] = tools.nettoyerTexte(contenu[i])

      #On regarde si le trip nous intéresse
      if row['route_id'] in list(lignes.keys()):
        lignes[row['route_id']]['trips'].append(row['trip_id'])

    tripsFile.close()
    print('Récupération des trips terminé')

    #Étape 5 : Le plus dur maintenant, les horaires !
    stopsId = []
    print('Récupération des stop_times')
    cheminFichier = tmpDirName + "stop_times.txt"
    stopTimesFile = open(cheminFichier, 'r+', encoding='utf-8-sig')
    
    #Étape 5a : On récupère ses entêtes
    titre = stopTimesFile.readline()
    separateur = ','
    posCol = tools.getEntetes(titre, None, separateur)
    print('Liste des entêtes : ')
    print(posCol)

    #Étape 5b : On regarde les arrêts qui nous intéresse
    for ligneBrut in stopTimesFile.readlines():
      contenu = ligneBrut.strip().split(separateur)
      row = {}
      for c,i in posCol.items():
        row[c] = tools.nettoyerTexte(contenu[i])

      #On regarde si l'horaire fait parti d'un de nos trips
      for ligneId in lignes:
        ligne = lignes[ligneId]
        if not row['trip_id'] in ligne['trips']:
          continue
        
        #On a un arrêt ! On l'ajoute à la liste des arrêts
        ligne['stops'].append(row['stop_id'])
        stopsId.append(row['stop_id'])

    stopTimesFile.close()
    print('Récupération des stop_times terminé')

    #Étape 6 : On fini par les arrêts, c'est l'heure du recoupement !
    print('Récupération des arrêts')
    cheminFichier = tmpDirName + "stops.txt"
    stopsFile = open(cheminFichier, 'r+', encoding='utf-8-sig')
    
    #Étape 6a : On récupère ses entêtes
    lignesFichier = csv.reader(stopsFile)
    separateur = ','
    titre = separateur.join(lignesFichier.__next__())
    #On va faire la correspondance entre le format GTFS et notre format
    header = {'stop_id': 'idExterne', 'stop_name': 'nom', 'stop_lat': 'latitude', 'stop_lon': 'longitude', 'parent_station': 'parent_station', 'location_type': 'location_type'}
    posCol = tools.getEntetes(titre, header, separateur)
    print('Liste des entêtes : ')
    print(posCol)

    #Étape 6b : On regarde les arrêts qui nous intéresse
    stopArea = {}
    stopPoint = {}
    for contenu in lignesFichier:
      gare = {}
      for c,i in posCol.items():
        gare[c] = tools.nettoyerTexte(contenu[i])

      #C'est gagné, on a un arrêt ! Soit un area (type = 1), soit un stopPoint intéressant
      if len(gare['location_type']) > 0 and int(gare['location_type']) == 1:
        stopArea[gare['idExterne']] = gare
      elif gare['idExterne'] in stopsId:
        if not gare['parent_station'] in stopPoint.keys():
          stopPoint[gare['parent_station']] = []

        stopPoint[gare['parent_station']].append(gare['idExterne'])
    stopTimesFile.close()

    #Étape 6c: Maintenant, il n'y a plus qu'à s'occuper des arrêts
    for gareId, gare in stopArea.items():
      #On regarde si l'arrêt est référencé dans une ligne
      if not gareId in stopPoint.keys():
        continue
      #On va regarder la région
      regionGare = tools.getValue('dossierId', gare, self.config['default_value'])
      gare['region'] = regionGare
      #A-t-elle une valeur normalisée ?
      if self.config['substitue'] != None and 'dossierId' in self.config['substitue'] and regionGare in self.config['substitue']['dossierId'].keys():
        regionGare = self.config['substitue']['dossierId'][regionGare]
      gare['dossierId'] = regionGare
          
      if len(regionGare) > 0 and (self.config['ignore_values'] == None or not regionGare in self.config['ignore_values']['dossierId']):
        #On ajoute le prefixe à l'Id
        gare['idExterne'] = self.config['prefixIdExterne']+gare['idExterne']
        
        if self.config['substitue'] != None and 'idExterne' in self.config['substitue'] and gare['idExterne'] in self.config['substitue']['idExterne']:
          gare['idExterne'] = str(self.config['substitue']['idExterne'][gare['idExterne']])
        #On récupère le fichier de la région
        regionMgt = RegionManager(self.config, gare['dossierId'], gare['region'])
        fRegionInfos = regionMgt.getFichierRegion()
        
        #On ne traite que les nouvelles gares
        if not gare['idExterne'] in fRegionInfos['idGares']:
          print('nouvelle gare : ' + gare['nom'])
          fRegionInfos['idGares'].append(gare['idExterne'])
          gare['exploitant'] = tools.getValue('exploitant', gare, self.config['default_value'])
          #On va récupérer la couleur et la couleur évolution
          gare['couleur'] = tools.getCouleur()
          gare['couleurEvolution'] = tools.getCouleurEvolution(gare['nom'], gare['couleur'])
          #Si on a des coordonnees, on va les traiter
          tools.getCoordonnees(gare)
          #On rempli le fichier Gares
          fRegionInfos['gares'].write(gare['idExterne']+';'+tools.nettoyerTexte(gare['nom'])+';'+gare['exploitant']+';'+gare['latitude']+';'+gare['longitude']+';'+str(gare['couleur'])+';'+str(gare['couleurEvolution'])+';'+str(tools.metadonnes)+';0;0'+"\n")
          
        lignesGare = []
        if not self.config['lignes']: #Ligne unique
          lignesGare.append(self.config['prefixIdExterne']+"_"+regionGare+"_U")
        else:
          for stopPointId in stopPoint[gareId]:
            for ligneId in lignes:
              ligne = lignes[ligneId]
              if stopPointId in ligne['stops']:
                lignesGare.append("Ligne_"+self.config['prefixIdExterne']+ligneId)
        
        #On regarde pour la ligne maintenant
        for idLigneGare in lignesGare:
          if not idLigneGare in tools.regionsFichier[regionGare]['idLignes']:
            tools.regionsFichier[regionGare]['idLignes'].append(idLigneGare)
            tools.regionsFichier[regionGare]['garesDansLigneAssociation'][idLigneGare] = []
            #On va créer la ligne
            tools.regionsFichier[regionGare]['lignes'].write(idLigneGare+ ";Ligne "+gare['ligne']+";"+self.config['lignesType']+";0;#000000;"+str(tools.metadonnes)+";0;0\n")
            
          if not gare['idExterne'] in tools.regionsFichier[regionGare]['garesDansLigneAssociation'][idLigneGare]:
            tools.regionsFichier[regionGare]['garesDansLigneAssociation'][idLigneGare].append(gare['idExterne'])

    print('Récupération des stop_times terminé')

    #Étape 7 : Post traitement
    for _,regionFichier in tools.regionsFichier.items():
      for idLigne,listeGares in regionFichier['garesDansLigneAssociation'].items():
        #Étape 7a : On rempli le fichier GaresDansLigne
        for idGare in listeGares:
          regionFichier['gdl'].write(idGare+";"+idLigne+";0;0;0;"+str(tools.metadonnes)+";0;0\n")
        
      #Étape 7b : On ferme les fichiers
      regionFichier['gares'].close()
      regionFichier['lignes'].close()
      regionFichier['gdl'].close()

    #return None #Juste pour les tests
    #Étape 8 : On efface les fichiers temporaires
    os.remove(tmpFileName)
    for root, _, files in os.walk(tmpDirName, topdown=False):
      for name in files:
          os.remove(os.path.join(root, name))
    os.rmdir(tmpDirName)