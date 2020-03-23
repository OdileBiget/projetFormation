<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="java.util.List"%>
<%@page import="beans.photoJardin"%>
<%@page import="beans.JardinProfil"%>
<%@page import="beans.Profil"%>
<%@page import="services.ImageImpl"%>
<%@page import="services.JardinImpl"%>
<%@page import="java.io.File"%>



<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/favicon.png">
<link href="css/stylesheet.css" rel="stylesheet">
<link href="css/testUploadFile.css" rel="stylesheet">

<title>Visualisez vos jardins</title>

<style>
#picture1 {
	float: left;
	margin: 10px;
}
</style>

</head>

<body>

	<%@include file="include/header.jsp"%>

	<br>
	<h2>
		Jardin <i>numéro du jardin</i>
	</h2>
	<br>

	<div>
		<a href="<%=request.getContextPath() + "/PageJardinsMiniatures"%>"><button
				type="button" class="btn btn-outline-dark" id="boutonRetour"
				class="mr-auto">Retour vers mes jardins</button></a>
	</div>
	<br>

	<%
		JardinProfil jP = (JardinProfil) session.getAttribute("monJardin");

		List<photoJardin> listePhotos = jP.getImage();
		System.out.println("listPhotos :" +listePhotos);

	%>

	<div class="container">

		<div class="row">

			<!-- Colonne 1 : image de présentaiton jardin -->

			<div class="col-4">

				<%
					try {
						if (jP.getImage().get(0) != null) {
				%>
				<figure class="figure">
					<img
						src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(0).getImage()%>"
						class="figure-img img-fluid rounded"
						alt="A generic square placeholder image with rounded corners in a figure.">
					<figcaption class="figure-caption">Mon jardin</figcaption>
					<%
						System.out.println("JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(0).getImage());
					%>
				</figure>
				<%
					} else {
				%>
				<figure class="figure">
					<img src="./img/exJardin.jpg" class="figure-img img-fluid rounded"
						alt="A generic square placeholder image with rounded corners in a figure.">
					<figcaption class="figure-caption">Mon jardin</figcaption>

				</figure>

				<%
					}
					} catch (Exception e) {
						/*  Nothing */
					}
				%>
				<!-- <figcaption class="figure-caption">Mon jardin</figcaption>

				</figure> -->

				<div class="row">

					<!------------------------------------- Fenêtre modale pour ajout image : clique btn "ajouter photo" ------------------------------------->

					<div id="windowImage">

						<button class="btn btn-success" id="btn-ajoutImage"
							data-target=".modalAjout">Ajouter une image</button>

						<div id="myModal" class="modalAjout">

							<div class="modal-content">

								<form method="post" action="ImageDeMerde" id="#"
									enctype="multipart/form-data">


									<div class="modal-header">
										<h1>Ajouter une photo</h1>
										<span class="close" id="closeAjout"> &times; </span>
									</div>

									<div class="modal-body">

										<div class="container">

											<div class="row">

												<div class="col-md-12">

													<div class="form-group files color">

														<label for="pathFile"></label> <input name="file"
															type="file" class="form-control" accept="image/*"
															onchange="readURL(this);">

													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="modal-footer">
										<button type="submit" class="btn btn-light">Valider</button>
									</div>

								</form>
							</div>
						</div>
					</div>

					<!-- -----------------------------Fenêtre modale pour supression images ; clique btn "supression photo"---------------------------- -->

					<div id="suppImage">

						<button class="btn btn-danger" id="btn-suppImage"
							data-target=".modalSuppression">Supprimer une image</button>

						<div id="myModalSupp" class="modalSuppression">

							<div class="modal-content">

								<div class="modal-header">

									<h1>Supprimer une photo</h1>

									<span class="close" id="closeSupp"> &times; </span>

								</div>

								<div class="modal-body">

									<div class="container">

										<div class="row">

											<div class="col-md-12">

												<div class="form-group">

													<%
														for (int i = 0; i < listePhotos.size(); i++) {
													%>


													<div class="container">

														<div class="row">

															<div class="col-sm">

																<img
																	src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(i).getImage()%>"
																	alt="<%=listePhotos.get(i).getNom()%>"
																	style="margin-left: 6em; margin-right: auto; width: 30em">

															</div>

															<div class="col-sm">

																<form method="post" action="deleteFile">

																	<label for="idFile"></label> <input name="ID"
																		type="number" value="<%=listePhotos.get(i).getId()%>"
																		style="display: none">

																	<button type="submit" class="btn btn-danger">Supprimer</button>

																</form>
															</div>
														</div>
														<br>
													</div>

													<%
														}
													%>

												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">Mettre un texte</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- -----------------Colonnes "mon adresse" et "mon jardin"--------------------- -->

			<div class="col-4">

				<ul class="list-group">
					<li class="list-group-item">Mon adresse</li>

					<li class="list-group-item disabled">
						<%
							out.println(jP.getAdresse());
						%>
					</li>

					<li class="list-group-item disabled">
						<%
							out.println(jP.getVilleNom());
						%>
					</li>

					<li class="list-group-item disabled">
						<%
							out.println(jP.getCodePostal());
						%>
					</li>
				</ul>
			</div>

			<div class="col-4">
				<ul class="list-group">
					<li class="list-group-item">Mon jardin</li>

					<li class="list-group-item disabled">Superficie : <%
						out.println(jP.getSuperficie() + " m²");
					%>
					</li>

					<li class="list-group-item disabled">Jardin : <%
						out.println(jP.getTypeJardin());
					%>
					</li>

					<li class="list-group-item disabled">Culture : <%
						out.println(jP.getTypeCulture());
					%>
					</li>

					<li class="list-group-item disabled">Sol : <%
						out.println(jP.getTypeSol());
					%>
					</li>

					<li class="list-group-item disabled">Production : <%
						out.println(jP.getTypeSol());
					%>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 	------------------ Caroussel ---------------------->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" style="width: 400px; margin: 0 auto">
		<ol class="carousel-indicators">
			<%
				for (int i = 0; i < listePhotos.size(); i++) {

					if (i == 0) {
			%>
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>


			<%
				} else {
			%>
			<li data-target="#carouselExampleIndicators" data-slide-to="<%=i%>"></li>
			<%
				}
				}
			%>
		</ol>


		<div class="carousel-inner">
			<%
				for (int i = 0; i < listePhotos.size(); i++) {

					if (i == 0) {
			%>
			<div class="carousel-item active">
				<img
					src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(i).getImage()%>"
					class="d-block w-100" alt="<%=listePhotos.get(i).getNom()%>"
					style="height: 400px; width: 300px;">
			</div>
			<%
				} else {
			%>
			<div class="carousel-item">
				<img
					src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(i).getImage()%>"
					class="d-block w-100" alt="<%=listePhotos.get(i).getNom()%>"
					style="height: 400px; width: 300px;">
			</div>
			<%
				}
				}
			%>
		</div>

		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<%@include file="include/footer.jsp"%>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<!--  <script src="js/methodes.js" type="text/javascript"></script> -->
	<script src="js/jardin.js" type="text/javascript"></script>
	<script src="js/testUploadFile.js" type="text/javascript"></script>
</body>

</html>