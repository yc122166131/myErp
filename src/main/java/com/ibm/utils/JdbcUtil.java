package com.ibm.utils;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class JdbcUtil {

	public static  Connection getConn() {

		Connection con = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dd";
			String username = "root";
			String password = "root";
			
				con = (Connection) DriverManager.getConnection(url, username,password);
			} catch (Exception se) {
				System.out.println("666");
				se.printStackTrace();
			}
		

		return con;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print(getConn());
	}

}
