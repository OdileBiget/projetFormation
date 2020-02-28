<%@page import="beans.Profil"%>
<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@page import="beans.Profil"%>

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

/*  	#boutonModif
	{
	float: right;
	}  */
</style>

</head>

<body id="bodyProfile">

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
 								Profil profil = (Profil) session.getAttribute("user");
 								String name = profil.getNom();
 								out.println(name);
 								%>
							</a>
						</div>

						<div id="modifNom" style="display: none">
						
							<label for="name"></label><input type="text"
								value="<%out.println(name);%>" name="nom">
							
						</div>
					</div>

					<div>

						<div class="nomBouton01" style="display: inline-block">
							<button type="button" onclick="NomAfficherMasquer()">Modifier</button>
						</div>

						<div class="nomBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="nomBouton02" style="display: none">
							<button type="button" onclick="NomAfficherMasquer()">Annuler</button>
						</div>
				
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
 								String prenom = profil.getPrenom();
 								out.println(prenom);
								 %>
							</a>
						</div>

						<div id="modifPrenom" style="display: none">
						
							<label for="prenom"></label><input type="text"
								value="<%out.println(prenom);%>" name="prenom">
						
						</div>

					</div>

					<div>
						
						<div class="prenomBouton01" style="display: inline-block">
							<button type="button" onclick="prenomMasque()">Modifier</button>
						</div>

						<div class="prenomBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="prenomBouton02" style="display: none">
							<button type="button" onclick="prenomMasque()">Annuler</button>
						</div>
						
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
									<c:when test="${mailExistant==true }">
										<div onload="mailMasque()">
											<a id="mailPris"> Ce mail est déjà utilisé</a>
										</div>

									</c:when>
									<c:otherwise>
										<a> <%
 											String mail = profil.getMail();
 											out.println(mail);
 											%>
										</a>
									</c:otherwise>
								</c:choose>
							</div>

						</div>

						<div id="modifMail" style="display: none">
						
							<label for="mail"></label><input type="text"
								value="<%out.println((String)profil.getMail());%>"
								name="mail">
					
						</div>

					</div>

					<div>

						<div class="mailBouton01" style="display: inline-block">
							<button type="button" onclick="mailMasque()">Modifier</button>
						</div>

						<div class="mailBouton02" style="display: none">
							<button type="submit">Valider</button>
						</div>

						<div class="mailBouton02" style="display: none">
							<button type="button" onclick="mailMasque()">Annuler</button>
						</div>
						
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
 								String tel = profil.getNumeroTel();
 								out.println(tel);
 								%>
							</a>
						</div>

						<div id="modifTel" style="display: none">
						
							<label for="numeroTel"></label><input type="text"
								value="<%out.println(tel);%>" name="numeroTel">
				
						</div>

					</div>

					<div>

						<div class="telBouton01" style="display: inline-block">
							<button type="button" onclick="telMasque()">Modifier</button>
						</div>

						<div class="telBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="telBouton02" style="display: none">
							<button type="button" onclick="telMasque()">Annuler</button>
						</div>
						
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
 								String mdp = profil.getPassword();
 								out.println(mdp);
 								%>
							</a>
						</div>

						<div id="modifMdp" style="display: none">
						
							<label for="password"></label><input type="text"
								value="<%out.println(mdp);%>" name="password">
							
						</div>

					</div>

					<div>
						
						<div class="mdpBouton01" style="display: inline-block">
							<button type="button" onclick="mdpMasque()">Modifier</button>
						</div>

						<div class="mdpBouton02" style="display: none">
							<button type="submit" onclick="#">Valider</button>
						</div>

						<div class="mdpBouton02" style="display: none">
							<button type="button" onclick="mdpMasque()">Annuler</button>
						</div>
						
					</div>
				</div>

			</form>

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