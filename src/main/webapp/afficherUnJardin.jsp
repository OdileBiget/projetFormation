<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="icone.JPG">
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

	<div class="container">

		<div class="row">

			<div class="col-4">
				<figure class="figure">
					<img src="./img/exJardin.jpg" class="figure-img img-fluid rounded"
						alt="A generic square placeholder image with rounded corners in a figure.">
					<figcaption class="figure-caption">Mon jardin</figcaption>
				</figure>

				<div id="windowImage">

					<button class="btn btn-success" id="btn-ajoutImage">Ajouter
						une image</button>

					<div id="myModal" class="modal">

						<div class="modal-content">

							<form method="post" action="ImageDeMerde" id="#"
								enctype="multipart/form-data">


								<div class="modal-header">
									<h1>Mettre un titre</h1>
									<span class="close"> &times; </span>
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
				<div>
					<a href="JspUploadImage.jsp"><button class="btn btn-success" style="margin-top: 20px;">voir
							image</button></a>
				</div>

			</div>

			<div class="col-4">

				<ul class="list-group">
					<li class="list-group-item">Mon adresse</li>

					<li class="list-group-item disabled">
						<%
							String adresse = (String) request.getAttribute("addresse");
							out.println(adresse);
						%>
					</li>

					<li class="list-group-item disabled">
						<%
							String villeNom = (String) request.getAttribute("villeNom");
							out.println(villeNom);
						%>
					</li>

					<li class="list-group-item disabled">
						<%
							String codePostal = (String) request.getAttribute("codePostal");
							out.println(codePostal);
						%>
					</li>
				</ul>
			</div>

			<div class="col-4">
				<ul class="list-group">
					<li class="list-group-item">Mon jardin</li>
 
					<li class="list-group-item disabled">Superficie : <%
						String superficie = (String) request.getAttribute("superficie");
						out.println(superficie + " m²");
					%>
					</li>

					<li class="list-group-item disabled">Jardin : <%
						String typeJardin = (String) request.getAttribute("typeJardin");
						out.println(typeJardin);
					%>
					</li>

					<li class="list-group-item disabled">Culture : <%
						String typeCulture = (String) request.getAttribute("typeCulture");
						out.println(typeCulture);
					%>
					</li>

					<li class="list-group-item disabled">Sol : <%
						String typeSol = (String) request.getAttribute("typeSol");
						out.println(typeSol);
					%>
					</li>

					<li class="list-group-item disabled">Production : <%
						String typeProduction = (String) request.getAttribute("typeProduction");
						out.println(typeProduction);
					%>
					</li>
				</ul>
			</div>
		</div>
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