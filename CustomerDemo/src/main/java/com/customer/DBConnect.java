package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url ="jdbc:mysql://localhost:3306/hotel";
	private static String userName = "root";
	private static String password ="root";
	private static Connection con;
	
	//variable eka static hadana nisa. hadapu connection eka return karanwa.getconnection return krnne con eken
	public static Connection getConnetion() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
