<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="icone.JPG">
	<link href="css/stylesheet.css" rel="stylesheet">
	<title>Visualisez vos jardins</title>
	
	<style>
		#picture1{
			float:left;
			margin:10px;
		}
	</style>
	
</head>
<body>

	<%@include file="include/header.jsp"%>
	
	<br>
	<h2> Jardin <i>numéro du jardin</i></h2>
	<br><br>
	<a id="picture1"><img src="./img/exJardin.jpg" alt="image jardin 1"/></a>
	
	<div id="description">
		<p>Adresse: 
			<%
				String adresse = (String) request.getAttribute("addresse");
				out.println(adresse);
			%>
		</p>
	<br>
		<p>Ville: 
			<%
				String villeNom = (String) request.getAttribute("villeNom");
				out.println(villeNom);
			%>
		</p>
	<br>
		<p>Code postal: 
			<%
				String codePostal = (String) request.getAttribute("codePostal");
				out.println(codePostal);
			%>
		</p>
	<br>
		<p>Superficie: 
			<%
				String superficie = (String) request.getAttribute("superficie");
				out.println(superficie);
			%>
		</p>
	<br>
		<p>Type de jardin: 
			<%
				String typeJardin = (String) request.getAttribute("typeJardin");
				out.println(typeJardin);
			%>
		</p>
	<br>
		<p>Type de culture: 
			<%
				String typeCulture = (String) request.getAttribute("typeCulture");
				out.println(typeCulture);
			%>
		</p>
	<br>
		<p>Type de sol: 
			<%
				String typeSol = (String) request.getAttribute("typeSol");
				out.println(typeSol);
			%>
		</p>
	<br>
		<p>Type de production: 
			<%
				String typeProduction = (String) request.getAttribute("typeProduction");
				out.println(typeProduction);
			%>
		</p>
	<br>
	</div>
	
	<div>
	<a href="fileUpload.jsp">ajouter une image</a>
	<a href="JspUploadImage.jsp">voir images</a>
	</div>
	
	<a href="<%=request.getContextPath() + "/PageJardinsMiniatures"%>"><button type="button" class="btn btn-outline-dark" id="boutonRetour" class="mr-auto">Retour vers mes jardins</button></a>
	
	<%@include file="include/footer.jsp"%>
   

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<!--  <script src="js/methodes.js" type="text/javascript"></script> -->
	<script src="js/jardin.js" type="text/javascript"></script>
</body>
</html>