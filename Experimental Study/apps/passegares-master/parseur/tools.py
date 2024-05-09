import urllib
import os
from lv95Convert import LV95Convert

regionsFichier = {}
metadonnes = 141
prochaineCouleur = -1

# --------------------
# Public Methods
# --------------------


def telechargerFichier(lien, tmpFileName):
    print('Téléchargement de : ' + lien)
    # Désactivation durant les tests
    urllib.request.urlretrieve(lien, tmpFileName)
    print('Téléchargement terminé')


def getEntetes(ligne, correspondancesCol=None, separateur=';'):
    champ = ligne.strip().split(separateur)
    return getEntetesList(champ, correspondancesCol, separateur)


def getEntetesList(champ, correspondancesCol=None, separateur=';'):
    posCol = {}
    i = 0
    for c in champ:
        nom = c.strip()
        if correspondancesCol == None:
            posCol[nom] = i
        elif nom in correspondancesCol.keys():
            posCol[correspondancesCol[nom]] = i
        i += 1
    return posCol


def getValue(key, data, defaultValue):
    if not key in list(data.keys()):
        return defaultValue[key]
    return data[key]


def getCouleur():
    global prochaineCouleur
    prochaineCouleur += 1
    if prochaineCouleur >= 8:
        prochaineCouleur %= 8
    return prochaineCouleur


def getCouleurEvolution(nom, couleur):
    couleurEvolution = (couleur + len(nom)) % 8
    if couleurEvolution == couleur:
        couleurEvolution = (couleur + 3) % 8
    return couleurEvolution


def getCoordonnees(gare):
    if not 'latitude' in gare and not 'longitude' in gare:
        if not 'coordonnees' in gare:
            raise Exception('Aucune coordonnées mentionnées dans le fichier')
        coupe = gare['coordonnees'].split(',')
        gare['latitude'] = coupe[0]
        gare['longitude'] = coupe[1]


def nettoyerTexte(texte):
    texte = texte.strip()
    if texte[0:1] == '"':
        return texte[1:][:-1]
    return texte


def convertCoordonnees(convertMethod, gare):
    if convertMethod == "LV95":
        convert = LV95Convert()
        gare['latitude'], gare['longitude'] = convert.convert(
            gare['est'], gare['nord'])
    else:
        raise Exception("Le convertisseur de données n'existe pas")
