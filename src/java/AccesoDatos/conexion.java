package AccesoDatos;
import java.sql.*;
public class conexion {
    Connection conectar = null;
    public Connection conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conectar = DriverManager.getConnection("jdbc:mysql://localhost/personas1","root","");
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return conectar;
    }
}
