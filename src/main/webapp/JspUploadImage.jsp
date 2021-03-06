<%@page import="com.sun.xml.txw2.Document"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="java.util.List"%>
<%@page import="beans.photoJardin"%>
<%@page import="beans.JardinProfil"%>
<%@page import="beans.Profil"%>
<%@page import="services.ImageImpl"%>
<%@page import="services.JardinImpl"%>
<%@page import="java.io.File"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="img/favicon.png">
<link href="css/stylesheet.css" rel="stylesheet">


<title>Insert title here</title>
</head>
<body>

	<%@include file="include/header.jsp"%>

	<div id="result">
		<%-- <h3>${requestScope["message"]}</h3> --%>
		<%
			ImageImpl iI = new ImageImpl();
			JardinImpl jl = new JardinImpl();
			/* mon trafic */
			int id = (int) session.getAttribute("idJ");

			Profil profil = (Profil) session.getAttribute("user");

			List<JardinProfil> listeJardins = profil.getJardin();

			JardinProfil jP = new JardinProfil();

			for (JardinProfil j : listeJardins) {

				if (j.getId() == id) {

					jP = j;

				}
			}

			List<photoJardin> listePhotos = jP.getImage();
			for (int i = 0; i < listePhotos.size(); i++) {
		%>
		<%-- <h2><%=i%></h2> --%>
		<div>
			<figure class="figure">

				<img
					src="/<%="JardinSite/src/main/webapp/fileDownload/" + listePhotos.get(i).getImage()%>"
					alt="<%=listePhotos.get(i).getNom()%>"
					class="figure-img img-fluid rounded"
					style="height: 400px; width: 300px;" />

				<figcaption class="figure-caption">

					<%=listePhotos.get(i).getNom()%>
					<%=listePhotos.get(i).getId()%>

				</figcaption>

			</figure>


			<form method="post" action="deleteFile">

				<label for="idFile"></label> <input name="ID" type="number"
					value="<%=listePhotos.get(i).getId()%>"> <input
					type="submit" value="Delete">

			</form>

			<%
				}
				/* }*/
			%>
		</div>
	</div>

	<%@include file="include/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/testUploadFile.js" type="text/javascript"></script>
	<script src="js/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>