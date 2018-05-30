package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Carrito;
import modelo.Cliente;
import modelo.ClienteModelo;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() {
        super();
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClienteModelo clienteModelo = new ClienteModelo();
		Cliente cliente = new Cliente();

		String nombre = request.getParameter("nombre").toString();
		String apellidos = request.getParameter("apellidos").toString();
		String dni = request.getParameter("dni").toString();
		String fecha = request.getParameter("fecha").toString();

		Date fecha_convertida = null;
		try {
			fecha_convertida = new SimpleDateFormat("yyyy-MM-dd").parse(fecha);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		String nomUsuario = request.getParameter("nomUsuario").toString();
		String password = request.getParameter("password").toString();


		cliente.setNombre(nombre);
		cliente.setApellidos(apellidos);
		cliente.setDni(dni);
		cliente.setFechaNacimiento(fecha_convertida);
		cliente.setNombreUsuario(nomUsuario);
		cliente.setContrasena(password);

		clienteModelo.registro(cliente);

		Cliente clienteValido = clienteModelo.selectPorUsuario(nomUsuario);
		
		Carrito carrito = new Carrito();
		
		HttpSession sesion = request.getSession();
 
		sesion.setAttribute("usuario", clienteValido);
		
		sesion.setAttribute("carrito", carrito);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		
		rd.forward(request, response);
		
		//response.sendRedirect("http://localhost:8080/TiendaOnline/index.jsp");

	}

}
