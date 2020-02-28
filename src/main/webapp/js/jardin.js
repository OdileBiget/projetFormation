var booleanDiv = true;

function afficherRaccourciJardin(villeN, typeJ, typeS, superficie, typeC, currentDiv, numeroJ, id){
	//
	let texte = "Le jardin situé à "+villeN+", est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+superficie+" m², il propose des cultures "+typeC+"...";
	let finalText = decodeUTF8(texte);
	
	// Div de la carte
	let thirdDiv = document.createElement('div');
	thirdDiv.setAttribute('class','col-sm');
	currentDiv.append(thirdDiv);
	
	// Div de la bordure
	let fourthDiv = document.createElement('div');
	fourthDiv.setAttribute('class','card border-dark');
	fourthDiv.style.width = '18rem';
	let image = document.createElement('img');
	image.setAttribute('src','./img/exJardin.jpg');
	image.setAttribute('class','card-img-top');
	fourthDiv.append(image);
	thirdDiv.append(fourthDiv);
	
	// Div du texte de la carte
	let fifthDiv = document.createElement('div');
	fifthDiv.setAttribute('class','card-body text-dark');
	let jardin = document.createElement('h5');
	jardin.setAttribute('class','card-title');
	let titre = "Jardin "+numeroJ.toString();
	jardin.textContent=titre;
	fifthDiv.append(jardin);
	let phrase = document.createElement('p');
	phrase.innerHTML = finalText;
	phrase.setAttribute('class','card-text');
	fifthDiv.append(phrase);
	
	//Div boutton voir plus
	let ref = document.createElement('a');
	ref.setAttribute('class','btn btn-primary');
	let link = 'VoirMesJardins?idJardin='+id;
	ref.setAttribute('href',link);
	ref.textContent = 'Voir plus';
	fifthDiv.append(ref);
	fourthDiv.append(fifthDiv);
}

function affichageJardinsCarte(listeJSON){
	
	let tailleListe = listeJSON.length;
	let data = document.getElementById('rowDiv');
	
	//Rajout de txt au div existant
	for(let i = 0; i < tailleListe; i++){
			afficherRaccourciJardin(listeJSON[i]["adresse"], listeJSON[i]["villeNom"], listeJSON[i]["typeJardin"], listeJSON[i]["superficie"], listeJSON[i]["typeCulture"], data, i+1, listeJSON[i]["id"]);
	}
}

function encodeUTF8(string) {
	  return unescape(encodeURIComponent(string));
	}

//fonction pour décoder car problème avec les accents
function decodeUTF8(string) {
	  return decodeURIComponent(escape(string));
	}













