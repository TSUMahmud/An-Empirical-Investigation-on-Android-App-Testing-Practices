import tools
import os
import csv
from regionManager import RegionManager
from regionManagerFactory import RegionManagerFactory


class csvParser:
    def __init__(self, config):
        self.config = config
        self.tmpFileName = "data.csv"

    def parse(self):
        # Étape 0 : Détermination du séparateur
        separator = ';'
        if 'separator' in list(self.config.keys()):
            separator = self.config["separator"]
        print("Séparateur utilisé : " + separator)

        # Étape 1 : Téléchargement du fichier
        if not 'localFile' in list(self.config.keys()) or not self.config['localFile']:
            lien = self.config['link_download']
            tools.telechargerFichier(lien, self.tmpFileName)
        with open(self.tmpFileName, 'r+') as fichierData:
            fData = csv.reader(fichierData)

            # Étape 2 : On récupère ses entêtes
            titre = next(fData)
            posCol = tools.getEntetesList(
                titre, self.config['header'], separator)
            print('Liste des entêtes : ')
            print(posCol)

            # Étape pré-3 : On prépare un tableau de Region Manager
            regionManagerFactory = RegionManagerFactory(self.config)

            # Étape 3 : On lit le fichier
            for contenu in fData:
                # TODO: Problème avec le reader qui découpe mal les lignes.
                #contenu = ligne.strip().split(separtaor)
                gare = {}
                for c, i in posCol.items():
                    gare[c] = contenu[i]

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
                    gare['idExterne'] = self.config['prefixIdExterne'] + \
                        gare['idExterne']

                    if self.config['substitue'] != None and 'idExterne' in self.config['substitue'] and gare['idExterne'] in self.config['substitue']['idExterne']:
                        gare['idExterne'] = str(
                            self.config['substitue']['idExterne'][gare['idExterne']])
                    # On récupère le fichier de la région
                    regionMgt = regionManagerFactory.getRegionManager(
                        gare['dossierId'], gare['region'])
                    fRegionInfos = regionMgt.getFichierRegion()

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
                        if 'convertCoordonateOrigin' in list(self.config.keys()):
                            tools.convertCoordonnees(
                                self.config['convertCoordonateOrigin'], gare)
                        else:
                            tools.getCoordonnees(gare)
                        # On rempli le fichier Gares
                        fRegionInfos['gares'].write(gare['idExterne']+';'+tools.nettoyerTexte(gare['nom'])+';'+gare['exploitant']+';'+str(gare['latitude'])+';'+str(
                            gare['longitude'])+';'+str(gare['couleur'])+';'+str(gare['couleurEvolution'])+';'+str(tools.metadonnes)+';0;0'+"\n")

                    if not self.config['lignes']:  # Ligne unique
                        idLigneGare = self.config['prefixIdExterne'] + \
                            "_"+regionGare+"_U"
                    else:
                        idLigneGare = "Ligne_" + \
                            self.config['prefixIdExterne']+gare['ligne']

                    # On regarde pour la ligne maintenant
                    if not idLigneGare in regionMgt.regionsFichier[regionGare]['idLignes']:
                        regionMgt.regionsFichier[regionGare]['idLignes'].append(
                            idLigneGare)
                        regionMgt.regionsFichier[regionGare]['garesDansLigneAssociation'][idLigneGare] = [
                        ]
                        # On va créer la ligne
                        regionMgt.regionsFichier[regionGare]['lignes'].write(
                            idLigneGare + ";Ligne "+gare['ligne']+";"+self.config['lignesType']+";0;#000000;"+str(tools.metadonnes)+";0;0\n")

                    regionMgt.regionsFichier[regionGare]['garesDansLigneAssociation'][idLigneGare].append(
                        gare['idExterne'])

            # Étape 4 : Post traitement
            for _, regionFichier in regionMgt.regionsFichier.items():
                for idLigne, listeGares in regionFichier['garesDansLigneAssociation'].items():
                    # Étape 4b : On rempli le fichier GaresDansLigne
                    for idGare in listeGares:
                        regionFichier['gdl'].write(
                            idGare+";"+idLigne+";0;0;0;"+str(tools.metadonnes)+";0;0\n")

                # Étape 4c : On ferme les fichiers
                regionFichier['gares'].close()
                regionFichier['lignes'].close()
                regionFichier['gdl'].close()

        # Étape 5 : On efface le fichier data
        if not 'localFile' in list(self.config.keys()) or not self.config['localFile']:
            os.remove(self.tmpFileName)
