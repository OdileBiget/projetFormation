<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Ajouter un jardin</title>
<link rel="icon" href="img/favicon.png">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/cssAjoutJardin.css" rel="stylesheet">
</head>

<style>

	#CP:invalid{
	border: #b22222 solid 2px;
	background-color: #fcc;
	}
	
	#superficie:invalid{
	border: #b22222 solid 2px;
	background-color: #fcc;
	}
	
	.error {
  	width  : 100%;
 	padding: 0;
 	
 	font-size: 80%;
  	color: white;
 	background-color: #900;
 	border-radius: 0 0 5px 5px;
 
  	-moz-box-sizing: border-box;
 	box-sizing: border-box;
	}

	.error.active {
 	padding: 0.3em;
	}
}
	
</style>

<body>

	<%@include file="include/header.jsp"%>

	<div style = "padding: 0 10px;">
		<h1>Ajouter un jardin</h1>
		<br>
		<form accept-charset="UTF-8" action="AjoutJardin">
			<label for="name">Adresse (rue, n° ...) :</label><br> <input type="text" id="adresse" name="adresse"><br> 
			<label for="name">Code postal (ex: 12345) :</label><br> <input type="text" id="CP" name="CP" pattern = "[0-9]{5}">
				<span class="error" aria-live="polite"></span><br> 
			<label for="name">Ville :</label><br> <input type="text" id="nomVille" name="nomVille"><br> 
			<label for="name">Coordonnées GPS :</label><br> <input type="text" id="GPS" name="GPS" value="XXX"><br> 
			<label for="name">Type de jardin :</label><br> 
			<div class="formfield-select--container">
			<select name="typeJardin" id="typeJardin">
				<option value="">Choisissez une option</option>
				<option value="prive" selected>privé</option>
				<option value="collectif">collectif</option>
			</select><br>
			<div id="commentaireDefaut" style="padding: 0 250px; font-family: Georgia; font-weight: normal; font-size: small; font-variant: normal;">Le type de jardin par défaut est: <b><i>privé</i></b>.</div> 
			</div>
			<label for="name">Type de sol :</label><br> <select name="typeSol" id="typeSol">
				<option value="">Choisissez une option</option>
				<option value="calcaire" selected>calcaire</option>
				<option value="argileux">argileux</option>
				<option value="sableux">sableux</option>
				<option value="siliceux">siliceux</option>
				<option value="tourbeux">tourbeux</option>
				<option value="limoneux">limoneux</option>
			</select><br> 
			<div id="commentaireDefaut" style="padding: 0 250px; font-family: Georgia; font-weight: normal; font-size: small; font-variant: normal;">Le type de sol par défaut est: <b><i>calcaire</i></b>.</div> 
			<label for="name">Type de culture :</label><br> <select name="typeCulture" id="typeCulture">
				<option value="">Choisissez une option</option>
				<option value="hors sol" selected>hors-sol</option>
				<option value="pleine terre">pleine terre</option>
			</select><br> 
			<div id="commentaireDefaut" style="padding: 0 250px; font-family: Georgia; font-weight: normal; font-size: small; font-variant: normal;">Le type de culture par défaut est: <b><i>hors-sol</i></b>.</div> 
			<label for="name">Type de production :</label><br> <select name="typeProd" id="typeProd">
				<option value="">Choisissez une option</option>
				<option value="sous serre" selected>en serre</option>
				<option value="sous tunnel">sous tunnel</option>
				<option value="en plein air">en plein air</option>
			</select><br> 
			<div id="commentaireDefaut" style="padding: 0 250px; font-family: Georgia; font-weight: normal; font-size: small; font-variant: normal;">Le type de production par défaut est: <b><i>en serre</i></b>.</div> 
			<label for="name">Superficie :</label><br> <input type="text" id="superficie" name="superficie" pattern="[0-9]{1,}" value="0"> 
				<span class="error" aria-live="polite"></span><br>
			<label for="name">Ajouter des cultures déjà présentes (ex: tomates rhubarbe coco fraises ...):</label><br> <input type="text" id="cultures" name="cultures" value="aucunes"> <br> <br>
			<input type="submit" name="valider" id="valider" value="Valider" />
		</form>
	</div>
	<br>
	<br>

	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/methodes.js"></script>
	<script src="js/validationFormulaires.js"></script>

</body>
</html>