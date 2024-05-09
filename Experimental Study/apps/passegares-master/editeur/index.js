const fs = require('fs');
const csv = require("fast-csv");

var ville = '../app/src/main/assets/Paris';

var i = 0;
var pos = {};
var gares = {};
var garesSupprime = {};
var lignes = {};
var lignesSupprime = {};
var garesDansLigne = {};
var garesDansLigneSupprime = {};

var version = 13;
var idLignesVues = [];
//On commence par charger les données courantes

function calculerOrdre(type, nom)
{
	if(type == 'Metro')
		return 1000 + parseInt(nom.substr(1)) * 10 + (nom.substr(-1) == 'b' ? 1 : 0);
	else if(type == 'Navette')
		return 2000 + (nom.charCodeAt(0)) * 10;
	else if(type == 'RER')
		return 3000 + (nom.substr(-1).charCodeAt(0)) * 10;
	else if(type == 'Train')
		return 4000 + (nom == 'GL' ? 999 : (nom.substr(-1).charCodeAt(0)) * 10);
	else if(type == 'Tramway')
		return 5000 + parseInt(nom.substr(1)) * 10 + (nom.substr(-1) == 'A' ? 1 : (nom.substr(-1) == 'B' ? 2 : 0));
}

initAnalyseCSV();

function initAnalyseCSV()
{
	//On crée les fichiers au besoin
	fs.openSync(ville + "/Gares.csv", "a");
	fs.openSync(ville + "/Lignes.csv", "a");
	fs.openSync(ville + "/GaresDansLigne.csv", "a");
	analyserCSVGares();
}

function analyserCSVGares()
{
	csv
		.fromPath(ville + "/Gares.csv", {delimiter: ';'})
		.on("data", traiterLigneCSVGares)
		.on("end", analyserCSVLignes);
}

function traiterLigneCSVGares(data)
{
	console.log("[Gares.csv] Traitement de la ligne #"+i);
	if(i == 0) //entête
	{
		//idExterne;nom;exploitant;latitude;longitude;vCreation;vMaj
		var colonne = {
			'idExterne': 'idExterne',
			'nom': 'nom',
			'exploitant': 'exploitant',
			'latitude': 'latitude',
			longitude: 'longitude',
			vCreation: 'vCreation',
			vMaj: 'vMaj',
			vSuppression: 'vSuppression'
		};
		for(var j in data)
		{
			var entete = data[j];
			if(!!colonne[entete])
				pos[colonne[entete]] = j;
		}
	} else {
		var idGare = data[pos.idExterne];
		if(data[pos.vSuppression] === undefined || data[pos.vSuppression] == '' || data[pos.vSuppression] == 0)
		{
			var gare = {
				'idExterne': idGare,
				'nom': data[pos.nom],
				'exploitant': data[pos.exploitant],
				'latitude': data[pos.latitude],
				'longitude': data[pos.longitude],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: 0
			};
			gares[idGare] = gare;
		} else {
			var gare = {
				'idExterne': idGare,
				'nom': data[pos.nom],
				'exploitant': data[pos.exploitant],
				'latitude': data[pos.latitude],
				'longitude': data[pos.longitude],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: data[pos.vSuppression]
			};
			garesSupprime[idGare] = gare;
		}
	}
	//console.log(data);
	i++;
}

function analyserCSVLignes()
{
	i = 0;
	pos = {};
	csv
		.fromPath(ville + "/Lignes.csv", {delimiter: ';'})
		.on("data", traiterLigneCSVLignes)
		.on("end", analyserCSVGaresDansLigne);
}

function traiterLigneCSVLignes(data)
{
	console.log("[Lignes.csv] Traitement de la ligne #"+i);
	//idExterne;nom;type;ordre;vCreation;vMaj
	if(i == 0) //entête
	{
		//idExterne;nom;exploitant;latitude;longitude;vCreation;vMaj
		var colonne = {
			'idExterne': 'idExterne',
			'nom': 'nom',
			type: 'type',
			ordre: 'ordre',
			vCreation: 'vCreation',
			vMaj: 'vMaj',
			vSuppression: 'vSuppression'
		};
		for(var j in data)
		{
			var entete = data[j];
			if(!!colonne[entete])
				pos[colonne[entete]] = j;
		}
	} else {
		var idLigne = data[pos.idExterne];
		if(data[pos.vSuppression] === undefined || data[pos.vSuppression] == '' || data[pos.vSuppression] == 0)
		{
			var ligne = {
				'idExterne': idLigne,
				'nom': data[pos.nom],
				'type': data[pos.type],
				'ordre': data[pos.ordre],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: 0
			};
			lignes[idLigne] = ligne;
		} else {
			var ligne = {
				'idExterne': data[pos.idExterne],
				'nom': data[pos.nom],
				'type': data[pos.type],
				'ordre': data[pos.ordre],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: data[pos.vSuppression]
			};
			lignesSupprime[idLigne] = ligne;
		}
	}
	//console.log(data);
	i++;
}

