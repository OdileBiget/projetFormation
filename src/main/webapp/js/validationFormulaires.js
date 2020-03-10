var CP = document.getElementById('CP');
var form = document.getElementsByTagName('form')[0];
var error = document.querySelector('.error');

CP.addEventListener("input", function (event) {
	  // Chaque fois que l'utilisateur saisit quelque chose
	  // on vérifie la validité du champ e-mail.
	  if (CP.validity.valid) {
	    // S'il y a un message d'erreur affiché et que le champ
	    // est valide, on retire l'erreur
	    error.innerHTML = ""; // On réinitialise le contenu
	    error.className = "error"; // On réinitialise l'état visuel du message
	  }
	}, false);

form.addEventListener("submit", function(event)
		{
		if(!CP.validity.valid){
			error.innerHTML = "Entrez un code postal valide (de type 12345)"
			error.className = "error.active";
			
			event.preventDefault();
		}
		}, false);