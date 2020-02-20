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

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5kevJZCUUWTkzMQM_uk61P7n6hN7iBSU"></script>


</head>

<body>
	<!-- <h1>My Local Garden</h1> -->
	<!-- Navigation bar -->

	<nav class="navbar navbar-light navbar navbar-expand-lg"
		style="background-color: #e0ffff;">
		<a class="navbar-brand" href="#">My Local Garden</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Nos jardins</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="mapGardens.jsp">Carte des
							jardins</a> <a class="dropdown-item" href="#">Choix</a>
					</div></li>
				<li class="nav-item"><a class="nav-link dropdown-toggle"
					href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">Producteurs</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="mapGardens.jsp">Nos producteurs
							locaux</a> <a class="dropdown-item" href="#">Acheter leurs
							produits</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="whoWeAre.jsp">Qui
						sommes-nous ?</a></li>
			</ul>
		</div>
	</nav>


	<!-- CORPS DE PAGE -->

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

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/mapGarden.js"></script>

</body>
</html>