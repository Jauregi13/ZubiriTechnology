package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ClienteModelo extends Conector{
	
	
	public ArrayList<Cliente> selectAll(){
		
		ArrayList<Cliente> clientes = new ArrayList();
		
		try {
			Statement st = super.conexion.createStatement();
			
			ResultSet rs = st.executeQuery("SELECT * FROM clientes");
			
			while(rs.next()){
				Cliente cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNombre(rs.getString("nombre"));
				cliente.setApellidos(rs.getString("apellidos"));
				cliente.setDni(rs.getString("dni"));
				cliente.setFechaNacimiento(rs.getDate("fechaNacimiento"));
				
				clientes.add(cliente);
				
			}
			
			return clientes;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	
	

}
