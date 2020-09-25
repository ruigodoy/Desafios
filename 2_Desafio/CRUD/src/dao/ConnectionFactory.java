package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	
	public Connection getConexao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection("jdbc:mysql://localhost/aluno","root","1234");
		}catch(Exception erro) {
			throw new RuntimeException("getConexao() error: "  + erro);
		}
	}
	

}
