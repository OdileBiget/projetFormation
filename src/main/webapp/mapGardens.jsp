<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!-- Latest compiled and minified CSS -->
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/mapGarden.css" rel="stylesheet">
<link rel="icon" href="icone.JPG">
<link href="css/stylesheet.css" rel="stylesheet">

<title>My local garden</title>

<!-- <script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU"></script> -->


</head>

<body>
	<%@include file="include/header.jsp"%>

	<!-- Layout Grid -->
	<div class="grid-container">
		<div class="grid-item">
			<!-- Colonne de gauche -->
			<p>Col 1</p>
			<div id="floating-panel">
				<input id="address" type="textbox" value="Paris"> <input
					id="submit" type="button" value="Geocode">
			</div>
			<div id="map"></div>
		</div>

		<div class="grid-item">
			<!-- Colonne de droite -->
			<p>Col 2</p>
		</div>

	</div>


	<!--  Footer -->
	<%@include file="include/footer.jsp"%>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/mapGarden.js"></script>
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