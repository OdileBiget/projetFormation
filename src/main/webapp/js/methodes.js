/**
 * 
 */

function afficherPassword() {	
  var x = document.getElementById("mdp");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

function afficherRaccourciJardin(){
	var value = Number(document.getElementById("affichage"));
	if (value == 1){
		document.getElementById("affichage").innerHTML="J'ai un jardin";	
	}
	else{
		document.getElementById("affichage").innerHTML="Je n'ai pas de jardin";
	}
}
