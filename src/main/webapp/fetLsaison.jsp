<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!-- Latest compiled and minified CSS -->
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="img/favicon.png">
	<link href="css/stylesheet.css" rel="stylesheet">
	<title>Fruits et légumes de saison</title>
</head>
<body>
<%@include file="include/header.jsp"%>
	
	<br>
	
	<h3>Découvrez les fruits et légumes de saison</h3>
	<p id="date"></p>
	<p>Cliquez sur un produit pour voir s'il est disponible dans un jardin près de chez vous !</p>
	<div id="FLsaison">
	</div>
	
	<br><br>
	
<%@include file="include/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
<script src="js/jardin.js" type="text/javascript"></script>
<script>
	$(document).ready(function(){
		var jsonFL = <c:out value="${jsonFL}" escapeXml = "false"/>;
		affichageFLsaison(jsonFL);
	});
</script>
</body>
</html>