function analyserCSVGaresDansLigne()
{
	i = 0;
	pos = {};
	csv
		.fromPath(ville + "/GaresDansLigne.csv", {delimiter: ';'})
		.on("data", traiterLigneCSVGaresDansLigne)
		.on("end", analyserCSVexterne);
}

function traiterLigneCSVGaresDansLigne(data)
{
	console.log("[GaresDansLigne.csv] Traitement de la ligne #"+i);
	if(i == 0) //entête
	{
		var colonne = {
			idGare: 'idGare',
			idLigne: 'idLigne',
			vCreation: 'vCreation',
			vMaj: 'vMaj',
			vSuppression: 'vSuppression'
		};
		for(var j in data)
		{
			var entete = data[j];
			if(!!colonne[entete])
				pos[colonne[entete]] = j;
		}
	} else {
		var idGaresDansLigne = data[pos.idGare] + '-' + data[pos.idLigne];
		if(data[pos.vSuppression] === undefined || data[pos.vSuppression] == '' || data[pos.vSuppression] == 0)
		{
			var gareDansLigne = {
				'idGare': data[pos.idGare],
				'idLigne': data[pos.idLigne],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: 0
			};
			garesDansLigne[idGaresDansLigne] = gareDansLigne;
		} else {
			var gareDansLigne = {
				'idGare': data[pos.idGare],
				'idLigne': data[pos.idLigne],
				'vCreation': data[pos.vCreation],
				'vMaj': data[pos.vMaj],
				vSuppression: data[pos.vSuppression]
			};
			garesDansLigneSupprime[idGaresDansLigne] = gareDansLigne;
		}
	}
	//console.log(data);
	i++;
}

