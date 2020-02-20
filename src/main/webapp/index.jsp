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
<title>My local garden</title>
</head>

<body>
	<!-- <h1>My Local Garden</h1> -->
	<!-- Navigation bar -->
	<%@include file="include/header.jsp"%>

	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/garden.jpg" class="d-block w-100" alt="loup">
				<div class="carousel-caption d-none d-md-block">
					<h5>Loup polaire</h5>
					<p>Le loup polaire vit au pôle nord.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/ours.jpg" class="d-block w-100" alt="ours">
				<div class="carousel-caption d-none d-md-block">
					<h5>Ours polaire</h5>
					<p>L'ours polaire vit au pôle nord.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/tigre.jpg" class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Tigre polaire</h5>
					<p>Le tigre polaire vit au pôle nord.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/renard.jpg" class="d-block w-100" alt="ours">
				<div class="carousel-caption d-none d-md-block">
					<h5>Renard polaire</h5>
					<p>Le renard polaire vit au pôle nord.</p>
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

	<div id="content">
		<p class="alert alert-danger">Here is the code</p>
	</div>

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">The Wildlife of Nature</h1>
			<p class="lead">
				Discover our latest research project on the process of wolves
				packing when they are endangered in an unfriendly and unusual field,
				<a href="http://teacher.scholastic.com/wolves/gabout3.htm"
					title="How wolves pack">here.</a>
			</p>
		</div>
	</div>


	<div class="container">
		<div class="row">
			<div class="col-sm">
				<div class="card" style="width: 18rem;">
					<img src="img/polenord.jpg" class="card-img-top" alt="pole nord">
					<div class="card-body">
						<h5 class="card-title">North Pole</h5>
						<p class="card-text">The north pole is an extreme land on
							Earth welcoming a large amount of animals like bears, foxes,
							wolves and tigers.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: 18rem;">
					<img src="img/jungle.jpg" class="card-img-top" alt="jungle">
					<div class="card-body">
						<h5 class="card-title">Jungle</h5>
						<p class="card-text">The jungle is another land which welcomes
							the same animals as the North Pole. It's mostly situated in
							Central Africa, Australia and South America.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-sm">
				<div class="card" style="width: 18rem;">
					<img src="img/desert.jpg" class="card-img-top" alt="désert">
					<div class="card-body">
						<h5 class="card-title">Desert</h5>
						<p class="card-text">The desert is a final land welcoming a
							large amount of animals like scorpions or scarce snakes. Some
							foxes can be found there It's mostly located in North Africa and
							Australia.</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--  Footer -->
	<%@include file="include/footer.jsp"%>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

</body>
</html>
