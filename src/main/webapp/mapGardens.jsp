<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/mapGarden.css" rel="stylesheet">
<link rel="icon" href="img/favicon.png">

<title>My local garden</title>


</head>

<body>
	<%@include file="include/header.jsp"%>
	<!-- Layout Grid -->
	<div class="grid-container">
		<div class="grid-item">
			<div class="floating-panel p-3 mb-2 bg-success text-white">
				<form class="form-inline align-items-center">
					<div class="form-group mx-sm-3 mb-2">
						<input id="address" type="textbox" value="Paris"
							class="form-control"> <input class="form-control"
							id="submit" type="button" value="Geocode">
					</div>
				</form>
			</div>
			<div id="map"></div>
		</div>

		<div class="grid-item" id="formulaire">
			<h1>Affiner votre recherche :</h1>
			<form action="MapGarden">

				<div class="form-group col-md-9">
					<label for="adresse">Adresse</label> <input type="text"
						class="form-control" id="adresse" name="adresse"
						placeholder="45, rue Albert Camus">
				</div>
				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="CP">Code postal</label> <input type="number" min='0'
							onkeypress="return isNumberKey(event)" class="form-control"
							id="CP" name="CP" placeholder="75000">
					</div>
					<div class="form-group col-md-7">
						<label for="nomVille">Ville</label> <input type="text"
							class="form-control" id="nomVille" name="nomVille"
							placeholder="Paris">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-3">
						<label for="typeJardin">Type jardin</label> <select
							id="typeJardin" class="form-control" name="typeJardin">
							<option selected>Choisir</option>
							<option value="prive">privé</option>
							<option value="collectif">collectif</option>
						</select>
					</div>
					<div class="form-group col-md-3">
						<label for="typeCulture">Type cuture</label> <select
							id="typeCulture" class="form-control" name="typeCulture">
							<option selected>Choisir</option>
							<option value="hors sol">hors-sol</option>
							<option value="pleine terre">pleine terre</option>
						</select>
					</div>

					<div class="form-group col-md-3">
						<label for="typeSol">Type sol</label> <select id="typeSol"
							class="form-control name="typeSol">
							<option selected>Choisir</option>
							<option value="calcaire">calcaire</option>
							<option value="argileux">argileux</option>
							<option value="sableux">sableux</option>
							<option value="siliceux">siliceux</option>
							<option value="tourbeux">tourbeux</option>
							<option value="limoneux">limoneux</option>
						</select>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-3">
						<label for="typeProd">Type de production</label> <select
							id="typeProd" class="form-control" name="typeProd">
							<option selected>Choisir</option>
							<option value="sous serre">en serre</option>
							<option value="sous tunnel">sous tunnel</option>
							<option value="en plein air">en plein air</option>
						</select>
					</div>
					<div class="form-group col-md-3">
						<label for="superficie">Superficie minimum</label> <input
							type="number" min='0' onkeypress="return isNumberKey(event)"
							class="form-control" id="superficie" name="superficie"
							placeholder="20">
					</div>
					<div class="form-group col-md-3">
						<label for="cultures">Cultures présentes</label> <input
							type="text" class="form-control" id="cultures" name="cultures"
							placeholder="tomates, carottes">
					</div>
				</div>
				<br> <input type="submit" name="valider" id="valider"
					value="Valider" />
			</form>
			<br>
			<div>
				<c:out value="${jsonVide}" />
			</div>
		</div>

	</div>


	<!--  Footer -->
	<%@include file="include/footer.jsp"%>
	<script src="js/mapGarden.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU">
		google.maps.event.addDomListener(window, 'load', initMap);
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script>
		var json = <c:out value="${json}" escapeXml="false"/>;
		$(function() {
			initMap();
			var jardinIdList = [];

			for (var i = 0; i < json.length; i++) {

				var jardinId = "jardin" + json[i]["id"];
				jardinIdList.push('#' + jardinId + '');

				var address = json[i]["adresse"] + " " + json[i]["codePostal"]
						+ " " + json[i]["villeNom"];

				var contentString = '<div id="bubulle">'
						+ '<input class="btn btn-success btn-sm" id="'
						+ jardinId
						+ 'zzz" type="submit" value="Ajouter à ma liste de jardins partagés" onClick=\'ajouterJardinPartage('
						+ json[i]["id"]
						+ ')\') />'
						+ '<br><br><div id="bodyContent">'
						+ '<p><b>Adresse : </b>'
						+ address
						+ '<br><b>Type de jardin : </b>'
						+ json[i]["typeJardin"]
						+ '<br><b>Superficie : </b>'
						+ json[i]["superficie"]
						+ '<br><b>Type de culture : </b>'
						+ json[i]["typeCulture"]
						+ '<br><b>Type de sol : </b>'
						+ json[i]["typeSol"]
						+ '<br><b>Type de production : </b>'
						+ json[i]["typeProduction"]
						+ '<br><b>Cultures déjà présentes : </b>'
						+ json[i]["culturesPresentes"]
						+ '</p><div class="bandeauImages" style=\'float:left\'>';
				for (var j = 0; j < json[i]["image"].length; j++) {
					contentString += "<img src=\"/JardinSite/fileDownload/" + json[i]["image"][j]["image"] + "\" height = 50px />";
				}
				contentString += '</div></div>';

				//console.log(jardinId);
				addGardenMarker(address, contentString);

			} /* Fin du FOR */
			console.log(jardinIdList);

			$("#jardin1").click(function() {
				alert("The paragraph was clicked.");
			});

			/* 			$.each(jardinIdList, function(key, value) {
			 console.log('"#' + jardinIdList[key] + '"');
			 $('"#' + jardinIdList[key] + '"').click(function() {
			 console.log('yo');
			 // ------------- Do something
			 $.get("/WSAjoutJardinPartage?idJardin=1");
			 });
			 }); */

			/* 			for (var i = 0; i < json.length; i++) {
			 var jardinId = "jardin" + json[i]["id"];
			 console.log('"#' + jardinId + '"');

			
			 } */

		});
	</script>


</body>
</html>