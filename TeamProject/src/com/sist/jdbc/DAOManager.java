package com.sist.jdbc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAOManager {
	   // 1. 오라클 연결 객체
		private Connection conn;
	   // 2. SQL문장 전송 , 함수 호출 
		private PreparedStatement ps;// 프로시저 호출시 사용되는 클래스
	   // 3. 오라클 URL주소 
		private final String URL="jdbc:oracle:thin:@211.238.142.211:1521:XE";
	   // 4. 오라클 연결 드라이버 설치 
		public DAOManager()
		{
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}catch(Exception ex) {}
		}
		
		// 5. 오라클 연결
		public Connection getConnection()
		{
			try
			{
				conn=DriverManager.getConnection(URL,"hr","happy");
			}catch(Exception ex) {}
			return conn;
		}
		// 6. 오라클 닫기
		public void disConnection(Connection conn,PreparedStatement ps)
		{
			try
			{
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
			}catch(Exception ex) {}
		}
}
