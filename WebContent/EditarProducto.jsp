<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "modelo.*" %>
<%

Object sesion = (Cliente)session.getAttribute("usuario");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zubiri Technology</title>
</head>
<body>

<%

if(sesion == null){
	%>
	<jsp:include page="./menus/menuPrincipal.html"></jsp:include>
	<%
}

else {
	%>
	<jsp:include page="./menus/menuAdmin.jsp"></jsp:include>
	
	<form action = "EditarProducto" method="post">
	
	
	
	
	</form>
	
	<%
}






%>

</body>
</html>