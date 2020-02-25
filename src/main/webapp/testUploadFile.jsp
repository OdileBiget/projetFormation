<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="css/testUploadFile.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="row">
		
			<div class="col-md-6">
				<form method="post" action="#" id="#">

					<div class="form-group files color">
						<label>Upload Your File </label> <input type="file"
							class="form-control" multiple="" accept="image/*">
					</div>

				</form>

			</div>
		</div>
	</div>

	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/testUploadFile.js" type="text/javascript"></script>
</body>
</html>