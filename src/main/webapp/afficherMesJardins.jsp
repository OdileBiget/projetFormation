<%@page import="java.util.List"%>
<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/favicon.png">
<link href="css/stylesheet.css" rel="stylesheet">
<title>Mes jardins</title>

<style>
#itemJardin {
	padding: 1.5em;
}

h3{
	padding: 0 10px;
}
</style>
</head>

<body>
	<%@include file="include/header.jsp"%>

	<br>
	<h3>Mes jardins personnels</h3>
	<div class="row justify-content-between" id="itemJardin">
		<div id="itemJ">
			<div class="container">
				<div class="card-deck" id="rowDiv">
				<c:if test="${sessionScope.presenceJardin == true}"/>
					
				</div>
			</div>
		</div>
		<div>
			<a href="ajouterJardin.jsp"><input type="button"
				class="btn btn-success" value="+ Ajouter un jardin" /></a>
		</div>
	</div>
	<br>
	<br>
	<h3>Mes jardins partagés</h3>
	<div class="row justify-content-between" id="itemJardin">
		<div>
			<p>Vous n'avez pas de jardins partagés.</p>
		</div>
		<div>
			<a href="mapGarden"><input type="button"
				class="btn btn-success" value="+ Partager un jardin"></a>
		</div>
	</div>

	<%@include file="include/footer.jsp"%>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<!--  <script src="js/methodes.js" type="text/javascript"></script> -->
	<script src="js/jardin.js" type="text/javascript"></script>
	<script>
		$(document).ready(function(){
			var jsonPara = <c:out value="${jsonJardins}" escapeXml="false"/>;
			affichageJardinsCarte(jsonPara);
		});
	</script>

</body>
</html>