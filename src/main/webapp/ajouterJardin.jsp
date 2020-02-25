<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>Ajouter un jardin</title>
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="css/stylesheet.css" rel="stylesheet">
	<link href="css/cssAjoutJardin.css" rel="stylesheet">
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
    	
   		<div class="form-inline my-2 my-lg-0" id="buttonNavBar">
     		<!-- <button class="btn btn-outline-success my-2 my-sm-0" type= "submit">Connexion</button>  -->
     		<div>
				<c:if test="${log == true }">
<!-- 					<form action="Deconnexion">
						<input type="submit" name="deconnexion" value="Deconnexion" />
					</form> -->
					<a href="<%=request.getContextPath()+"/Deconnexion"%>"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="deconnexion">Déconnexion</button></a>
				</c:if>
				<c:if test="${log != true }">
<!-- 					<form action="connexion.jsp" class="btn btn-outline-success my-2 my-sm-0">
						<input type="submit" name="connexion" value="Connexion" />
					</form> -->
					<a href="connexion.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="connexion">Connexion</button></a>
				</c:if>
			</div>
     		<div> <a href="inscription.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="inscription">Inscription</button></a> </div>
    	</div>
     </div>
   </nav>
   
    <div>	
	<h1>Ajouter un jardin</h1><br>
	<form action="AjoutJardin">
		<label for="name">Adresse (rue, n° ...) :</label><br><input type="text" id="adresse" name="adresse"><br> 
		<label for="name">Code postal :</label><br><input type="text" id="CP" name="CP"><br> 
		<label for="name">Ville :</label><br><input type="text" id="nomVille" name="nomVille"><br> 
		<label for="name">Coordonnées GPS :</label><br><input type="text" id="GPS" name="GPS"><br> 
		<label for="name">Type de jardin :</label><br>
		<select name="typeJardin" id="typeJardin">
			<option value="">Choisissez une option</option>
			<option value="privé">privé</option>
			<option value="collectif">collectif</option>
		</select><br>
		<label for="name">Type de sol :</label><br>
		<select name="typeSol" id="typeSol">
			<option value="">Choisissez une option</option>
			<option value="calcaire">calcaire</option>
			<option value="argileux">argileux</option>
			<option value="sableux">sableux</option>
			<option value="siliceux">siliceux</option>
			<option value="tourbeux">tourbeux</option>
			<option value="limoneux">limoneux</option>
		</select><br>
		<label for="name">Type de culture :</label><br>
		<select name="typeCulture" id="typeCulture">
			<option value="">Choisissez une option</option>
			<option value="hors sol">hors-sol</option>
			<option value="pleine terre">pleine terre</option>
		</select><br>
		<label for="name">Type de production :</label><br>
		<select name="typeProd" id="typeProd">
			<option value="">Choisissez une option</option>
			<option value="sous serre">en serre</option>
			<option value="sous tunnel">sous tunnel</option>
			<option value="en plein air">en plein air</option>
		</select><br>
		<label for="name">Superficie :</label><br><input type="text" id="superficie" name="superficie"> <br>
		<label for="name">Ajouter des cultures déjà présentes :</label><br><input type="text" id="cultures" name="cultures"> <br>
		<br> 
		<input type="submit" name="valider" id="valider" value="Valider"/>
	</form>
	</div>

   
   	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="js/methodes.js"></script>

</body>
</html>