import yaml
import os,sys
from junit_xml import TestSuite, TestCase
import time

# Test de la validité yml des fichiers de config
erreurs = []
testsCases = []
for filePath in os.listdir('config'):
  tc = TestCase("Fichier "+filePath)
  temps = time.process_time()
  fConfig = open("config/"+filePath, 'r+')
  try:
    yaml.load(fConfig)
  except yaml.scanner.ScannerError:
    tc.add_error_info("Erreur de syntaxe yaml")
    erreurs.append(filePath)
  fConfig.close()
  tc.timestamp = round(time.process_time() - temps, 6)
  testsCases.append(tc)

dossierFichier = 'rapport/'

# On génère le résultat pour Junit
if os.path.exists(dossierFichier) and os.path.exists(dossierFichier + 'rapport.xml'):
  os.remove(dossierFichier + 'rapport.xml')
elif not os.path.exists(dossierFichier):
  os.makedirs(dossierFichier)

ts = [TestSuite("Fichiers de configuration", testsCases)]
with open(dossierFichier + 'rapport.xml', 'w') as f:
    TestSuite.to_file(f, ts, prettyprint=False)

if len(erreurs) > 0:
  sys.exit(1)
sys.exit(0)