package com.example.DbConnection;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class dbConn {

	public static Connection getConn()
	{
		Connection conn=null;
		Properties p=new Properties();
		try {
			
			FileInputStream fis = null;
			fis = new FileInputStream("src/main/resources/database.properties");
			p.load(fis);

			Class.forName(p.getProperty("DB_DRIVER_CLASS"));
			conn=(Connection)DriverManager.getConnection(p.getProperty("DB_URL"),p.getProperty("DB_USERNAME"),p.getProperty("DB_PASSWORD"));
			
			
		} catch (ClassNotFoundException | SQLException  | IOException e) {
			e.printStackTrace();
			System.out.println("Error got in DBConnection class"+e.getMessage());
		}
		
		return conn;
	}

}
