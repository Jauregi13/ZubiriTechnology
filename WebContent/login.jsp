<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String nom_usuario = request.getParameter("nomUsuario");
	String password = request.getParameter("password");

	ClienteModelo clienteModelo = new ClienteModelo();
	
	Cliente cliente = clienteModelo.login(nom_usuario, password);
	
	
	if(cliente != null){
		
		cliente = clienteModelo.selectPorUsuario(nom_usuario);
		
		session.setAttribute("usuario", cliente);
		Carrito carrito = new Carrito();
		session.setAttribute("carrito", carrito);
		
		response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");
	}
	
	else {
		session.setAttribute("usuario", "incorrecto");
		response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");

	}

%>

</body>
</html>