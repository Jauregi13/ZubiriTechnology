package modelo;

<<<<<<< HEAD
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductoModelo extends Conector{
	
	public ArrayList<Producto> selectAll(){
		ArrayList<Producto> productos = new ArrayList();
		
		try {
			Statement st = super.conexion.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM clientes");
			
			while(rs.next()){
				Producto producto = new Producto();
				producto.setId(rs.getInt("id"));
				producto.setId_categoria(rs.getInt("id_categoria"));
				producto.setNombre(rs.getString("nombre"));
				producto.setStock(rs.getInt("stock"));
				producto.setTipo(rs.getString("tipo"));
				
				producto.add(producto);
			}
		
		return productos;
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
return null;
}

}
=======
public class ProductoModelo {

}
>>>>>>> refs/remotes/origin/master
