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
	<form action="Inscription">
		<label for="name">Nom :</label><br> 
		<input type="text" id="nom" name="nom"><br> 
		<label for="name">Prénom :</label><br> 
		<input type="text" id="prenom" name="prenom"><br> 
		<label for="name">E-mail :</label><br> 
		<input type="text" id="email" name="email"><br> 
		<label for="name">Telephone :</label><br> 
		<input type="text" id="tel" name="tel"><br> 
		<label for="name">Mot de passe :</label><br> 
		<input type="text" id="mdp" name="mdp"> <br>
		<br> <input type="submit" name="inscription" value="Inscription" />
	</form>
	<br>
	<c:out value="${message}"></c:out>
	<br>		
	<a href="profil.jsp"> Profil</a>
	<a href="index.jsp"> Accueil</a>
	
	
</body>
</html>