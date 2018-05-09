package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CategoriaModelo extends Conector{
	
	
	public ArrayList<Categoria> selectAll(){
		
		ArrayList<Categoria> categorias = new ArrayList();
		
		try {
			Statement st = super.conexion.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM categorias");
			
			while(rs.next()){
				Categoria categoria = new Categoria();
				categoria.setId(rs.getInt("id"));
				categoria.setNombre(rs.getString("nombre"));
				
				categorias.add(categoria);
				
			}
			return categorias;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
