package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
	static Connection con = null;
	public static Connection connect()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Drivers Loaded........!");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cng_booking","root","");
			System.out.println("Connection Establish :"+con);
		}
		catch(Exception e)
		{
			System.err.print(e);
		}
		return con;
	}
}
