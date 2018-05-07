<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<<<<<< HEAD
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Zubiri Technology</title>
</head>

<body>

	<jsp:include page="./menus/menuPrincipal.html"></jsp:include>
=======
<%@ page import="modelo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Zubiri Technology</title>
</head>

<body>

<%
Object sesion = session.getAttribute("usuario");

if(sesion == null){
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
		Cliente cliente = (Cliente)sesion;
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

%>

>>>>>>> refs/remotes/origin/master

	
</body>
</html>