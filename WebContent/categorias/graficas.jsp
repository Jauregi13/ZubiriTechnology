<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%

int id_categoria = Integer.parseInt(request.getParameter("id"));

CategoriaModelo categoriaModelo = new CategoriaModelo();
ArrayList<Categoria> categorias = categoriaModelo.selectAll();

ProductoModelo productoModelo = new ProductoModelo();
ArrayList<Producto> productos = productoModelo.selectPorCategoriaId(id_categoria);

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
Cliente cliente = (Cliente)sesion;


if(sesion == null){
%>	
	<jsp:include page="./../menus/menuPrincipal.html"></jsp:include>
<%
}	
else if(sesion.equals("incorrecto")){
		%>
		<jsp:include page="./../menus/menuPrincipal.html"></jsp:include>
		
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
		if(cliente.getRol().equals("Usuario")){
			%>
			<jsp:include page="./../menus/menuUsuario.jsp"></jsp:include>
			<%
		}
		else {
			
			%>
			<jsp:include page="./../menus/menuAdmin.jsp"></jsp:include>
		<%
		}
	}	


%>
<!------ Include the above in your HEAD tag ---------->
<style>
.carousel-inner img {
      width: 100%;
	  height: 500px;
  }
   .col-sm-3 > .item > images {
    margin: 0 auto;
}


img{max-width:100%;}
	*{transition: all .5s ease;-moz-transition: all .5s ease;-webkit-transition: all .5s ease}
.my-list {
    width: 100%;
    padding: 10px;
    border: 1px solid #f5efef;
    float: left;
    margin: 15px 0;
    border-radius: 5px;
    box-shadow: 2px 3px 0px #e4d8d8;
    position:relative;
    overflow:hidden;
}
.my-list h3{
    text-align: left;
    font-size: 14px;
    font-weight: 500;
    line-height: 21px;
    margin: 0px;
    padding: 0px;
    border-bottom: 1px solid #ccc4c4;
    margin-bottom: 5px;
    padding-bottom: 5px;
    }
	.my-list span{float:left;font-weight: bold;}
	.my-list span:last-child{float:right;}
	.my-list .offer{
    width: 100%;
    float: left;
    margin: 5px 0;
    border-top: 1px solid #ccc4c4;
    margin-top: 5px;
    padding-top: 5px;
    color: #afadad;
    }
	.detail {
    position: absolute;
    top: -100%;
    left: 0;
    text-align: center;
    background: #fff;height: 100%;width:100%;
	
}
	
.my-list:hover .detail{top:0;}

</style>
	
