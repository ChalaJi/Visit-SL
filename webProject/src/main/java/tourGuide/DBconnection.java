package tourGuide;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	private static String url ="jdbc:mysql://localhost:3306/tour";
	private static String user ="root";
	private static String pass ="acugocj";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e) {
			System.out.println("Database connection unsuccessful!!!");
		}
		
		return con;
	}
}
