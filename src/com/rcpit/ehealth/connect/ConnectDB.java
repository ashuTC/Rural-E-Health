package com.rcpit.ehealth.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB 
{
	static Connection con=null;
	public static Connection connect()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded....");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ruralhealth","root","");
			System.out.println("connection established..."+con);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}

}

