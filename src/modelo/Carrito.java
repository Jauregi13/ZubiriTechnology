package modelo;

import java.util.ArrayList;;
public class Carrito {
	
	private int id;
	private ArrayList<Producto> productos;
	private double precio_total;
	private int cantidad_total;
	
	

	
	public int getCantidad_total() {
		return cantidad_total;
	}
	public void setCantidad_total(int cantidad_total) {
		this.cantidad_total = cantidad_total;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrecio_total() {
		return precio_total;
	}
	public void setPrecio_total(double precio_total) {
		this.precio_total = precio_total;
	}
	public ArrayList<Producto> getProductos() {
		return productos;
	}
	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}
	
	
	
	
	
	

}
