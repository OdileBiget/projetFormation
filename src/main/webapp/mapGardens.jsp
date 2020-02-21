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

	<div id="floating-panel">
		<input id="address" type="textbox" value="Paris"> <input
			id="submit" type="button" value="Geocode">
	</div>
	<div id="map"></div>
	<!-- Replace the value of the key parameter with your own API key. -->





	<!-- 	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col"></div>
		</div>
	</div> -->


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
				addGardenMarker(address);
			}

		});
	</script>


</body>
</html>