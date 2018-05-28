package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductoModelo extends Conector {
	
	public ArrayList<Producto> selectAll(){
		
		ArrayList<Producto> productos = new ArrayList();
		
		try {
			Statement st = super.conexion.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM productos");
			
			while(rs.next()){
				Producto producto = new Producto();
				producto.setId(rs.getInt("id"));
				producto.setNombre(rs.getString("nombre"));
				producto.setDescripcion(rs.getString("descripcion"));
				producto.setStock(rs.getInt("stock"));
				producto.setIdCategoria(rs.getInt("id_categoria"));
				
				productos.add(producto);
			}
			
			return productos;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public Producto selectPorId(int id_producto){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM productos WHERE id = ?");
			
			pst.setInt(1, id_producto);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				Producto producto = new Producto();
				producto.setId(id_producto);
				producto.setNombre(rs.getString("nombre"));
				producto.setDescripcion(rs.getString("descripcion"));
				producto.setPrecio(rs.getDouble("precio"));
				producto.setStock(rs.getInt("stock"));
				producto.setIdCategoria(rs.getInt("id_categoria"));
				
				return producto;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<Producto> selectPorCategoriaId (int id_categoria){
		
		try {
			ArrayList<Producto> productos = new ArrayList();
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM productos WHERE id_categoria =?");
			
			pst.setInt(1, id_categoria);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				Producto producto = new Producto();
				producto.setId(rs.getInt("id"));
				producto.setDescripcion(rs.getString("descripcion"));
				producto.setNombre(rs.getString("nombre"));
				producto.setPrecio(rs.getDouble("precio"));
				producto.setIdCategoria(id_categoria);
				producto.setStock(rs.getInt("stock"));
				
				productos.add(producto);
			}
			
			return productos;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void updateProducto (Producto producto){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("UPDATE productos SET nombre = ?, descripcion = ?, precio = ?, stock = ?, id_categoria = ? WHERE id = ?");
			
			pst.setString(1, producto.getNombre());
			pst.setString(2, producto.getDescripcion());
			pst.setDouble(3, producto.getPrecio());
			pst.setInt(4, producto.getStock());
			pst.setInt(5, producto.getIdCategoria());
			pst.setInt(6, producto.getId());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

}
