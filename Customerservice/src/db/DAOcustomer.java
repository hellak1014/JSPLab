package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOcustomer {

	public static int join(String id, String name, String pass) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null; //객체 2개 초기화. import 필요.import java.sql.*;로 처리.
		int result = 0;
		
		String sql = "INSERT INTO customer (id, name, pass) VALUES(?,?,?)"; //입력 받은 것을 값에 넣기. INSERT구문.
		//Connection Pool 이용
		conn= ConnectionPool.get(); //꼭 예외처리를 해야한다. throws 구문. 
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, pass);//setNString과 setString은 신형 구형 차이. 오류 없이 하려면 setString이 낫다.
		
		result = stmt.executeUpdate(); 
		//update는 리턴 받는게 없는 것. 
		//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
		//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 2로 넘어온다. 	
		
		
		return result;
	}
	
	
	public static int login(String id, String pass) throws NamingException, SQLException {

		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		int result = 0;
		
		String sql = "SELECT id, pass FROM customer WHERE id=?";
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1,id);
			
		rs = stmt.executeQuery();
		
		if(!rs.next()) return 3;
		
		if(pass.equals(rs.getString("pass"))) return 1;
		
		return 2;
			

	}
	
	
	public static ArrayList<DTOcustomer> getList() throws SQLException, NamingException{
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM customer";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOcustomer>members = new ArrayList<DTOcustomer>();
		
		while(rs.next()) {
			members.add(new DTOcustomer(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5)));
						
		}
		
		return members;
		
	}
	
	public static DTOcustomer getDetail(String no) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql ="SELECT * FROM customer WHERE no=?";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setNString(1,no);
	      rs = stmt.executeQuery();
	      
	      rs.next();
	      
	       no = rs.getString(1);
	      String id = rs.getString(2);
	      String name = rs.getString(3);
	      String pass = rs.getString(4);
	      String cdate = rs.getString(5);
	      
	      DTOcustomer member = new DTOcustomer(no,id,name,pass,cdate);
	      return member;
	   }
}
