package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class PedidoModelo extends Conector{
	
	public void Comprar(int id_cliente, int id_producto, Date fecha_compra){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("INSERT INTO pedidos VALUES(?,?,?)");
			
			pst.setInt(1, id_cliente);
			pst.setInt(2, id_producto);
			pst.setDate(3, new java.sql.Date(fecha_compra.getTime()));
			
			pst.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
