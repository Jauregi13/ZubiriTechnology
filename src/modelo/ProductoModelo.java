package modelo;

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
				producto.setTipo(rs.getString("tipo"));
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
	
	

}
