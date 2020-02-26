var booleanDiv = true;

function afficherRaccourciJardin(villeN, typeJ, typeS, superficie, typeC, currentDiv, numeroJ){
//	let data = document.getElementById('itemJ');
//	let texte = "Le jardin situé à "+villeN+", est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+superficie+" m², il propose des cultures "+typeC+"...";
//	let finalText = decodeUTF8(texte);
//	
//	let firstdiv = document.createElement('div');
////	firstdiv.textContent = 'first div';
//	firstdiv.setAttribute('class','container');
//	data.append(firstdiv);
	
//	let secondDiv = document.createElement('div');
//	secondDiv.setAttribute('class','row');
////	secondDiv.textContent = 'second div';
////	firstdiv.append(secondDiv);
//	currentDiv.append(secondDiv);
	
	let texte = "Le jardin situé à "+villeN+", est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+superficie+" m², il propose des cultures "+typeC+"...";
	let finalText = decodeUTF8(texte);
	
	let thirdDiv = document.createElement('div');
	thirdDiv.setAttribute('class','col-sm');
	currentDiv.append(thirdDiv);
	
	let fourthDiv = document.createElement('div');
	fourthDiv.setAttribute('class','card border-dark');
	fourthDiv.style.width = '18rem';
	let image = document.createElement('img');
	image.setAttribute('src','./img/exJardin.jpg');
	image.setAttribute('class','card-img-top');
	fourthDiv.append(image);
	thirdDiv.append(fourthDiv);
	
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
	let ref = document.createElement('a');
	ref.setAttribute('class','btn btn-primary');
	ref.setAttribute('href','afficherUnJardin.jsp');
	ref.textContent = 'Voir plus';
	fifthDiv.append(ref);
	fourthDiv.append(fifthDiv);
}

//function affichageTousJardins1(listeJSON){
//	let tailleListe = listeJSON.length;
//	let data = document.getElementById('itemJ');
////	let texte = "Le jardin situé à "+villeN+", est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+superficie+" m², il propose des cultures "+typeC+"...";
////	let finalText = decodeUTF8(texte);
//	
//	let firstdiv = document.createElement('div');
////	firstdiv.textContent = 'first div';
//	firstdiv.setAttribute('class','container');
//	data.append(firstdiv);
//	
//	let secondDiv = document.createElement('div');
//	secondDiv.setAttribute('class','row');
//	secondDiv.setAttribute('id','rowDiv');
////	secondDiv.textContent = 'second div';
////	firstdiv.append(secondDiv);
//	firstdiv.append(secondDiv);
//	
//	for(let i = 0; i < tailleListe; i++){
//			afficherRaccourciJardin(listeJSON[i][0], listeJSON[i][1], listeJSON[i][2], listeJSON[i][3], listeJSON[i][4],secondDiv)
//	}
//	
//	booleanDiv = false;
//	
//}

function affichageTousJardins2(listeJSON){
	let tailleListe = listeJSON.length;
	let data = document.getElementById('rowDiv');
//	let texte = "Le jardin situé à "+villeN+", est de type "+typeJ+" avec un sol "+typeS+". D'une superficie de "+superficie+" m², il propose des cultures "+typeC+"...";
//	let finalText = decodeUTF8(texte);
	
//	let firstdiv = document.createElement('div');
//	firstdiv.textContent = 'first div';
//	firstdiv.setAttribute('class','container');
//	data.append(firstdiv);
	
	for(let i = 0; i < tailleListe; i++){
			afficherRaccourciJardin(listeJSON[i][0], listeJSON[i][1], listeJSON[i][2], listeJSON[i][3], listeJSON[i][4], data, i+1);
	}
	
}


function encodeUTF8(string) {
	  return unescape(encodeURIComponent(string));
	}

//fonction pour décoder car problème avec les accents
function decodeUTF8(string) {
	  return decodeURIComponent(escape(string));
	}

//function affichageFinalJardins(listeJSON){
//	var divATester = document.getElementById('itemJ');
//	if(divATester.children==null) {
//		console.log("no child");
//		affichageTousJardins1(listeJSON);
//		
//	}
//	else {
//		console.log(" one child ");
//		affichageTousJardins2(listeJSON);
//		
//	}
//}












