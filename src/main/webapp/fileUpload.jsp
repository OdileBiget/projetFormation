<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="icon" href="img/favicon.png">
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/testUploadFile.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="row">
		
			<div class="col-md-6">
			
				<form method="post" action="ImageDeMerde" id="#"  enctype="multipart/form-data">

					<div class="form-group files color">
					
						<label for="pathFile">Upload Your File </label> <input name="file"type="file"
							class="form-control" accept="image/*" onchange="readURL(this);">
							
					</div>
										
					<input type="submit" value="Valider" >

				</form>

			</div>
		</div>
	</div>

	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/testUploadFile.js" type="text/javascript"></script>
</body>
</html>