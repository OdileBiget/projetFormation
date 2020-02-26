<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/mapGarden.css" rel="stylesheet">
<link rel="icon" href="icone.JPG">

<title>My local garden</title>


</head>

<body>
	<%@include file="include/header.jsp"%>

	<!-- Layout Grid -->
	<div class="grid-container">
		<div class="grid-item">

			<div id="floating-panel">
				<input id="address" type="textbox" value="Paris"> <input
					id="submit" type="button" value="Geocode">
			</div>
			<div id="map"></div>
		</div>

		<div class="grid-item">
			<form action="MapGardenFiltre">
				<div class="form-group col-md-6">
					<label for="adresse">Adresse</label> <input type="text"
						class="form-control" id="adresse" name="adresse"
						placeholder="45, rue Albert Camus">
				</div>
				<div class="form-group col-md-6">
					<label for="nomVille">Ville</label> <input type="text"
						class="form-control" id="nomVille" name="nomVille">
				</div>
				<div class="form-group col-md-6">
					<label for="CP">Code postal</label> <input type="text"
						class="form-control" id="CP" name="CP">
				</div>
				<div class="form-group col-md-4">
					<label for="typeJardin">Type jardin</label> <select
						id="typeJardin" class="form-control" name="typeJardin">
						<option selected>Choisissez une option</option>
						<option value="prive">privé</option>
						<option value="collectif">collectif</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label for="typeCulture">Type cuture</label> <select
						id="typeCulture" class="form-control" name="typeCulture">
						<option selected>Choisissez une option</option>
						<option value="hors-sol">hors-sol</option>
						<option value="pleine terre">pleine terre</option>
					</select>
				</div>

				<div class="form-group col-md-4">
					<label for="typeSol">Type sol</label> <select
						id="typeSol" class="form-control name="typeSol"">
						<option selected>Choisissez une option</option>
						<option value="calcaire">calcaire</option>
						<option value="argileux">argileux</option>
						<option value="sableux">sableux</option>
						<option value="siliceux">siliceux</option>
						<option value="tourbeux">tourbeux</option>
						<option value="limoneux">limoneux</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label for="typeProd">Type de production</label> <select
						id="typeProd" class="form-control" name="typeProd">
						<option selected>Choisissez une option</option>
						<option value="sous serre">en serre</option>
						<option value="sous tunnel">sous tunnel</option>
						<option value="en plein air">en plein air</option>
					</select>
				</div>
				<div class="form-group col-md-3">
					<label for="superficie">Superficie</label> <input type="text"
						class="form-control" id="superficie" name="superficie">
				</div>
				<div class="form-group col-md-6">
					<label for="cultures">Culture déjà présente</label> <input
						type="text" class="form-control" id="cultures" name="cultures">
				</div>
				<br> <input type="submit" name="valider" id="valider"
					value="Valider" />
			</form>
		</div>

	</div>


	<!--  Footer -->
	<%@include file="include/footer.jsp"%>
	<script src="js/mapGarden.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU">
		google.maps.event.addDomListener(window, 'load', initMap);
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script>
		$(function() {
			initMap();
			var json = <c:out value="${json}" escapeXml="false"/>;
			for (var i = 0; i < json.length; i++) {
				var address = json[i]["adresse"] + " " + json[i]["codePostal"]
						+ " " + json[i]["villeNom"];

				var contentString = '<div id="content">'
						+ '<div id="siteNotice">' + '</div>'
						+ '<h1 id="firstHeading" class="firstHeading">'
						+ json[i]["typeJardin"]
						+ '</h1>'
						+ '<div id="bodyContent">'
						+ '<p><b>Adresse : </b>'
						+ address
						+ '</p>'
						+ '<p><b>Type de jardin : </b>'
						+ json[i]["typeJardin"]
						+ '</p>'
						+ '<p><b>Superficie : </b>'
						+ json[i]["superficie"]
						+ '</p>'
						+ '<p><b>Type de culture : </b>'
						+ json[i]["typeCulture"]
						+ '</p>'
						+ '<p><b>Type de jardin : </b>'
						+ json[i]["typeJardin"]
						+ '</p>'
						+ '<p><b>Type de sol : </b>'
						+ json[i]["typeSol"]
						+ '</p>'
						+ '<p><b>Type de production : </b>'
						+ json[i]["typeProduction"]
						+ '</p>'

						+ '<p>Ici inséré un lien vers le profil du jardin, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'
						+ 'https://en.wikipedia.org/w/index.php?title=Uluru</a> '
						+ '(last visited June 22, 2009).</p>'
						+ '</div>'
						+ '</div>';

				addGardenMarker(address, contentString);
			}

		});
	</script>


</body>
</html>