<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet"> -->
<!-- Latest compiled and minified CSS -->
	<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link rel="icon" href="img/favicon.png">
	<link href="css/stylesheet.css" rel="stylesheet">
	<title>Fruits et l�gumes de saison</title>
</head>
<body>

<%@include file="include/header.jsp"%>
	
	<br>
	
		Vous pouvez trouver des <% String name = (String) request.getAttribute("nom"); out.println(name); %> dans les jardins suivants :
	<br><br>		

	<div id="itemJ">
		<div class="container">
			<div class="card-deck" id="rowDiv">

			</div>
		</div>
	</div>
	
	<br><br>
	
	
<%@include file="include/footer.jsp"%>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
<script src="js/jardin.js" type="text/javascript"></script>
<script>
	$(document).ready(function(){
		var fruit = "<c:out value="${nom}" escapeXml="false"/>";
		var json = <c:out value="${json}" escapeXml="false"/>;
		affichageJardinSaison(json, fruit);
	});
</script>

</body>
</html>