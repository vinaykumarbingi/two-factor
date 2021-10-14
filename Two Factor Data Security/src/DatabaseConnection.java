import java.sql.*;
public class DatabaseConnection
{
private static Connection con;
private Connection getConnection{
DriverManager.registerDriver("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname","root","root");
return con;
}
}