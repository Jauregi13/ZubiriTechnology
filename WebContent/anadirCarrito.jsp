<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%

int id_producto = Integer.parseInt(request.getParameter("id"));

ProductoModelo productoModelo = new ProductoModelo();

Producto producto = productoModelo.selectPorId(id_producto);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zubiri Technology</title>
</head>
<body>
<%

Carrito carrito = (Carrito)session.getAttribute("carrito");
ArrayList<Producto> productos = new ArrayList();

productos.add(producto);

carrito.setProductos(productos);
carrito.setContador(carrito.getContador() + 1);

session.setAttribute("carrito", carrito);

response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");




%>
</body>
</html>