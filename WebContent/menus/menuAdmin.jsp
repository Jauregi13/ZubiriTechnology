<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://localhost:8080/Biblioteca/css/style.css" type ="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "modelo.*" %>
<%

Cliente cliente = (Cliente)session.getAttribute("usuario");




%>

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
	  height: 500px;
  }
  </style>

<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">ZUBIRI TECHNOLOGY</h1>
	    <p class="lead"></p>
	  </div>
	</div>
<div class ="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">
	    <img src="images/logo.png" width="50" height="50" alt="">
	  </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="http://localhost:8080/TiendaOnline/index.jsp">Inicio <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item dropdown-submenu">
        	<a class="nav-link test" tabindex="-1" href="#">Productos <span class="caret"></span></a>
        	<ul class="dropdown-menu">
        		<li><a tabindex="-1" href='http://localhost:8080/TiendaOnline/crearProducto.jsp'>Crear producto</a></li>
        		<li><a tabindex="-1" href="#">Editar producto</a></li>
          	</ul>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Categorias</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Usuarios</a>
	      </li>
	      
	    </ul>
	    <ul class="navbar-nav">
	    	<li class="nav-item">
	       		<a class="nav-link " href="#"><%=cliente.getNombreUsuario() %></a>
	      	</li>
		    <li class="nav-item">
		        <a class="nav-link" href="http://localhost:8080/TiendaOnline/Logout.jsp" >Cerrar Sesión</a>
		    </li>
	    
	    </ul>
	    
	  </div>
	</nav>
	

</div>

<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>