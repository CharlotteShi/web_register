package com.doctor.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String URL="jdbc:mysql://127.0.0.1:3306/guahao?useUnicode=true&characterEncoding=utf-8";
	private static final String USER="root";
	private static final String PASSWORD="1234567";
	
	private static Connection conn=null;
	
	static {
    try {
		//1.������������
			Class.forName("com.mysql.jdbc.Driver");
			
		//2.������ݿ������
			conn=DriverManager.getConnection(URL, USER, PASSWORD);//ctrl+shift+x
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	public static Connection getConnection(){
		return conn;
	}

}
