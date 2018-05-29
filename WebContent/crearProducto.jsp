<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	Object sesion = session.getAttribute("usuario");

	CategoriaModelo categoriaModelo = new CategoriaModelo();
	
	ArrayList<Categoria> categorias = categoriaModelo.selectAll();
	
	request.setAttribute("categorias", categorias);


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Zubiri Technology</title>
</head>
<body>
<%
if(sesion == null){
	%>
	<jsp:include page="./menus/menuPrincipal.html"></jsp:include>
	<%
}

else {
	%>
	<jsp:include page="./menus/menuAdmin.jsp"></jsp:include>
	<div class="container">
		<br>
		<h3>Crear Producto</h3>
		<br>
		<br>
		<form action="CrearProducto" method="post">
		  <div class="form-group">
		    <label>Nombre</label>
		    <input type="text" class="form-control" name="nombre" value=>
		  </div>
		  <div class="form-group">
		    <label>Descripcion</label>
		    <textarea class="form-control" name="descripcion" rows="7"></textarea>
		  </div>
		  <div class="form-group">
		    <label>Precio</label>
		    <input type="number" class="form-control" name="precio" value="">
		  </div>
		  <div class="form-group">
		    <label>Stock</label>
		    <input type="number" class="form-control" name="stock" value=>
		  </div>
		  <!-- <div class="form-group">
		    <label>Imagen</label>
		    <input type="file" class="form-control-file" name="stock" value=>
		  </div> -->
		  <div class="form-group">
		    <label>Categoria</label>
		    <select class="custom-select" name="categoria">
			 <c:forEach items="${categorias}" var="categoria">
				<option value="${categoria.nombre}">${categoria.nombre}</option>
			</c:forEach>
			    
			    		
			    		
			    
  			</select>
		  </div>
		  <button type="submit" class="btn btn-primary">Crear</button>
		</form>
	
	
	
	
	
	</div>
	
	<%
}
%>
</body>
</html>