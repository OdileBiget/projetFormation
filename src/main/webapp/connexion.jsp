<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Connexion</title>
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/cssFormulaires.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/08ce264d0a.js"
	crossorigin="anonymous"></script>

</head>
<body>
	<%@include file="include/header.jsp"%>

	<div #fondForm>
		<h1>Connexion</h1>
		<br>
		<div>
			<c:choose>

				<c:when test="${connexion.equals('error') }">

					<p>
						Un problème est survenu lors de la connexion<br>Identifiants
						non reconus
					</p>

				</c:when>

				<c:otherwise>

					<p>Connectez-vous</p>

				</c:otherwise>

			</c:choose>

		</div>
		<form action="Connexion" method="post">
			<label for="mailRenseigne">E-mail :</label><br> <input
				type="email" id="email" name="mailRenseigne"><br> <label
				for="passwordRenseigne">Mot de passe :</label><br> <input
				type="password" id="mdp" name="passwordRenseigne"><span
				onclick="afficherPassword()"><i
				class="fas fa-eye btn-show-hide-pwd"></i></span> <br> <br> <input
				type="submit" name="connexion" value="Connexion" />

		</form>
	</div>
	<br><br>




	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"
		type="text/javascript"></script>
	<script src="js/methodes.js" type="text/javascript"></script>

</body>
</html>