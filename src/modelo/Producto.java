package modelo;

public class Producto {
	
	private int id;
	private String nombre;
	private String descripcion;
	private double precio;
	private int stock;
	private int idCategoria;
	private int cantidad_pedida;
	
	
	
	public int getCantidad_pedida() {
		return cantidad_pedida;
	}
	public void setCantidad_pedida(int cantidad_pedida) {
		this.cantidad_pedida = cantidad_pedida;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	
	
	// Metodo para añadir producto
	public void add(Producto producto) {
		
		
	}
	
	
	

}
