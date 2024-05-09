import tools, os
import xml.etree.ElementTree as ET
from regionManager import RegionManager

class kmlParser:
  def __init__(self, config):
    self.config = config

  def parse(self):
    dossierId = tools.getValue('dossierId', {}, self.config['default_value'])
    region = dossierId
    regionMgt = RegionManager(self.config, dossierId, region)

    nomFichier = "stations-facilities.xml"
    tree = ET.parse(nomFichier)
    root = tree.getroot()
    for station in root.iter("station"):
      coordonnees = station.find("Placemark").find("Point").find("coordinates").text.strip()
      coupeCoordonnees = coordonnees.split(',')
      gare = {
        'idExterne': station.get("id"),
        'nom': station.find("name").text,
        'longitude': coupeCoordonnees[0],
        'latitude': coupeCoordonnees[1]
      }
      gare['lignes'] = [{'id': "Ligne_"+self.config['prefixIdExterne']+"_"+elt.text, 'nom': elt.text} for elt in station.iter("servingLine")]
      if len(gare['lignes']) == 0:
        gare['lignes'] = [{'id': "Ligne_"+self.config['prefixIdExterne']+"_"+station.get("type"), 'nom': station.get("type")}]

      regionMgt.addGare(gare)
    
    regionMgt.save()