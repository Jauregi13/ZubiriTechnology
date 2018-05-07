package modelo;

<<<<<<< HEAD
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
		
=======
import java.sql.PreparedStatement;
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
				cliente.setRol(rs.getString("rol"));
				clientes.add(cliente);
				
			}
			
			return clientes;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	public Cliente login(String usuario, String contrasena){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM clientes WHERE nombreUsuario = ? AND contrasena = ?");
			
			pst.setString(1, usuario);
			pst.setString(2, contrasena);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				Cliente cliente = new Cliente();
				cliente.setNombreUsuario(rs.getString("nombreUsuario"));
				cliente.setContrasena(rs.getString("contrasena"));
				return cliente;
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
		
	}
	
	public Cliente selectPorUsuario(String usuario){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("SELECT * FROM clientes WHERE nombreUsuario = ?");
			
			pst.setString(1, usuario);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()){
				Cliente cliente = new Cliente();
				cliente.setNombreUsuario(usuario);
				cliente.setNombre(rs.getString("nombre"));
				cliente.setApellidos(rs.getString("apellidos"));
				cliente.setDni(rs.getString("dni"));
				cliente.setFechaNacimiento(rs.getDate("fechaNacimiento"));
				cliente.setContrasena(rs.getString("contrasena"));
				cliente.setRol(rs.getString("rol"));
				
				return cliente;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
>>>>>>> refs/remotes/origin/master
	}
	
	
	
	

}
