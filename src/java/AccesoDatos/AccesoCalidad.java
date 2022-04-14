package AccesoDatos;
import AccesoDatos.conexion;
import java.sql.*;
import java.util.logging.*;
public class AccesoCalidad extends conexion{
    private String calnombre;
    private ResultSet resultado;
    private int cedula;

    public AccesoCalidad() {
        conexion();
    }
    
    public ResultSet Listado() throws Exception{
        try{
            getStmt();
            resultado = stmt.executeQuery("SELECT * FROM datos");
            return resultado;
        }catch(SQLException e){
            System.out.println("Error: "+e.getMessage());
            return null;
        }
    }
    
    public ResultSet BuscarExistente(int Cedula) throws Exception{
        try{
            resultado = stmt.executeQuery("SELECT * FROM datos WHERE Cedula LIKE '"+cedula+"%'");
            return resultado;
        }catch(SQLException e){
            System.out.println("Error: "+e.getMessage());
            return null;
        }
    }
}