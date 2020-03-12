<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Inscription</title>
<link rel="icon" href="img/favicon.png">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/cssFormulaires.css" rel="stylesheet">

</head>

<body>

	<%@include file="include/header.jsp"%>

<br>
<div id="cadreProfil">
		<h1>Inscription</h1>
		<hr>
		<form action="Inscription">
			<label for="name">Nom :</label><input type="text" id="nom" name="nom"><br> 
			<label for="name">Prénom :</label><input type="text" id="prenom" name="prenom"><br> 
			<label for="name">E-mail :</label><input type="text" id="email" name="email"><br> 
			<label for="name">Telephone :</label><input type="text" id="tel" name="tel"><br> 
			<label for="name">Mot de passe :</label><input type="text" id="mdp" name="mdp"> <br> <br> 
			<input type="submit" name="inscription" value="Inscription" id="soumettre" />
		</form>
	<c:out value="${message}"></c:out>
</div>
	<br>

	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>