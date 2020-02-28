<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Ajouter un jardin</title>
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/cssAjoutJardin.css" rel="stylesheet">
</head>
<body>

	<%@include file="include/header.jsp"%>

	<div>
		<h1>Ajouter un jardin</h1>
		<br>
		<form action="AjoutJardin">
			<label for="name">Adresse (rue, n° ...) :</label><br> <input
				type="text" id="adresse" name="adresse"><br> <label
				for="name">Code postal :</label><br> <input type="text" id="CP"
				name="CP"><br> <label for="name">Ville :</label><br>
			<input type="text" id="nomVille" name="nomVille"><br> <label
				for="name">Coordonnées GPS :</label><br> <input type="text"
				id="GPS" name="GPS"><br> <label for="name">Type
				de jardin :</label><br> <select name="typeJardin" id="typeJardin">
				<option value="">Choisissez une option</option>
				<option value="prive">privé</option>
				<option value="collectif">collectif</option>
			</select><br> <label for="name">Type de sol :</label><br> <select
				name="typeSol" id="typeSol">
				<option value="">Choisissez une option</option>
				<option value="calcaire">calcaire</option>
				<option value="argileux">argileux</option>
				<option value="sableux">sableux</option>
				<option value="siliceux">siliceux</option>
				<option value="tourbeux">tourbeux</option>
				<option value="limoneux">limoneux</option>
			</select><br> <label for="name">Type de culture :</label><br> <select
				name="typeCulture" id="typeCulture">
				<option value="">Choisissez une option</option>
				<option value="hors sol">hors-sol</option>
				<option value="pleine terre">pleine terre</option>
			</select><br> <label for="name">Type de production :</label><br> <select
				name="typeProd" id="typeProd">
				<option value="">Choisissez une option</option>
				<option value="sous serre">en serre</option>
				<option value="sous tunnel">sous tunnel</option>
				<option value="en plein air">en plein air</option>
			</select><br> <label for="name">Superficie :</label><br> <input
				type="text" id="superficie" name="superficie"> <br> <label
				for="name">Ajouter des cultures déjà présentes :</label><br> <input
				type="text" id="cultures" name="cultures"> <br> <br>
			<input type="submit" name="valider" id="valider" value="Valider" />
		</form>
	</div>

	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/methodes.js"></script>

</body>
</html>