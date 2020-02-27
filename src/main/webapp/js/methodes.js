function afficherPassword() {
	var x = document.getElementById("mdp");
	if (x.type === "password") {
		x.type = "text";
	} else {
		x.type = "password";
	}
}

function NomAfficherMasquer() {

	if ($('#modifNom').css('display') === "none") {
		$('#modifNom').css('display', 'inline-block');
	} else {
		$('#modifNom').css('display', 'none');
	}

	if ($('#ValeurNom').css('display') === "none") {
		$('#ValeurNom').css('display', 'inline-block');
	} else {
		$('#ValeurNom').css('display', 'none');
	}

	if ($('.nomBouton01').css('display') === "none") {
		$('.nomBouton01').css('display', 'inline-block');
	} else {
		$('.nomBouton01').css('display', 'none');
	}
	if ($('.nomBouton02').css('display') === "none") {
		$('.nomBouton02').css('display', 'inline-block');
	} else {
		$('.nomBouton02').css('display', 'none');
	}
}

function prenomMasque() {
	
	if ($('#modifPrenom').css('display') === "none") {
		$('#modifPrenom').css('display', 'inline-block');
	} else {
		$('#modifPrenom').css('display', 'none');
	}

	if ($('#ValeurPrenom').css('display') === "none") {
		$('#ValeurPrenom').css('display', 'inline-block');
	} else {
		$('#ValeurPrenom').css('display', 'none');
	}

	if ($('.prenomBouton01').css('display') === "none") {
		$('.prenomBouton01').css('display', 'inline-block');
	} else {
		$('.prenomBouton01').css('display', 'none');
	}
	if ($('.prenomBouton02').css('display') === "none") {
		$('.prenomBouton02').css('display', 'inline-block');
	} else {
		$('.prenomBouton02').css('display', 'none');
	}
}

function mailMasque() {
	
	if ($('#modifMail').css('display') === "none") {
		$('#modifMail').css('display', 'inline-block');
	} else {
		$('#modifMail').css('display', 'none');
	}

	if ($('#ValeurMail').css('display') === "none") {
		$('#ValeurMail').css('display', 'inline-block');
	} else {
		$('#ValeurMail').css('display', 'none');
	}

	if ($('.mailBouton01').css('display') === "none") {
		$('.mailBouton01').css('display', 'inline-block');
	} else {
		$('.mailBouton01').css('display', 'none');
	}
	if ($('.mailBouton02').css('display') === "none") {
		$('.mailBouton02').css('display', 'inline-block');
	} else {
		$('.mailBouton02').css('display', 'none');
	}
}

function telMasque() {
	
	if ($('#modifTel').css('display') === "none") {
		$('#modifTel').css('display', 'inline-block');
	} else {
		$('#modifTel').css('display', 'none');
	}

	if ($('#ValeurTel').css('display') === "none") {
		$('#ValeurTel').css('display', 'inline-block');
	} else {
		$('#ValeurTel').css('display', 'none');
	}

	if ($('.telBouton01').css('display') === "none") {
		$('.telBouton01').css('display', 'inline-block');
	} else {
		$('.telBouton01').css('display', 'none');
	}
	if ($('.telBouton02').css('display') === "none") {
		$('.telBouton02').css('display', 'inline-block');
	} else {
		$('.telBouton02').css('display', 'none');
	}
	
}
function mdpMasque(){
	if ($('#modifMdp').css('display') === "none") {
		$('#modifMdp').css('display', 'inline-block');
	} else {
		$('#modifMdp').css('display', 'none');
	}

	if ($('#ValeurMdp').css('display') === "none") {
		$('#ValeurMdp').css('display', 'inline-block');
	} else {
		$('#ValeurMdp').css('display', 'none');
	}

	if ($('.mdpBouton01').css('display') === "none") {
		$('.mdpBouton01').css('display', 'inline-block');
	} else {
		$('.mdpBouton01').css('display', 'none');
	}
	if ($('.mdpBouton02').css('display') === "none") {
		$('.mdpBouton02').css('display', 'inline-block');
	} else {
		$('.mdpBouton02').css('display', 'none');
	}
}