<div class ="container">

	<div class="row">
		<%
		Iterator<Producto> i = productos.iterator();
		
		while(i.hasNext()){
			Producto producto = i.next();
			%>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="my-list">
					<img src="https://thumb.pccomponentes.com/w-530-530/articles/15/150033/d1.jpg" alt="hdd" />
					<h3><%=producto.getNombre() %></h3>
					<span>Tarjeta Gráfica</span>
					<span class="pull-right">SKU:100022</span>
					<div class="offer"><%=producto.getPrecio() %>€</div>
					<div class="detail">
					<p>Zubiri Technology 2018 </p>
					<img src="https://thumb.pccomponentes.com/w-530-530/articles/15/150033/d1.jpg" alt="dsadas" />
					<a href='http://localhost:8080/TiendaOnline/anadirCarrito.jsp?id=<%=producto.getId() %>' class="btn btn-info">Añadir al carrito</a>
					<a href="#" class="btn btn-info">Detalles</a>
					</div>
				</div>
			</div>
			<%
		}
		
		
		%>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/15/150033/d1.jpg" alt="hdd" />
			<h3>Asus cerberus GeForce GTX 1050 Ti Oc Edition GDDR5</h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100022</span>
			<div class="offer">194,90€</div>
			<div class="detail">
			<p>Zubiri Technology 2018 </p>
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/15/150033/d1.jpg" alt="dsadas" />
			<a href="#" class="btn btn-info">Add To Cart</a>
			<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/14/148870/a1-1.jpg" alt="dsadas" />
			<h3>Sapphire Pulse Radeon RX 570 8GB GDDR5</h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100023</span>
			<div class="offer">324,99€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/14/148870/a1-1.jpg" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/106073/1111.jpg" alt="dsadas" />
			<h3>MSI GeForce GTX 1050Ti GAMING X 4GB GDDR5 </h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100024</span>
			<div class="offer">196€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/106073/1111.jpg" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/103016/gigabyte-geforce-gtx-1060-windoforce-oc-6gb-gddr5-1.jpg" alt="dsadas" />
			<h3>Gigabyte GeForce GTX 1060 Windforce OC 6GB GDDR5 </h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100025</span>
			<div class="offer">334,99€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/103016/gigabyte-geforce-gtx-1060-windoforce-oc-6gb-gddr5-1.jpg" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/107479/1111.jpg" alt="dsadas" />
			<h3>Gigabyte GeForce GTX 1050 OC 2GB GDDR5 </h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100026</span>
			<div class="offer">150,99€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/107479/1111.jpg" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/102319/msi-gtx-1060-gaming-x-6gb-gddr5.jpg" alt="dsadas" />
			<h3>MSI GTX 1060 GAMING X 6GB GDDR5 </h3>
			<span>tarjeta Gráfica</span>
			<span class="pull-right">SKU:100027</span>
			<div class="offer">363€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/102319/msi-gtx-1060-gaming-x-6gb-gddr5.jpg" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
			<img src="http://hpservicecenterschennai.in/images/hp_laptop_service_centers_in_guindy.png" alt="dsadas" />
			<h3>Asus APU Quad Core A8 </h3>
			<span>RS:45K</span>
			<span class="pull-right">SKU:100028</span>
			<div class="offer">Extra 5% Off. Cart value Rs 500</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
			<img src="http://hpservicecenterschennai.in/images/hp_laptop_service_centers_in_guindy.png" alt="dsadas" />
		<a href="#" class="btn btn-info">Add To Cart</a>
		<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
			<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/102330/asus-dual-gtx-1060-oc-6gb-gddr5.jpg" alt="dsadas" />
			<h3>Asus Dual GTX 1060 OC 6GB GDDR5</h3>
			<span>Tarjeta Gráfica</span>
			<span class="pull-right">SKU:100029</span>
			<div class="offer">369,90€</div>
			<div class="detail">
			<p>Zubiri Technology 2018</p>
				<img src="https://thumb.pccomponentes.com/w-530-530/articles/10/102330/asus-dual-gtx-1060-oc-6gb-gddr5.jpg" alt="dsadas" />
			<a href="#" class="btn btn-info">Add To Cart</a>
			<a href="#" class="btn btn-info">Detalles</a>
			</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="registro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Formulario de Registro</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="http://localhost:8080/TiendaOnline/registro.jsp" method="get">
          <div class="form-group">
		    <label for="exampleInputNombre">Nombre</label>
		    <input type="text" class="form-control" name="nombre" aria-describedby="emailHelp" placeholder="Introduce tu nombre">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputApellido">Apellidos</label>
		    <input type="text" class="form-control" name="apellidos" aria-describedby="emailHelp" placeholder="Introduce tu(s) apellido(s)">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputDni">Dni</label>
		    <input type="text" class="form-control" name="dni" aria-describedby="emailHelp" placeholder="Introduce tu dni">
		  </div>
		  <div class="form-group" id="datetimepicker">
			<label for="exampleInputFechaNacimiento">Fecha de nacimiento</label>
			<input type="text" class="form-control" name="fecha" aria-describedby="fecha_addon" placeholder="Introduce tu fecha de nacimiento">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputUsuario">Nombre de Usuario</label>
		    <input type="text" class="form-control" name="nomUsuario" aria-describedby="emailHelp" placeholder="Introduce un nombre de usuario">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword">Contraseña</label>
		    <input type="password" class="form-control" name="password" placeholder="Introduce la contraseña">
		  </div>
  
  		 <button type="submit" class="btn btn-primary">Registrarse</button>
		</form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="inicioSesion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Iniciar Sesión</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="http://localhost:8080/TiendaOnline/login.jsp" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Nombre de Usuario</label>
		    <input type="text" class="form-control" name="nomUsuario" aria-describedby="emailHelp" placeholder="Introduce nombre de usuario">
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Contraseña</label>
		    <input type="password" class="form-control" name="password" placeholder="Introduce la contraseña">
		  </div>
  
  		 <button type="submit" class="btn btn-primary">Entrar</button>
		</form>
      </div>
    </div>
  </div>
  </div>
    </div>