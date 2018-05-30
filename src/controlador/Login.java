package controlador;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Carrito;
import modelo.Cliente;
import modelo.ClienteModelo;

public class Login extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String nom_usuario = request.getParameter("nomUsuario");
		String password = request.getParameter("password");

		ClienteModelo clienteModelo = new ClienteModelo();
		
		Cliente cliente = clienteModelo.login(nom_usuario, password);
		
		HttpSession sesion = request.getSession();
		
		if(cliente != null){
			
			
			cliente = clienteModelo.selectPorUsuario(nom_usuario);
			
			sesion.setAttribute("usuario", cliente);
			Carrito carrito = new Carrito();
			sesion.setAttribute("carrito", carrito);
			
			response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");
		}
		
		else {
			sesion.setAttribute("usuario", "incorrecto");
			response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");

		}
	}

}

