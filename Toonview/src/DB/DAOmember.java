package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember {

public static int memberjoin(String mid, String mpass, String memail, String mage, String mbd, String mtel, String mgender, String mimage) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null; //객체 2개 초기화. import 필요.import java.sql.*;로 처리.
		int result = 0;
		
		String sql = "INSERT INTO member (mid, mpass, memail, mage, mbd, mtel, mgender, mimage) VALUES(?,?,?,?,?,?,?,?)"; //입력 받은 것을 값에 넣기. INSERT구문.
		//Connection Pool 이용
		conn= ConnectionPool.get(); //꼭 예외처리를 해야한다. throws 구문. 
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mid);
			stmt.setString(2, mpass);
			stmt.setString(3, memail);
			stmt.setString(4, mage);
			stmt.setString(5, mbd);
			stmt.setString(6, mtel);
			stmt.setString(7, mgender);
			stmt.setString(8, mimage);//setNString과 setString은 신형 구형 차이. 오류 없이 하려면 setString이 낫다.
		
		result = stmt.executeUpdate(); 
		//update는 리턴 받는게 없는 것. 
		//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
		//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 2로 넘어온다. 	
		
		stmt.close();
		conn.close();
		
		
		return result;
	}
	
	public static int memberlogin(String mid, String mpass) throws NamingException,SQLException {
	
	Connection conn = null; 
	PreparedStatement stmt = null; 
	ResultSet rs = null;
	 
	 int result = 0;
	 
	 String sql = "SELECT mid, mpass FROM member WHERE mid=?"; 
	 
	 conn = ConnectionPool.get(); 
	 stmt = conn.prepareStatement(sql);
	 stmt.setString(1,mid);
	 
	 rs = stmt.executeQuery();
	 
	 if(!rs.next()) return 3; //아이디 비번 모두 없는 비회원
	 
	 if(mpass.equals(rs.getString("mpass"))) return 1; //문제 없는 회원
	 
	 return 2; //비밀번호를 틀린 회원
	 
	 
	 }
	
	
	public static int memberout(String mid, String mpass) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null; 
		int result = 0;
		
		String sql = "DELETE FROM member WHERE (mid=?) and (mpass=?)";
		
		conn= ConnectionPool.get();  
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mid);
			stmt.setString(2, mpass);
			
		
		result = stmt.executeUpdate(); 
		//update는 리턴 받는게 없는 것. 
		//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
		//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 0로 넘어온다. 	
		
		stmt.close();
		conn.close();
		
		return result;
	}
	
	public static ArrayList<DTOmember> memberList() throws NamingException, SQLException{
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM member";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOmember> members = new ArrayList<DTOmember>();
	      
	      while(rs.next()) {
	    	  members.add(new DTOmember(rs.getString(1),
	                              rs.getString(2),
	                              rs.getString(3),
	                              rs.getString(4),
	                              rs.getString(5),
	                              rs.getString(6),
	                              rs.getString(7),
	                              rs.getString(8),
	                              rs.getString(9),
	                              rs.getString(10),
	                              rs.getString(10)));
	      }
	      
	    rs.close();  
	    stmt.close();
		conn.close();
			
	      return members;
	   }

	public static DTOmember memberdetail(String mno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM member WHERE mno=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, mno);   
	      rs = stmt.executeQuery();
	      
	      rs.next();
 
	      mno = rs.getString(1);
	      String mid = rs.getString(2);
	      String mpass = rs.getString(3);
	      String memail = rs.getString(4);
	      String mage = rs.getString(5);
	      String mbd = rs.getString(6);
	      String mtel = rs.getString(7);
	      String mgender = rs.getString(8);
	      String mlevel = rs.getString(9);
	      String mimage = rs.getString(10);
	      String mdate = rs.getString(11);
	      
	      

	      
	      DTOmember member = new DTOmember(mno, mid, mpass, memail, mage, mbd, mtel, mgender, mlevel, mimage, mdate);
	      
	      return member;
	   }
	
	
	public static DTOmember memberdetail2 (String mid) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM member WHERE mid=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, mid);   
	      rs = stmt.executeQuery();
	      
	      rs.next();

	      String mno = rs.getString(1);
	      		mid = rs.getString(2);
	      String mpass = rs.getString(3);
	      String memail = rs.getString(4);
	      String mage = rs.getString(5);
	      String mbd = rs.getString(6);
	      String mtel = rs.getString(7);
	      String mgender = rs.getString(8);
	      String mlevel = rs.getString(9);
	      String mimage = rs.getString(10);
	      String mdate = rs.getString(11);
	      
	      

	      
	      DTOmember member = new DTOmember(mno, mid, mpass, memail, mage, mbd, mtel, mgender, mlevel, mimage, mdate);
	      
	      return member;
	   }
	
	
	public static int memberupdate(String mid, String mpass, String memail, String mage, String mbd, String mtel, String mgender, String mimage, String mno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      
	     
	      
	      String sql = "UPDATE member SET mid = ?, mpass = ?, memail = ?, mage = ?, mbd = ?, mtel = ?, mgender = ?, mimage = ? WHERE mno=?";
	      
	 
	      conn= ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, mid);	
	      stmt.setString(2, mpass);
	      stmt.setString(3, memail);
	      stmt.setString(4, mage);
	      stmt.setString(5, mbd);
	      stmt.setString(6, mtel);
	      stmt.setString(7, mgender);
	      stmt.setString(8, mimage);
	      stmt.setString(9, mno);
	      
	      
	      int result = stmt.executeUpdate();
	     
			/* return result > 0? true : false ; */
	      
	      return result;
	      
	      
	   }
	
	
	public static int kakaologin(String mid, String email) throws NamingException,SQLException {
		
		Connection conn = null; 
		PreparedStatement stmt = null; 
		ResultSet rs = null;
		 
		 int result = 0;
		 
		 String sql = "SELECT mid , memail FROM member WHERE mid=?"; 
		 
		 conn = ConnectionPool.get(); 
		 stmt = conn.prepareStatement(sql);
		 stmt.setString(1,mid);
		
		 
		 rs = stmt.executeQuery();
		 
		 if(!rs.next()) return 3; //아이디가 없는 비회원 -> 회원 가입으로 이동
		 
		
		 return 1; //로그인 성공
		 
		 
		 
		 }
   
	
}
