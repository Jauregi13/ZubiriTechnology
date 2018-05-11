<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zubiri Technology</title>
</head>
<body>
<%
Object sesion = session.getAttribute("usuario");

if(sesion == null){
	response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");
}
else {
	%>
	<jsp:include page="./menus/menuUsuario.jsp"></jsp:include>
	<%
}


%>

</body>
</html>