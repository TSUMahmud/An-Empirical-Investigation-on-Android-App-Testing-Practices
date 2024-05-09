#!/usr/bin/env python
# -*- coding: utf-8 -*-
import yaml
import os
import csv
import tools
from csvParser import csvParser
from gtfsParser import gtfsParser
from kmlParser import kmlParser

tools.metadonnes = 141 #Pas sur que ça marche
seulementUnFichier = "didok_csv.yml"

#On récupère le fichier de config
for filePath in os.listdir('config/'):
  if seulementUnFichier != None:
    if filePath != seulementUnFichier:
      continue
  fConfig = open("config/"+filePath, 'r+')
  config = yaml.load(fConfig)
  fConfig.close()

  #Étape 0 : On regarde le type de fichier
  typeConfig = config['typeFile']
  if typeConfig == 'csv':
    parser = csvParser(config)
    parser.parse()
  elif typeConfig == 'gtfs':
    parser = gtfsParser(config)
    parser.parse()
  elif typeConfig == 'kml':
    parser = kmlParser(config)
    parser.parse()

print('Fin de l\'import')