package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	//class ekak athule hadaganna variable instance variable kiyanne
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Customer>validate(String userName,String password){
		
		ArrayList<Customer>cus = new ArrayList<>();
		//create database connection video 1
		//String url = "jdbc:mysql://localhost:3306/hotel";
		//String user ="root";
		//String pass="root";
		
		//validate
		try {
			//(11)
			//Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con = DriverManager.getConnection(url,user,pass);
			//Statement stmt = con.createStatement();
			//(11)
			
			con = DBConnect.getConnetion();
			stmt = con.createStatement();
			
			
			
			String sql = "select *from customer where username ='"+userName+"' and password='"+password+"'" ;
			
			//ResultSet rs = stmt.executeQuery(sql);
			
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id =rs.getInt(1);
				String name = rs.getString(2);
				String email= rs.getString(3);
				String phone= rs.getString(4);
				String userU= rs.getString(5);
				String passU= rs.getString(6);
				
				Customer c =new Customer(id,name,email,phone,userU,passU);
				cus.add(c);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		return cus;
	}
	//2 video insert
	public static boolean insertcustomer(String name,String email,String phone,String username,String password) {
		
		boolean isSuccess = false;
		
		//create db Connection video 2
		//String url = "jdbc:mysql://localhost:3306/hotel";
		//String user ="root";
		//String pass="root";
		
		
		
		try {
			//ekama tika gatte(11)
            //Class.forName("com.mysql.jdbc.Driver");
			//Connection con = DriverManager.getConnection(url,user,pass);
			//Statement stmt = con.createStatement();
			//(11)
			
			con = DBConnect.getConnetion();
			stmt = con.createStatement();
			
			
			String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess =true;
			}else {
				isSuccess= false;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return isSuccess;
	
	}
	
	//update part
	public static boolean updatecustomer(String id,String name,String email,String phone,String username,String password) {
		
		try {
			
			con = DBConnect.getConnetion();
			stmt = con.createStatement();
			String sql="update customer set name ='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'" + "where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	
	//reterive video
	public static List<Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			//db connection
			
			con = DBConnect.getConnetion();
			stmt = con.createStatement();
			String sql = "select * from customer where id ='" +convertedID + "'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,username,password);
				cus.add(c);
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	
	//delete
	public static boolean deleteCustomer(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnetion();
			stmt = con.createStatement();
			String sql = "delete from customer where id ='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

	
	
	
	
}
