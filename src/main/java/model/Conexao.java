package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexao {
	public static void main(String[] args) {
		getConnection();
	}
	public static Connection getConnection() {
		
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_web3?","root","");
		} catch (ClassNotFoundException erro1) {
			System.out.println("Erro no drive. "+erro1);
		}catch (SQLException erro2) {
			System.out.println("Erro de conexão. "+erro2);
		}
		
		return conn;
	}
}
