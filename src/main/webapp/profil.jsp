<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
	<!-- Latest compiled and minified CSS -->
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="icone.JPG">
	<link href="css/stylesheet.css" rel="stylesheet">
	<title>My local garden</title>
	
	<style>	
	#cadreProfil{
		background-color: #fffacd;
		text-align: justify;
		width: 40%;
		padding: 1em;
		margin: auto;
		border: 1px #d2b48c solid;
	}
	
	h2
	{
	text-align: center;
	}
	
	#item
	{
	padding: 1em;
	}
	
	#itemJardin
	{
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
   
   <br>
   <div id="cadreProfil">
   <h2>Mon profil</h2>
   <hr><br>
   <div id="eachItem">
		<b>Nom:</b>
		<div class="row justify-content-between" id="item">
		<div><% String name = (String) session.getAttribute("nom"); 
		out.println(name);%></div>
		<div><form><input type="button" value="Modifier"></form></div>
		</div> 
   </div>
   <div id="eachItem">
		<b>Prénom:</b>
		<div class="row justify-content-between" id="item">
		<div><% String surname = (String) session.getAttribute("prenom"); 
		out.println(surname);%></div>
		<div><form><input type="button" value="Modifier"></form></div>
		</div> 	   
   </div>
   <div id="eachItem">
		<b>Adresse e-mail:</b>
		<div class="row justify-content-between" id="item">
		<div><% String mail = (String) session.getAttribute("mail"); 
		out.println(mail);%></div>
		<div><form><input type="button" value="Modifier"></form></div>
		</div>   
   </div>
   <div id="eachItem">
		<b>Numéro de téléphone:</b>
		<div class="row justify-content-between" id="item">
		<div><% String tel = (String) session.getAttribute("numeroTel"); 
		out.println(tel);%></div>
		<div><form><input type="button" value="Modifier"></form></div>
		</div>
	</div>
	<div id="eachItem">
		<b>Mot de passe:</b>
		<div class="row justify-content-between" id="item">
		<div><% String mdp = (String) session.getAttribute("password"); 
		out.println(mdp);%></div>
		<div><form><input type="button" value="Modifier"></form></div>
		</div>    
   </div>
   </div>
   <br><br>
   <h3>Voir mes jardins personnels</h3>
   <div class="row justify-content-between" id="itemJardin">
   		<div id="raccourciJardin">
   			<c:choose>
   				<c:when test="${sessionScope.presenceJardin == true}">
   					<div class="container">
						<div class="row">
							<div class="col-sm">
								<div class="card" style="width: 18rem;">
									<img src="img/exJardin.jpg" class="card-img-top" alt="jardin1">
									<div class="card-body">
										<h5 class="card-title">Jardin</h5>
										<p class="card-text">The north pole is an extreme land on Earth welcoming a large amount of animals like bears, foxes, wolves and tigers.</p>
										<a href="#" class="btn btn-primary">Go somewhere</a>
									</div>
								</div>
							</div>
						</div>
					</div>
   				</c:when>
   				<c:otherwise>
   					<% out.println("Vous n'avez pas de jardin"); %>
   				</c:otherwise>
   			</c:choose>
   		</div>
   		<div>
   			<a href="ajouterJardin.jsp"><input type="button" value="Ajouter un jardin"/></a>
   		</div>
   </div>
   <br>
   	<div id="affichage">
		<!--<c:out value="${presence}"/>-->
	</div>
	   
   <br><br>
   <h3>Voir les jardins que je partage</h3>
   <div class="row justify-content-between" id="itemJardin">
   		<div>
   			<p> Vous n'avez pas de jardins partagés</p>
   		</div>
   		<div>
   			<a href="mapGardens.jsp"><input type="button" value="Partager un jardin"></a>
   		</div>
   </div>
   
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script> 
	<script src="js/methodes.js"></script>
	
</body>
</html>