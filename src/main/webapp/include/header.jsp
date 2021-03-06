<%@page import="beans.Profil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<nav class="navbar navbar-light navbar navbar-expand-lg"
	style="background-color: #e0ffff;">
	<a class="navbar-brand" href="index.jsp">My Local Garden</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="MapGarden" id="navbarDropdown">Trouver un jardin</a></li>
			<li class="nav-item"><a class="nav-link" href="FruitsEtLegumes" id="navbarDropdown">Produits de saison</a></li>
			<li class="nav-item"><a class="nav-link" href="whoWeAre.jsp">Qui sommes-nous ?</a></li>
		</ul>
		<div class="form-inline my-2 my-lg-0" id="buttonNavBar">
			<!-- <button class="btn btn-outline-success my-2 my-sm-0" type= "submit">Connexion</button>  -->
			<div>
			
				<c:choose>
				
					<c:when test="${sessionScope.connexion.equals('reussi')}">
						
						<div class="navbar-nav mr-auto dropdown">
						
							<a class="nav-link dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Mon Compte </a>
							
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">

								<a class="dropdown-item" href="profil.jsp">Mon profil</a> 
								
								<a class="dropdown-item" href="<%=request.getContextPath() + "/PageJardinsMiniatures"%>">Voir
									mes jardins</a> 
									
								<a class="dropdown-item" href="#">Something	else here</a>
								
								<div class="dropdown-divider"></div>
								
								<a class="dropdown-item" style="background-color: #e6e6fa; font-weight: bold;"> ${ sessionScope.prenom }
									${ sessionScope.nom }</a> 
								
								<a class="dropdown-item" href="<%=request.getContextPath() + "/Deconnexion"%>">
								<button	class="dropdown-item" type="submit" name="deconnexion" style="color: #008b8b; font-weight: bold;">Déconnexion</button>
								
								</a>
							</div>
						</div>
					</c:when>
					
					<c:otherwise>
						<div class="connexion">
						
							<a href="connexion.jsp">
							
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit" name="connexion">Connexion</button>
									
							</a> 
							
							<a href="inscription.jsp">
							
								<button
									class="btn btn-outline-success my-2 my-sm-0" type="submit"
									name="inscription">Inscription</button>
									
							</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</nav>