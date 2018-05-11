<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<% 

Cliente cliente = (Cliente)session.getAttribute("usuario");

%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://localhost:8080/Biblioteca/css/style.css" type ="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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
	        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Productos</a>
	      </li>
	      
	    </ul>
	    <ul class="navbar-nav">
	    	<li class="nav-item">
	       		<a class="nav-link" href="#"><%=cliente.getNombreUsuario() %></a>
	      	</li>
	      	<li class="nav-item">
	       		<a class="nav-link" href="#">Carrito</a>
	      	</li>
		    <li class="nav-item">
		        <a class="nav-link" href="http://localhost:8080/TiendaOnline/Logout.jsp" >Cerrar Sesión</a>
		    </li>
	    
	    </ul>
	    
	  </div>
	</nav>

</div>