import os
import tools


class RegionManager:
    def __init__(self, config, dossierId, region):
        self.regionsFichier = {}
        self.metadonnes = 141
        self.config = config
        self.dossierId = dossierId
        self.regionName = region
        self.initFichier()

    def initFichier(self):
        regionGare = self.dossierId
        if not regionGare in self.regionsFichier.keys():  # Pas encore en cache
            # On regarde si le dossier existe ou pas
            regionPath = '../app/src/main/assets/'+regionGare+'/'
            if not os.path.isdir(regionPath):
                # On crée le dossier
                os.mkdir(regionPath)
                # On crée les fichiers
                self.regionsFichier[regionGare] = {
                    'gares': open(regionPath+'Gares.csv', 'a+'),
                    'lignes': open(regionPath+'Lignes.csv', 'a'),
                    'gdl': open(regionPath+'GaresDansLigne.csv', 'a'),
                    'idGares': [],
                    'idLignes': [],
                    'garesDansLigneAssociation': {}
                }
                # Et on va leur mettre leur entêtes
                self.regionsFichier[regionGare]['gares'].write(
                    "idExterne;nom;exploitant;latitude;longitude;couleur;couleurEvolution;vCreation;vMaj;vSuppression\n")
                self.regionsFichier[regionGare]['lignes'].write(
                    "idExterne;nom;type;ordre;couleur;vCreation;vMaj;vSuppression\n")
                self.regionsFichier[regionGare]['gdl'].write(
                    "idGare;idLigne;ordre;PDLFond;PDLPoint;vCreation;vMaj;vSuppression\n")
            else:
                # On récupère les trois fichiers
                self.regionsFichier[regionGare] = {
                    'gares': open(regionPath+'Gares.csv', 'r+'),
                    'lignes': open(regionPath+'Lignes.csv', 'r+'),
                    'gdl': open(regionPath+'GaresDansLigne.csv', 'a'),
                    'garesDansLigneAssociation': {}
                }
                # Et on génère le tableau idGares et idLignes
                self.regionsFichier[regionGare]['idGares'] = self.__getAllIdExternes(
                    self.regionsFichier[regionGare]['gares'])
                self.regionsFichier[regionGare]['idLignes'] = self.__getAllIdExternes(
                    self.regionsFichier[regionGare]['lignes'])

            if self.config['substitue'] != None and 'dossierId' in self.config['substitue'] and regionGare in self.config['substitue']['dossierId'].keys():
                regionGareAlt = self.config['substitue']['dossierId'][regionGare]
            else:
                regionGareAlt = regionGare

            # Si ligne unique, on la crée a ce moment
            if not self.config['lignes']:
                idLigneUnique = self.config['prefixIdExterne'] + \
                    "_"+regionGareAlt+"_U"
                if not idLigneUnique in self.regionsFichier[regionGare]['idLignes']:
                    self.regionsFichier[regionGare]['lignes'].write(
                        idLigneUnique + ";Ligne Unique;"+self.config['lignesType']+";0;#000000;"+str(self.metadonnes)+";0;0\n")
                    self.regionsFichier[regionGareAlt]['idLignes'].append(
                        idLigneUnique)

            # On va préparer l'objet d'association Gare et Ligne
            for idLigne in self.regionsFichier[regionGareAlt]['idLignes']:
                self.regionsFichier[regionGareAlt]['garesDansLigneAssociation'][idLigne] = [
                ]

            # On rempli également le fichier des régions
            fRegions = open('../app/src/main/assets/Regions.csv', 'r+')
            dataRegions = self.__getIdRegions(fRegions)
            idRegions = dataRegions['idExternes']
            if not self.regionName in idRegions.keys():
                # Il nous faut l'id max (dernière région)
                idNewRegion = self.__nextIdRegion(fRegions)
                fRegions.write("\n"+str(idNewRegion)+";"+self.regionName +
                               ";"+regionGare+";"+str(self.metadonnes)+";0")
            else:
                numLigne = idRegions[self.regionName]
                lignes = dataRegions['lignes']
                dataLigne = self.__getDataLigneRegion(
                    lignes[numLigne], dataRegions['entetes'])
                lignes[numLigne] = str(dataLigne['id'])+";"+dataLigne['nom']+";"+dataLigne['dossierId'] + \
                    ";"+str(dataLigne['vCreation']) + \
                    ";"+str(self.metadonnes)+"\n"
                # On nettoie le fichier
                fRegions.seek(0, 0)
                fRegions.truncate()
                # Et on écrit
                fRegions.writelines(lignes)
            fRegions.close()

            # On récupère également les entêtes
            self.regionsFichier[regionGare]['gares'].seek(0, 0)
            self.regionsFichier[regionGare]['enteteGare'] = tools.getEntetes(
                self.regionsFichier[regionGare]['gares'].readline())
            # Et on remet le curseur à sa place
            self.regionsFichier[regionGare]['gares'].seek(0, 2)

    def getFichierRegion(self):
        return self.regionsFichier[self.dossierId]

    def addGare(self, gare):
        # On va regarder la région
        regionGare = tools.getValue(
            'dossierId', gare, self.config['default_value'])
        gare['region'] = regionGare
        # A-t-elle une valeur normalisée ?
        if self.config['substitue'] != None and 'dossierId' in self.config['substitue'] and regionGare in self.config['substitue']['dossierId'].keys():
            regionGare = self.config['substitue']['dossierId'][regionGare]
        gare['dossierId'] = regionGare

        if len(regionGare) > 0 and (self.config['ignore_values'] == None or not regionGare in self.config['ignore_values']['dossierId']):
            # On ajoute le prefixe à l'Id
            gare['idExterne'] = self.config['prefixIdExterne']+gare['idExterne']

            if self.config['substitue'] != None and 'idExterne' in self.config['substitue'] and gare['idExterne'] in self.config['substitue']['idExterne']:
                gare['idExterne'] = str(
                    self.config['substitue']['idExterne'][gare['idExterne']])
            # On récupère le fichier de la région
            fRegionInfos = self.getFichierRegion()

            # On ne traite que les nouvelles gares
            if not gare['idExterne'] in fRegionInfos['idGares']:
                print('nouvelle gare : ' + gare['nom'])
                fRegionInfos['idGares'].append(gare['idExterne'])
                gare['exploitant'] = tools.getValue(
                    'exploitant', gare, self.config['default_value'])
                # On va récupérer la couleur et la couleur évolution
                gare['couleur'] = tools.getCouleur()
                gare['couleurEvolution'] = tools.getCouleurEvolution(
                    gare['nom'], gare['couleur'])
                # Si on a des coordonnees, on va les traiter
                tools.getCoordonnees(gare)
                # On rempli le fichier Gares
                fRegionInfos['gares'].write(gare['idExterne']+';'+tools.nettoyerTexte(gare['nom'])+';'+gare['exploitant']+';'+gare['latitude'] +
                                            ';'+gare['longitude']+';'+str(gare['couleur'])+';'+str(gare['couleurEvolution'])+';'+str(self.metadonnes)+';0;0'+"\n")

                lignesGare = []
                if not self.config['lignes']:  # Ligne unique
                    lignesGare.append(
                        {'id': self.config['prefixIdExterne']+"_"+regionGare+"_U", 'nom': "Ligne Unique"})
                else:
                    lignesGare = gare['lignes']

                # On regarde pour la ligne maintenant
                for infoLigne in lignesGare:
                    idLigne = self.__nettoyerId(infoLigne['id'])
                    if not idLigne in fRegionInfos['idLignes']:
                        fRegionInfos['idLignes'].append(idLigne)
                        fRegionInfos['garesDansLigneAssociation'][idLigne] = []
                        # On va créer la ligne
                        fRegionInfos['lignes'].write(
                            idLigne + ";"+infoLigne['nom']+";"+self.config['lignesType']+";0;#000000;"+str(self.metadonnes)+";0;0\n")

                    if not gare['idExterne'] in fRegionInfos['garesDansLigneAssociation'][idLigne]:
                        fRegionInfos['garesDansLigneAssociation'][idLigne].append(
                            gare['idExterne'])

    def save(self):
        # Étape 4 : Post traitement
        for _, regionFichier in self.regionsFichier.items():
            for idLigne, listeGares in regionFichier['garesDansLigneAssociation'].items():
                # Étape 4b : On rempli le fichier GaresDansLigne
                for idGare in listeGares:
                    regionFichier['gdl'].write(
                        idGare+";"+idLigne+";0;0;0;"+str(self.metadonnes)+";0;0\n")

            # Étape 4c : On ferme les fichiers
            regionFichier['gares'].close()
            regionFichier['lignes'].close()
            regionFichier['gdl'].close()

    def __nextIdRegion(self, fRegions):
        idMaxRegion = 0
        i = 0
        posIdRegion = 0
        fRegions.seek(0)
        for ligne in fRegions.readlines():
            contenu = ligne.strip().split(';')
            if i == 0:  # entête
                j = 0
                for c in contenu:
                    if c == 'id':
                        posIdRegion = j
                        break
                    j += 1
            else:
                if idMaxRegion < int(contenu[posIdRegion]):
                    idMaxRegion = int(contenu[posIdRegion])
            i += 1
        return idMaxRegion + 1

    def __getDataLigneRegion(self, ligne, entetes):
        dataContenu = {}
        contenu = ligne.strip().split(';')
        i = 0
        for c in contenu:
            dataContenu[entetes[i]] = c
            i += 1
        return dataContenu

    def __getIdRegions(self, fichier):
        idExterneKey = 'dossierId'
        idExternes = {}
        entetes = {}
        i = 0
        posIdExterne = 0
        # On doit récupérer toutes les lignes pour pouvoir les écrire ensuite
        lignes = fichier.readlines()
        for ligne in lignes:
            contenu = ligne.strip().split(';')
            if i == 0:  # entête
                j = 0
                for c in contenu:
                    if c == idExterneKey:
                        posIdExterne = j
                    entetes[j] = c
                    j += 1
            else:
                idExternes[contenu[posIdExterne]] = i
            i += 1
        return {'idExternes': idExternes, 'lignes': lignes, 'entetes': entetes}

    def __getAllIdExternes(self, fichier):
        idExternes = []
        idExterneKey = 'idExterne'
        i = 0
        posId = 0
        for ligne in fichier.readlines():
            contenu = ligne.strip().split(';')
            if i == 0:  # entête
                j = 0
                for c in contenu:
                    if c == idExterneKey:
                        posId = j
                        break
                    j += 1
            else:
                idExternes.append(contenu[posId])
            i += 1
        return idExternes

    def __nettoyerId(self, idExterne):
        return idExterne.replace('&', '').replace(' ', '')
