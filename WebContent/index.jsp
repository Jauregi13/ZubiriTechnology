<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%
CategoriaModelo categoriaModelo = new CategoriaModelo();
ArrayList<Categoria> categorias = categoriaModelo.selectAll();

ProductoModelo productoModelo = new ProductoModelo();
ArrayList<Producto> productos = productoModelo.selectAll();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Zubiri Technology</title>
</head>

<body>

<%
Object sesion = session.getAttribute("usuario");
Object sesion2 = session.getAttribute("carrito");
Cliente cliente = new Cliente();

if(sesion == null && sesion2 == null){
%>	
	<jsp:include page="./menus/menuPrincipal.html"></jsp:include>
<%
}	
else if(sesion.equals("incorrecto")){
		%>
		<jsp:include page="./menus/menuPrincipal.html"></jsp:include>
		
		<script>
	      $(document).ready(function()
	      {
	         $("#login").modal("show");
	         
	         $("#cerrar").click(function(){
	        	 $("#login").modal("hide");
	         });
	      });
	    </script>
		<div class="modal" id="login">
	    <div class="modal-dialog">
	      <div class="modal-content border-danger text-danger">
	      
	        <div class="modal-header">
	          <h4 class="modal-title">Inicio de sesión incorrecta</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        
	        <div class="modal-body">
	          <p>Introduce de nuevo el nombre de usuario y la contraseña</p>
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#inicioSesion" id="cerrar">Inténtalo de nuevo</button>
	        </div>
	        
	        
	      </div>
	    </div>
	  </div>
	<%
	session.removeAttribute("usuario");
	}
else {
	 cliente = (Cliente)sesion;
		if(cliente.getRol().equals("Usuario")){
			%>
			<jsp:include page="./menus/menuUsuario.jsp"></jsp:include>
			<%
		}
		else {
			
			%>
			<jsp:include page="./menus/menuAdmin.jsp"></jsp:include>
		<%
		}
	}	


%>
<div class="container">
	<div id="demo" class="carousel slide" data-ride="carousel">
	
		  <!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li data-target="#demo" data-slide-to="0" class="active"></li>
		    <li data-target="#demo" data-slide-to="1"></li>
		    <li data-target="#demo" data-slide-to="2"></li>
		  </ul>
		  
		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="images/100.jpg" alt="Los Angeles" style="width:100%;">
		    </div>
		    <div class="carousel-item">
		      <img src="images/101.jpg" alt="Chicago" style="width:100%;">
		    </div>
		    <div class="carousel-item">
		      <img src="images/102.jpg" alt="New York" style="width:100%;">
		    </div>
		  </div>
		  
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
	</div>
</div>
<div class="row">
		<div class="col-sm-2">
			<nav class="nav flex-column flex-nowrap bg-light">
			<center><h3>Categorias</h3></center>
			<%
				Iterator<Categoria> i = categorias.iterator();
			
				while(i.hasNext()){
					Categoria categoria = i.next();
					%>
					<a class="nav-link" href="#"><%=categoria.getNombre() %></a>
				<%
				}
			
			%>
			</nav>
		</div>
	
</div>

<div class="container">
	<div class="row">
		<%
			Iterator<Producto> i2 = productos.iterator();
		
			while(i2.hasNext()){
				Producto producto = i2.next();
				%>
				<div class="col-sm-3">
					<div class="card" style="width: 18rem;">
				  		<center><img class="card-img-top" src="images/msiGeForceGTX1050.jpg" style="width:70%;" ></center>
				  		<div class="card-body">
				    		<h5 class="card-title"><%=producto.getNombre() %></h5>
				    		<p class="card-text"><%=producto.getDescripcion() %></p>
				    		<a href="anadirCarrito.jsp?id=<%=producto.getId() %>" class="btn btn-primary">Más info</a>
				    		<%
				    			if(cliente.getRol().equals("Admin")){
				    				%>
				    				<a href="EditarProducto.jsp?id=<%=producto.getId() %>" class="btn btn-warning">Editar Producto</a>
				    				<br>
				    				<a href="EditarProducto.jsp?id=<%=producto.getId() %>" class="btn btn-danger">Eliminar Producto</a>
				    				<%
				    			}
				    		
				    		%>
				  		</div>
					</div>
		
				</div>
				<div class="col-sm-1"></div>
				<%
			}
		
		
		
		%>
	
	
	
		
	
	</div>

</div>
	
</body>
</html>