<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Inscription</title>
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="css/cssFormulaires.css" rel="stylesheet">
</head>
<body>

		<nav class="navbar navbar-light navbar navbar-expand-lg" style="background-color: #e0ffff;">
  		<a class="navbar-brand" href="#">My Local Garden</a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>

 	 <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
	      </li>
     	 <li class="nav-item dropdown">
       		 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Nos jardins</a>
       		 	<div class="dropdown-menu" aria-labelledby="navbarDropdown">
         	 		<a class="dropdown-item" href="mapGardens.jsp">Carte des jardins</a>
         	 		<a class="dropdown-item" href="#">Choix</a>
        		</div>
      	 </li>
     	 <li class="nav-item">
        	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Producteurs</a>
     	 		<div class="dropdown-menu" aria-labelledby="navbarDropdown">
         	 		<a class="dropdown-item" href="mapGardens.jsp">Nos producteurs locaux</a>
         	 		<a class="dropdown-item" href="#">Acheter leurs produits</a>
        		</div>
     	 </li>
      	 <li class="nav-item">
	        <a class="nav-link" href="whoWeAre.jsp">Qui sommes-nous ?</a>
	      </li>
    	</ul>
     </div>
   </nav>
   
   <div #fondForm>	
	<h1>Inscription</h1><br>
	<form action="Inscription">
		<label for="name">Nom :</label><br><input type="text" id="nom" name="nom"><br> 
		<label for="name">Prénom :</label><br><input type="text" id="prenom" name="prenom"><br> 
		<label for="name">E-mail :</label><br><input type="text" id="email" name="email"><br> 
		<label for="name">Telephone :</label><br><input type="text" id="tel" name="tel"><br> 
		<label for="name">Mot de passe :</label><br><input type="text" id="mdp" name="mdp"> <br>
		<br> <input type="submit" name="inscription" value="Inscription" />
	</form>
	</div>	
	<br>
	<c:out value="${message}"></c:out>
	<br>		
	<a href="profil.jsp"> Profil</a>
	<a href="index.jsp"> Accueil</a>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script> 
	
</body>
</html>