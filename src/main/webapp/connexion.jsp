<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Connexion">

		<label for="name">E-mail :</label><br> 
		<input type="text" id="email" name="email"><br> 
		<label for="name">Mot de passe :</label><br> 
		<input type="text" id="mdp" name="mdp"> <br>
		<br> 
		<input type="submit" name="connexion" value="Connexion" />
	</form>
	<br>
	<c:out value="${message}"></c:out>
	<br>
	<a href="index.jsp"> Accueil</a>
	<br>
	<a href="AfficherProfil"> Profil</a>
	<br>
	<a href="Deconnexion"> Deconnexion </a>

</body>
</html>