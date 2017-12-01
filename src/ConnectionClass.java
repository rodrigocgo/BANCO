import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass 
{
	String user, senha;
	public ConnectionClass(String user, String senha)
	{
	  this.user = user;
	  this.senha = senha;
	}
	public  Connection getConnection() throws ClassNotFoundException   
    {
        try 
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//camburi.pucrs.br:1521/facin11g",this.user,this.senha);

            return con;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}


