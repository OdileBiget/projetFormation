<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!-- Latest compiled and minified CSS -->
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="icone.JPG">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/popup.css" rel="stylesheet">
<title>My local garden</title>

<style>
#cadreProfil {
	background-color: #fffacd;
	text-align: justify;
	width: 40%;
	padding: 1em;
	margin: auto;
	border: 1px #d2b48c solid;
}

h2 {
	text-align: center;
}

#item {
	padding: 1em;
}

#itemJardin {
	padding: 1.5em;
}

/*  	#boutonModif
	{
	float: right;
	}  */
</style>

</head>

<body id="bodyProfile">
	<!-- <h1>My Local Garden</h1> -->
	<!-- Navigation bar -->

	<%@include file="include/header.jsp"%>

	<br>
	<div id="cadreProfil">
		<h2>Mon profil</h2>
		<hr>
		<br>
		<div id="eachItem">
			<b>Nom:</b>

			<form action="updateProfil" method="post">

				<div class="row justify-content-between" id="item">

					<div style="display: inline">

						<div id="ValeurNom" style="display: inline-block">
							<a> <%
 	String name = (String) session.getAttribute("nom");
 	out.println(name);
 %>
							</a>
						</div>

						<div id="modifNom" style="display: none">
							<!-- <form action="updateProfil" method="post"> -->
							<label for="name"></label><input type="text"
								value="<%out.println(name);%>" name="nom">
							<!-- </form> -->
						</div>
					</div>

					<div>
						<!-- <form action="updateProfil" method="post"> -->

						<div class="nomBouton01" style="display: inline-block">
							<button type="button" onclick="NomAfficherMasquer()">Modifier</button>
						</div>

						<div class="nomBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="nomBouton02" style="display: none">
							<button type="button" onclick="NomAfficherMasquer()">Annuler</button>
						</div>
						<!-- </form> -->
					</div>
				</div>

			</form>

		</div>


		<div id="eachItem">
			<b>Prénom:</b>

			<form action="updateProfil" method="post">

				<div class="row justify-content-between" id="item">

					<div style="display: inline">

						<div id="ValeurPrenom" style="display: inline-block">
							<a> <%
 	String prenom = (String) session.getAttribute("prenom");
 	out.println(prenom);
 %>
							</a>
						</div>

						<div id="modifPrenom" style="display: none">
							<!-- <form action="#" method="post"> -->
							<label for="prenom"></label><input type="text"
								value="<%out.println(prenom);%>" name="prenom">
							<!-- </form> -->
						</div>

					</div>

					<div>
						<!-- <form action="updateProfil" method="post">
 -->
						<div class="prenomBouton01" style="display: inline-block">
							<button type="button" onclick="prenomMasque()">Modifier</button>
						</div>

						<div class="prenomBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="prenomBouton02" style="display: none">
							<button type="button" onclick="prenomMasque()">Annuler</button>
						</div>
						<!-- </form> -->
					</div>
				</div>

			</form>

		</div>

		<div id="eachItem">
			<b>Adresse e-mail:</b>

			<form action="updateProfil" method="post">

				<div class="row justify-content-between" id="item">

					<div style="display: inline">

						<div id="ValeurMail" style="display: inline-block">

							<div id="checkMail">
								<c:choose>
									<c:when test="${mailExistant==true }" >
									<div onload="mailMasque()"><a id="mailPris" > Ce mail est déjà utilisé</a></div>
									
									</c:when>
									<c:otherwise>
									<a> <%
 	String mail = (String) session.getAttribute("mail");
 	out.println(mail);
 %>
							</a>
									</c:otherwise>
								</c:choose>
							</div>

						</div>

						<div id="modifMail" style="display: none">
							<!-- <form action="#" method="post"> -->
							<label for="mail"></label><input type="text"
								value="<%out.println((String) session.getAttribute("mail"));%>" name="mail">
							<!-- </form> -->
						</div>

					</div>

					<div>
						<!-- <form action="#" method="post"> -->

						<div class="mailBouton01" style="display: inline-block">
							<button type="button" onclick="mailMasque()">Modifier</button>
						</div>

						<div class="mailBouton02" style="display: none">
							<button type="submit">Valider</button>
						</div>

						<div class="mailBouton02" style="display: none">
							<button type="button" onclick="mailMasque()">Annuler</button>
						</div>
						<!-- </form> -->
					</div>
				</div>

			</form>

		</div>

		<div id="eachItem">
			<b>Numéro de téléphone:</b>

			<form action="updateProfil" method="post">

				<div class="row justify-content-between" id="item">

					<div style="display: inline">

						<div id="ValeurTel" style="display: inline-block">
							<a> <%
 	String tel = (String) session.getAttribute("numeroTel");
 	out.println(tel);
 %>
							</a>
						</div>

						<div id="modifTel" style="display: none">
							<!-- 	<form action="#" method="post"> -->
							<label for="numeroTel"></label><input type="text"
								value="<%out.println(tel);%>" name="numeroTel">
							<!-- </form> -->
						</div>

					</div>

					<div>
						<!-- <form action="#" method="post"> -->

						<div class="telBouton01" style="display: inline-block">
							<button type="button" onclick="telMasque()">Modifier</button>
						</div>

						<div class="telBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="telBouton02" style="display: none">
							<button type="button" onclick="telMasque()">Annuler</button>
						</div>
						<!-- </form> -->
					</div>
				</div>

			</form>

		</div>


		<div id="eachItem">
			<b>Mot de passe:</b>

			<form action="updateProfil" method="post">

				<div class="row justify-content-between" id="item">

					<div style="display: inline">

						<div id="ValeurMdp" style="display: inline-block">
							<a> <%
 	String mdp = (String) session.getAttribute("password");
 	out.println(mdp);
 %>
							</a>
						</div>

						<div id="modifMdp" style="display: none">
							<!-- <form action="#" method="post"> -->
							<label for="password"></label><input type="text"
								value="<%out.println(mdp);%>" name="password">
							<!-- </form> -->
						</div>

					</div>

					<div>
						<!-- <form action="#" method="post"> -->

						<div class="mdpBouton01" style="display: inline-block">
							<button type="button" onclick="mdpMasque()">Modifier</button>
						</div>

						<div class="mdpBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="mdpBouton02" style="display: none">
							<button type="button" onclick="mdpMasque()">Annuler</button>
						</div>
						<!-- </form> -->
					</div>
				</div>

			</form>

		</div>


	</div>


	<!-- </div> -->


	<br>
	<br>
	<h3>Voir mes jardins personnels</h3>
	<div class="row justify-content-between" id="itemJardin">
		<div id="raccourciJardin"></div>
		<div>
			<a href="ajouterJardin.jsp"><input type="button"
				value="Ajouter un jardin" /></a>
		</div>
	</div>

	<div id="affichage">
		<c:out value="${presence}" />
	</div>

	<br>
	<br>
	<h3>Voir les jardins que je partage</h3>
	<div class="row justify-content-between" id="itemJardin">
		<div>
			<p>Vous n'avez pas de jardins partagés</p>
		</div>
		<div>
			<a href="mapGardens.jsp"><input type="button"
				value="Partager un jardin"></a>
		</div>
	</div>

	<%@include file="include/footer.jsp"%>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/methodes.js" type="text/javascript"></script>

</body>
</html>