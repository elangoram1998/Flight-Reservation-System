package com.wipro.FRS.db;

import java.sql.*;

public class DataBase {
	public static Connection getConn()
	{
		Connection con=null;
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@10.209.13.29:1521:orcl","team2","team2");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
