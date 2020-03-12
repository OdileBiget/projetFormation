var booleanDiv = true;

function afficherRaccourciJardin(villeN, typeJ, typeS, superficie, typeC, currentDiv, numeroJ, id, listeImage) {
	//
	let texte = "Le jardin situé à " + villeN + ", est de type " + typeJ + " avec un sol " + typeS + ". D'une superficie de " + superficie + " m², il propose des cultures " + typeC + "...";
	let finalText = decodeUTF8(texte);

	// Div de la carte
	let thirdDiv = document.createElement('div');
	thirdDiv.setAttribute('class', 'col-sm');
	currentDiv.append(thirdDiv);

	// Div de la bordure
	let fourthDiv = document.createElement('div');
	fourthDiv.setAttribute('class', 'card border-dark');
	fourthDiv.style.width = '18rem';
	fourthDiv.style.height = '34rem';
	
	let image = document.createElement('img');
//	image.setAttribute('src', './img/exJardin.jpg');
	let chemin;
	if(listeImage[0]){
		chemin = "/JardinSite/src/main/webapp/fileDownload/";
		chemin += listeImage[0]["nom"];
		}
	else{
		chemin = "./img/imageNonDispo.jpg";
	}
	image.setAttribute('src', chemin);
	image.setAttribute('width','300px');
	image.setAttribute('height','300px');
	
	
	image.setAttribute('class', 'card-img-top');
	fourthDiv.append(image);
	thirdDiv.append(fourthDiv);

	// Div du texte de la carte
	let fifthDiv = document.createElement('div');
	fifthDiv.setAttribute('class', 'card-body text-dark');
	let jardin = document.createElement('h5');
	jardin.setAttribute('class', 'card-title');
	
	let titre = "Jardin " + numeroJ.toString();
	jardin.textContent = titre;
	jardin.style.color = '#a0522d';
	fifthDiv.append(jardin);
	
	let phrase = document.createElement('p');
	phrase.innerHTML = finalText;
	phrase.setAttribute('class', 'card-text');
	fifthDiv.append(phrase);

	//Div boutton voir plus
	let ref = document.createElement('a');
	ref.setAttribute('class', 'btn btn-info');
	let link = 'VoirMesJardins?idJardin=' + id;
	ref.setAttribute('href', link);
	ref.textContent = 'Voir plus';
	fifthDiv.append(ref);
	fourthDiv.append(fifthDiv);
}

function affichageJardinsCarte(listeJSON) {
	
	let tailleListe = listeJSON.length;
	let data = document.getElementById('rowDiv');

	//Rajout de txt au div existant
	for (let i = 0; i < tailleListe; i++) {
		afficherRaccourciJardin(listeJSON[i]["villeNom"], listeJSON[i]["typeJardin"], listeJSON[i]["typeSol"], listeJSON[i]["superficie"], listeJSON[i]["typeCulture"], data, i + 1, listeJSON[i]["id"], listeJSON[i]["image"]);
	}
}

function encodeUTF8(string) {
	return unescape(encodeURIComponent(string));
}

//fonction pour décoder car problème avec les accents

function decodeUTF8(string) {
	return decodeURIComponent(escape(string));
}

//--------------------------------------------------------------------------------------------------

// Fonctions pour la window modal : ajout jardin

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("btn-ajoutImage");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function () {
	modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
	modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
}
//--------------------------------------------------------------------------------------------------



function affichageFLsaison(listeJSON){
	var dateToday = new Date();
	var writeDate = document.getElementById('date');
	writeDate.textContent = 'Nous sommes le '+dateToday.getDate()+"/"+(dateToday.getMonth()+1)+"/"+dateToday.getFullYear()+", les fruits et legumes que vous pouvez consommer sont: ";
	
	let moisActuel = dateToday.getMonth();
	
	let location = document.getElementById('FLsaison');
	let listeItem = document.createElement('ul');
	
	for(let i = 0; i < listeJSON.length; i++){
		let moisDebut = conversionMoisChiffre(listeJSON[i]["moisDebutConso"]);
		let moisFin = conversionMoisChiffre(listeJSON[i]["moisFinConso"]);
		if(moisDebut<moisFin){
			if(moisActuel<=moisFin && moisActuel>=moisDebut){
				let reference = document.createElement('a');
				let lien = 'JardinsContenantFL?nomFL='+listeJSON[i]["nom"];
				reference.setAttribute('href',lien);
				let elementListe = document.createElement('LI');
				let texte = "";
				texte+= listeJSON[i]["nom"]+" ";
				elementListe.textContent = texte;
				reference.append(elementListe);
				listeItem.append(reference);
			}	
		}
		else{
			if(moisActuel>=moisDebut && moisActuel<=moisFin){
				let elementListe = document.createElement('li');
				let texte = "";
				texte+= listeJSON[i]["nom"]+" ";
				elementListe.textContent = texte;
				listeItem.append(elementListe);
			}
		}
	}
	location.append(listeItem);
	
}

function conversionMoisChiffre(mois){
	switch(mois){
	case 'janvier':
		return 0;
		break;
	case 'fevrier':
		return 1;
		break;
	case 'mars':
		return 2;
		break;
	case 'avril':
		return 3;
		break;
	case 'mai':
		return 4;
		break;
	case 'juin':
		return 5;
		break;
	case 'juillet':
		return 6;
		break;
	case 'aout':
		return 7;
		break;	
	case 'septembre':
		return 8;
		break;
	case 'octobre':
		return 9;
		break;
	case 'novembre':
		return 10;
		break;
	case 'decembre':
		return 11;
		break;
	}	
}


function affichageJardinSaison(JSONlist, nomFruit){
	let data = document.getElementById('rowDiv');
	
	let culturesTab;
	for(let i = 0; i < JSONlist.length; i++){
		let listeCultures = JSONlist[i]["culturesPresentes"];
		try{
			culturesTab = listeCultures.split(' ');
			for(let inc = 0; inc < culturesTab.length; inc++){
				if(culturesTab[inc].toLowerCase()==nomFruit.toLowerCase()){
					afficherRaccourciJardin(JSONlist[i]["villeNom"], JSONlist[i]["typeJardin"], JSONlist[i]["typeSol"], JSONlist[i]["superficie"], JSONlist[i]["typeCulture"], data, i + 1, JSONlist[i]["id"], JSONlist[i]["image"]);
				}
//				else{
//					let description = decodeUTF8("Il n'y a pas de jardin partagé qui propose ce produit.");
//					data.innerHTML = description;
//					console.log("no description");
//				}
			}
		}catch(e) {}
	}
}














