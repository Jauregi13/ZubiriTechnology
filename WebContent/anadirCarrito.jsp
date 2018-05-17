<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%

int id_producto = Integer.parseInt(request.getParameter("id"));

ProductoModelo productoModelo = new ProductoModelo();

Producto producto = productoModelo.selectPorId(id_producto);

//producto.setCantidad_pedida(producto.getCantidad_pedida() + 1);

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
if(carrito.getProductos()== null){
	ArrayList<Producto> productos = new ArrayList();
	carrito.setProductos(productos);
}

if(carrito.getProductos().size() == 0){
	producto.setCantidad_pedida(1);
	carrito.getProductos().add(producto);
}
else {
	boolean existe = false;
	for(int i = 0; i < carrito.getProductos().size(); i ++){
		if(producto.getId() == carrito.getProductos().get(i).getId()){
			existe = true;
			carrito.getProductos().get(i).setCantidad_pedida(carrito.getProductos().get(i).getCantidad_pedida() + 1);
			break;
		}
		else {
			existe = false;
			
		}
	}
	
	if(!existe){
		producto.setCantidad_pedida(1);
		carrito.getProductos().add(producto);
	}
}
	

	carrito.setCantidad_total(carrito.getCantidad_total() + 1);
	
	
	carrito.setPrecio_total(carrito.getPrecio_total() + producto.getPrecio());


response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");




%>
</body>
</html>