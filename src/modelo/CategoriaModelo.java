package modelo;

import java.sql.PreparedStatement;
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
	
	
	public Categoria selectPorId(int id_categoria){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM categorias WHERE id = ?");
			
			pst.setInt(1, id_categoria);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				Categoria categoria = new Categoria();
				
				categoria.setId(id_categoria);
				categoria.setNombre(rs.getString("nombre"));
				
				return categoria;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public Categoria selectPorNombre (String nombre){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM categorias WHERE nombre = ?");
			
			pst.setString(1, nombre);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				Categoria categoria = new Categoria();
				
				categoria.setId(rs.getInt("id"));
				categoria.setNombre(rs.getString("nombre"));
				
				return categoria;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
		
	}

}
