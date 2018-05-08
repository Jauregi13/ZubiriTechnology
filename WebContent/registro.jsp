<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro</title>
</head>
<body>

<%
ClienteModelo clienteModelo = new ClienteModelo();
Cliente cliente = new Cliente();

String nombre = request.getParameter("nombre").toString();
String apellidos = request.getParameter("apellidos").toString();
String dni = request.getParameter("dni").toString();
String fecha = request.getParameter("fecha").toString();

Date fecha_convertida = new SimpleDateFormat("yyyy-MM-dd").parse(fecha);

String nomUsuario = request.getParameter("nomUsuario").toString();
String password = request.getParameter("password").toString();


cliente.setNombre(nombre);
cliente.setApellidos(apellidos);
cliente.setDni(dni);
cliente.setFechaNacimiento(fecha_convertida);
cliente.setNombreUsuario(nomUsuario);
cliente.setContrasena(password);

clienteModelo.registro(cliente);

Cliente clienteValido = clienteModelo.selectPorUsuario(nomUsuario);

session.setAttribute("usuario", clienteValido);

response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");


%>
</body>
</html>