function analyserCSVexterne()
{
	var csvStreamGares = csv.createWriteStream({headers: true, delimiter: ';'}),
		writableStreamGares = fs.createWriteStream(ville + '/Gares.csv'),
		csvStreamLignes = csv.createWriteStream({headers: true, delimiter: ';'}),
		writableStreamLignes = fs.createWriteStream(ville + '/Lignes.csv'),
		csvStreamGaresDansLigne = csv.createWriteStream({headers: true, delimiter: ';'}),
		writableStreamGaresDansLigne = fs.createWriteStream(ville + '/GaresDansLigne.csv');

	csvStreamGares.pipe(writableStreamGares);
	csvStreamLignes.pipe(writableStreamLignes);
	csvStreamGaresDansLigne.pipe(writableStreamGaresDansLigne);

	i = 0;
	pos = {};
	var idGaresDejaPresent = Object.keys(gares);
	var idLignesDejaPresent = Object.keys(lignes);
	var idGaresDansLigneDejaPresent = Object.keys(garesDansLigne);
	csv
		.fromPath("emplacement-des-gares-idf-data-generalisee.csv", {delimiter: ';'})
		.on("data", function(data){
		console.log("[Fichier Externe] Traitement de la ligne #"+i);
		if(i == 0) //entête
		{
			var colonne = {
				'ID_REF_ZDL': 'idExterneGare',
				'NOM_LONG': 'nomGare',
				'IDREFLIGA': 'idLignes',
				'RES_COM': 'nomLignes',
				'MODE_': 'typeLigne',
				'EXPLOITANT': 'exploitantGare',
				'Geo Point': 'positionGare'
			};
			for(var j in data)
			{
				var entete = data[j];
				if(!!colonne[entete])
					pos[colonne[entete]] = j;
			}
		} else {
			var coordonnees = data[pos.positionGare].split(',');
			var idGare = data[pos.idExterneGare];
			//On récupère la gare
			var gareStocke = gares[idGare];
			var gareCalcule = {
				'idExterne': idGare,
				'nom': data[pos.nomGare],
				'exploitant': data[pos.exploitantGare],
				'latitude': parseFloat(coordonnees[0]),
				'longitude': parseFloat(coordonnees[1]),
				'vCreation': version,
				'vMaj': 0,
				vSuppression: 0
			};

			if(gareStocke !== undefined) //Donnée existante
			{
				//On retire la gare des données déjà présente
				idGaresDejaPresent.splice(idGaresDejaPresent.indexOf(idGare), 1);

				//On récupère les données vCreation et vMaj pour la comparaison
				gareCalcule.vCreation = gareStocke.vCreation;
				gareCalcule.vMaj = gareStocke.vMaj;
				if(Object.keys(gareStocke).map((i) => (gareStocke[i] == gareCalcule[i])).find((i) => (!i)) === false) //mise à jour des données, vaut false si différent, undefined si identique
					gareCalcule.vMaj = version;
			} else { //Nouvelle donnée
				if(garesSupprime[idGare] !== undefined) //On remet une donnée
					delete garesSupprime[idGare]; //On l'efface des gares supprimées
			}

			csvStreamGares.write(gareCalcule);
			gares[idGare] = gareCalcule;

			//Et on gère les lignes
			var idLignesDeLaGare = data[pos.idLignes].split(' / ');
			var nomLignesDeLaGare = data[pos.nomLignes].split(' / ');
			for(var j in idLignesDeLaGare)
			{
				var idLigne = idLignesDeLaGare[j];
				if(idLigne == '')
					idLigne = nomLignesDeLaGare[j];
				if(idLignesVues.indexOf(idLigne) == -1) //Nouvelle ligne
				{
					//On récupère la ligne
					var ligneStocke = lignes[idLigne];
					//On fait au mieux
					var typesLigne = data[pos.typeLigne].split(' / ');
					var typeLigne = typesLigne[0];
					if(j == typesLigne.length - 1)
						typeLigne = typesLigne[j];

					var ligne = {
						idExterne: idLigne,
						nom: nomLignesDeLaGare[j],
						type: typeLigne,
						ordre: calculerOrdre(typeLigne, nomLignesDeLaGare[j]),
						'vCreation': version,
						'vMaj': 0,
						vSuppression: 0
					};

					if(ligneStocke !== undefined) //Donnée existante
					{
						//On retire la gare des données déjà présente
						idLignesDejaPresent.splice(idLignesDejaPresent.indexOf(idLigne), 1);

						//On récupère les données vCreation et vMaj pour la comparaison
						ligne.vCreation = ligneStocke.vCreation;
						ligne.vMaj = ligneStocke.vMaj;
						if(Object.keys(ligneStocke).map((i) => (ligneStocke[i] == ligne[i])).find((i) => (!i)) === false) //mise à jour des données, vaut false si différent, undefined si identique
							ligne.vMaj = version;
					} else { //Nouvelle donnée
						if(lignesSupprime[idLigne] !== undefined) //On remet une donnée
							delete lignesSupprime[idLigne]; //On l'efface des gares supprimées
					}

					lignes[idLigne] = ligne;
					csvStreamLignes.write(ligne);
					idLignesVues.push(idLigne);
				}

				//On récupère la donnée stockée
				var idGareDansLigne = idGare + '-' + idLigne;
				var dataStocke = garesDansLigne[idGareDansLigne];
				var gareDansLigne = {
					idGare: idGare,
					idLigne: idLigne,
					'vCreation': version,
					'vMaj': 0,
					vSuppression: 0
				};

				if(dataStocke !== undefined) //Donnée existante
				{
					//On retire la gare des données déjà présente
					idGaresDansLigneDejaPresent.splice(idGaresDansLigneDejaPresent.indexOf(idGareDansLigne), 1);

					//On récupère les données vCreation et vMaj pour la comparaison
					gareDansLigne.vCreation = dataStocke.vCreation;
					gareDansLigne.vMaj = dataStocke.vMaj;
					if(Object.keys(dataStocke).map((i) => (dataStocke[i] == gareDansLigne[i])).find((i) => (!i)) === false) //mise à jour des données, vaut false si différent, undefined si identique
						gareDansLigne.vMaj = version;
				} else { //Nouvelle donnée
					if(garesDansLigneSupprime[idGareDansLigne] !== undefined) //On remet une donnée
						delete garesDansLigneSupprime[idGareDansLigne]; //On l'efface des gares supprimées
				}

				garesDansLigne[idGareDansLigne] = gareDansLigne;
				csvStreamGaresDansLigne.write(gareDansLigne);
			}
		}
		//console.log(data);
		i++;
	})
		.on("end", function(){
		//On doit finir par marquer comme supprimer les données correspondantes
		for(var j in idGaresDejaPresent)
		{
			var idGare = idGaresDejaPresent[j];
			var gare = gares[idGare];
			gare.vCreation = 0;
			gare.vMaj = 0;
			gare.vSuppression = version;
			csvStreamGares.write(gare);
		}

		for(var j in idLignesDejaPresent)
		{
			var idLigne = idLignesDejaPresent[j];
			var ligne = lignes[idLigne];
			ligne.vCreation = 0;
			ligne.vMaj = 0;
			ligne.vSuppression = version;
			csvStreamLignes.write(ligne);
		}

		for(var j in idGaresDansLigneDejaPresent)
		{
			var idGaresDansLigne = idGaresDansLigneDejaPresent[j];
			var gareDansLigne = garesDansLigne[idGaresDansLigne];
			gareDansLigne.vCreation = 0;
			gareDansLigne.vMaj = 0;
			gareDansLigne.vSuppression = version;
			csvStreamLignes.write(gareDansLigne);
		}

		//Et on remet les gares supprimées
		for(var j in garesSupprime)
		{
			csvStreamGares.write(garesSupprime[j]);
		}

		//Ainsi que les lignes supprimées
		for(var j in lignesSupprime)
		{
			csvStreamLignes.write(lignesSupprime[j]);
		}

		//Et les gares dans ligne supprimées
		for(var j in garesDansLigneSupprime)
		{
			csvStreamLignes.write(garesDansLigneSupprime[j]);
		}
		/*console.log(gares);
        console.log(lignes);
        console.log(garesDansLigne);
		console.log(idGaresDejaPresent);*/
		console.log("done");
		csvStreamGares.end();
		csvStreamLignes.end();
		csvStreamGaresDansLigne.end();
	});
}
