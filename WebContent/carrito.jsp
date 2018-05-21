<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zubiri Technology</title>
</head>
<body>
<%
Object sesion = session.getAttribute("usuario");
Carrito carrito = (Carrito)session.getAttribute("carrito");

if(sesion == null){
	response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");
}
else {
	%>
	<jsp:include page="./menus/menuUsuario.jsp"></jsp:include>
	<%
}
%>
<div class="container">
	<br>
	<div class="row">
	<%
		if(carrito.getProductos() == null){
			%>
				<div class="col-sm-12">
					<div class="card text-center bg-light mb-9" style="max-width: 18rem;">
		  				<div class="card-body">
			    			<h3 class="card-title">El carrito está vacío</h3>
	  					</div>
					</div>
				</div>
			<%
		}
		else {
			%>
			<table class="table">
				<thead class="bg-light">
				  <tr>
				    <th></th>
				    <th>Producto</th>
				    <th>Precio</th>
				    <th>Unidades</th>
				    <th>Total</th>
				  </tr>
				</thead>
				<tbody>
					<%
						ArrayList<Producto> productos = carrito.getProductos();
						for(int i = 0; i < productos.size(); i ++){
							Producto producto = productos.get(i);
							%>
							<tr>
				    		<th scope="row"><%=i+1%></th>
						    <td><%=producto.getNombre() %></td>
						    <td><%=producto.getPrecio() %></td>
						    <td><%=producto.getCantidad_pedida() %></td>
						    <td><%=producto.getPrecio() * producto.getCantidad_pedida() %><span class="glyphicon glyphicon-euro"></span></td>
				  			</tr>
				  			<%
						}

					%>
					
					<thead class="bg-light">
						<th></th>
				    	<th></th>
				    	<th></th>
				    	<th></th>
						<th>Precio total</th>
						<tbody>
							<td></td>
						    <td></td>
						    <td></td>
						    <td></td>
							<td><%=carrito.getPrecio_total() %></td>
						
						</tbody>				
					</thead>
				</tbody>
			</table>
			<a class="btn btn-primary" href='Comprar'>Realizar Pedido</a>
			<%
		}
	
	%>
	
	</div>

</div>

<%

%>

</body>
</html>