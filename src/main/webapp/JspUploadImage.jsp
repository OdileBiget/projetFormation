<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="java.util.List"%>
<%@page import="beans.photoJardin"%>
<%@page import="services.ImageImpl"%>
<%@page import="java.io.File"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1>File Upload to Database Demo</h1>

	<h1>Upload any image to mysql DB</h1>

	<div id="result">
		<h3>${requestScope["message"]}</h3>
		<%
			ImageImpl iI = new ImageImpl();
			List<photoJardin> listePhotos = iI.findAll();
			for (int i = 0; i < listePhotos.size(); i++) {
				
		%>
		<h2><%= i %></h2>
		<div>
			<figure>
				<img src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(i).getImage()%>"
					alt="<%=listePhotos.get(i).getNom()%>" />
				<figcaption>
					<h3><%=listePhotos.get(i).getNom() + i%>
					</h3>
				</figcaption>
			</figure>
			<%
				}
			%>
		</div>
	</div>
	


	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/testUploadFile.js" type="text/javascript"></script>
</body>
</html>