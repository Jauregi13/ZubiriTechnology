package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Producto;
import modelo.ProductoModelo;

public class ListarProductoId extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		ProductoModelo productoModelo = new ProductoModelo();
		
		int id_producto = Integer.parseInt(request.getParameter("id"));

		Producto producto = productoModelo.selectPorId(id_producto);
		
		request.setAttribute("producto", producto);
		
		RequestDispatcher rd = request.getRequestDispatcher("EditarProducto.jsp");
				
		rd.forward(request, response);
		
		
	}

}
