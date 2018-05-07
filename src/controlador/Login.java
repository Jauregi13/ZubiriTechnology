package controlador;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Cliente;
import modelo.ClienteModelo;

public class Login extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String usuario = request.getParameter("usuario").toString();
		String contrasena = request.getParameter("contraseña").toString();
		
		ClienteModelo clienteModelo = new ClienteModelo();
		
		Cliente cliente = clienteModelo.login(usuario, contrasena);
		
		if(cliente != null){
			HttpSession sesion = request.getSession();
			
			sesion.setAttribute("usuario", cliente);
			
			response.sendRedirect("http://localhost/TiendaOnline/index.jsp");
		}
	}

}
