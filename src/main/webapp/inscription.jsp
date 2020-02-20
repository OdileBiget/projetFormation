<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Inscription</title>
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="css/cssFormulaires.css" rel="stylesheet">
</head>
<body>

		<%@include file="include/header.jsp"%>
   
   <div #fondForm>	
	<h1>Inscription</h1><br>
	<form action="Inscription">
		<label for="name">Nom :</label><br><input type="text" id="nom" name="nom"><br> 
		<label for="name">Prénom :</label><br><input type="text" id="prenom" name="prenom"><br> 
		<label for="name">E-mail :</label><br><input type="text" id="email" name="email"><br> 
		<label for="name">Telephone :</label><br><input type="text" id="tel" name="tel"><br> 
		<label for="name">Mot de passe :</label><br><input type="text" id="mdp" name="mdp"> <br>
		<br> <input type="submit" name="inscription" value="Inscription" />
	</form>
	</div>	
	<br>
	<c:out value="${message}"></c:out>
	<br>		
	<a href="profil.jsp"> Profil</a>
	<a href="index.jsp"> Accueil</a>
	
	<%@include file="include/footer.jsp"%>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script> 
	
</body>
</html>