package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conn
{
	public Connection con=null;
	public Conn() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/neemrana_cicrle";
		String user="root";
		String password="";
		con=DriverManager.getConnection(url,user,password);
	}
}