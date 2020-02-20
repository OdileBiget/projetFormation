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

<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU"></script>


</head>

<body>
	<!-- <h1>My Local Garden</h1> -->
	<!-- Navigation bar -->
	<%@include file="include/header.jsp"%>

	<div id="map"></div>
	<!-- Pour transferer les informations de la BDD au JS : -->
	<!-- 1: Créer un servlet qui récupère les données de la BDD qui qui les envoie ici -->
	<!-- On récupère ces données via le $ script ci dessous -->
	<script>
		var jardinAdresse = <c:out value="${adresse}"/>
	</script>
	<!-- 2: On appel ces variables dans le JS (elles seront lues telles quelles) -->



	<!-- 	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col"></div>
		</div>
	</div> -->


		<!--  Footer -->
	<%@include file="include/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/mapGarden.js"></script>


</body>
</html>