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
		        <a class="nav-link" href="http://localhost:8080/TiendaOnline/Logout.jsp" >Cerrar Sesión</a>
		    </li>
	    
	    </ul>
	    
	  </div>
	</nav>
	
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
	      <img src="images/logo.png" alt="Los Angeles" width="1100" height="100">
	    </div>
	    <div class="carousel-item">
	      <img src="images/logo.png" alt="Chicago" width="1100" height="100">
	    </div>
	    <div class="carousel-item">
	      <img src="images/logo.png" alt="New York" width="1100" height="100">
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
	<div class="row">
		<div class="col-sm-3">
			<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="..." alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title">Card title</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">Go somewhere</a>
				  </div>
			</div>
		
		</div>
		<div class="col-sm-1"></div>
		<div class="col-sm-3">
			<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="..." alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title">Card title</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">Go somewhere</a>
				  </div>
			</div>
		
		</div>
		<div class="col-sm-1"></div>
		<div class="col-sm-3">
			<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="..." alt="Card image cap">
				  <div class="card-body">
				    <h5 class="card-title">Card title</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn btn-primary">Go somewhere</a>
				  </div>
			</div>
		
		</div>
	
	
	
	
		
	
	</div>

</div>