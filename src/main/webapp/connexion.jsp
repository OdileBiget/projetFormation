<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion</title>
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/cssFormulaires.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/08ce264d0a.js" crossorigin="anonymous"></script>
</head>
<body>

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

	<div #fondForm>
		<h1>Connexion</h1>
		<br>
		<form action="Connexion" method="post">

			<div>
				<c:choose>
					<c:when test="${connexion.equals('error') }">
						<p>
							Un problème est survenu lors de la connexion<br>Identifiants
							non reconus
						</p>
					</c:when>
				</c:choose>

			</div>

			<label for="mailRenseigne">E-mail :</label><br> <input
				type="email" id="email" name="mailRenseigne"><br> 
				
				  
				<label
				for="passwordRenseigne">Mot de passe :</label><br>
				 
				<input type="password" id="mdp" name="passwordRenseigne"><span onclick="afficherPassword()"><i class="fas fa-eye"></i></span>
						
				
				 <br>
			<br> <input type="submit" name="connexion" value="Connexion" />

		</form>
	</div>
	<br>
	<c:out value="${message}"></c:out>
	<br>
	<a href="index.jsp"> Accueil</a>
	<br>
	<a href="AfficherProfil"> Profil</a>
	<br>
	<a href="Deconnexion"> Deconnexion </a>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js" type="text/javascript"></script>
	<script src="js/methodes.js" type="text/javascript"></script>

</body>
</html>