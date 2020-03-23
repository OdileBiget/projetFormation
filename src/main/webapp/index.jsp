<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!-- Latest compiled and minified CSS -->
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/favicon.png">
<link href="css/stylesheet.css" rel="stylesheet">
<title>My local garden</title>
</head>

<body>

	<%@include file="include/header.jsp"%>

	<br>
	<br>


	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel" style="width: 70%; margin: auto;">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<a href="<%=request.getContextPath() + "/FruitsEtLegumes"%>">
				<img src="img/FetL.jpg" class="d-block w-100" alt="loup"></a>
				<div class="carousel-caption d-none d-md-block"
					style="background-color: rgba(255, 255, 255, 0.4);">
					<h5 style="color: #00008b;">Découvrez les fruits et légumes de
						saison ...</h5>
				</div>
			</div>

			<div class="carousel-item">
				<a href="<%=request.getContextPath() + "/MapGarden"%>">
				<img src="img/garden.jpg" class="d-block w-100" alt="ours"></a>
				<div class="carousel-caption d-none d-md-block"
					style="background-color: rgba(255, 255, 255, 0.4);">
					<h5 style="color: #00008b;">Un tr�sor se cache peut-�tre pr�s
						de chez vous !</h5>
					<h5 style="color: #00008b;">D�couvrez les jardins les mieux
						not�s du mois pr�c�dent...</h5>
				</div>
			</div>

			<div class="carousel-item">
				<img src="img/producteur.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block"
					style="background-color: rgba(255, 255, 255, 0.4);">
					<h5 style="color: #00008b;">Devenez producteur local et vendez
						vos cultures...</h5>
				</div>
			</div>
		</div>

		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<br>
	<!--  Fin du carousel -->
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">My Local Garden</h1>
			<p class="lead">
				Discover our latest research project on the process of wolves
				packing when they are endangered in an unfriendly and unusual field,
				<a href="http://teacher.scholastic.com/wolves/gabout3.htm"
					title="How wolves pack">here.</a>
			</p>
		</div>
	</div>
	<br>
	<br>


	<br>
	<br>
	<!--  Fin du carousel -->
	<div class="row justify-content-between" id="itemJardin"
		style="padding: 1.5em;">
		<div
			style="background-color: rgba(255, 250, 205); padding: 1em; font-family: Avantgarde, TeX Gyre Adventor, URW Gothic L; width: 25%;">
			<h3>A la une</h3>
			<div>
				<ul>
					<li><h5>Utilisateurs :</h5></li>
					<li><h5>Jardins :</h5></li>
				</ul>
			</div>
		</div>

		<div class="jumbotron jumbotron-fluid" style="width: 70%;">
			<div class="container">
				<h1 class="display-4">My Local Garden</h1>
				<p class="lead">
					Discover our latest research project on the process of wolves
					packing when they are endangered in an unfriendly and unusual
					field, <a href="http://teacher.scholastic.com/wolves/gabout3.htm"
						title="How wolves pack">here.</a>
				</p>
			</div>
		</div>
	</div>
	<br>
	<br>

	<!--  Footer -->
	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"
		type="text/javascript"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
