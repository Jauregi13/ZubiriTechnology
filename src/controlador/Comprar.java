package controlador;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Carrito;
import modelo.Cliente;
import modelo.PedidoModelo;
import modelo.Producto;

public class Comprar extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		Carrito carrito = (Carrito)session.getAttribute("carrito");
		
		Cliente cliente = (Cliente)session.getAttribute("usuario");
		
		PedidoModelo pedidoModelo = new PedidoModelo();
		
		Iterator<Producto> i = carrito.getProductos().iterator();
		
		Date fecha_compra = new Date();
				
		DateFormat formato = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		
		formato.format(fecha_compra);
		
		
		while(i.hasNext()){
			Producto producto = i.next();
			
			pedidoModelo.Comprar(cliente.getId(), producto.getId(), fecha_compra);
			
		}
		
	}
	

}
