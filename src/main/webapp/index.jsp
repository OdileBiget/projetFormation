<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<body>
	<h2>Hello World!</h2>
	<div>
		<c:if test="${log == true }">
			<form action="Deconnexion">
				<input type="submit" name="deconnexion" value="Deconnexion" />
			</form>
		</c:if>
		<c:if test="${log != true }">
		<form action="connexion.jsp">
			<input type="submit" name="connexion" value="Connexion" />
		</form>
		</c:if>
		<form action="inscription.jsp">
			<input type="submit" name="inscription" value="Inscription" />
		</form>
	</div>
</body>
</html>
