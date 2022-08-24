package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;


public class DAOmember {

public static int join(String mname, String mpass, String mtel, String memail, String mgender, String maddr, String mimage) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null; //객체 2개 초기화. import 필요.import java.sql.*;로 처리.
		int result = 0;
		
		String sql = "INSERT INTO member (mname, mpass, mtel, memail, mgender, maddr, mimage) VALUES(?,?,?,?,?,?,?)"; //입력 받은 것을 값에 넣기. INSERT구문.
		//Connection Pool 이용
		conn= ConnectionPool.get(); //꼭 예외처리를 해야한다. throws 구문. 
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mpass);
			stmt.setString(3, mtel);
			stmt.setString(4, memail);
			stmt.setString(5, mgender);
			stmt.setString(6, maddr);
			stmt.setString(7, mimage);//setNString과 setString은 신형 구형 차이. 오류 없이 하려면 setString이 낫다.
		
		result = stmt.executeUpdate(); 
		//update는 리턴 받는게 없는 것. 
		//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
		//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 2로 넘어온다. 	
		
		
		return result;
	}
	   
	
	public static int login(String mname, String mpass) throws NamingException,SQLException {
	
	Connection conn = null; 
	PreparedStatement stmt = null; 
	ResultSet rs = null;
	 
	 int result = 0;
	 
	 String sql = "SELECT mname, mpass FROM member WHERE mname=?"; 
	 
	 conn = ConnectionPool.get(); 
	 stmt = conn.prepareStatement(sql);
	 stmt.setString(1,mname);
	 
	 rs = stmt.executeQuery();
	 
	 if(!rs.next()) return 3; //아이디 비번 모두 없는 비회원
	 
	 if(mpass.equals(rs.getString("mpass"))) return 1; //문제 없는 회원
	 
	 return 2; //비밀번호를 틀린 회원
	 
	 
	 }
	 
	 public static DTOmember memberdetail(String mname) throws NamingException, SQLException {
         
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM member WHERE mname=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, mname);   
	      rs = stmt.executeQuery();
	      
	      rs.next();
   
	      String mno = rs.getString(1);
	      mname = rs.getString(2);
	      String mpass = rs.getString(3);
	      String mtel = rs.getString(4);
	      String memail = rs.getString(5);
	      String mgender = rs.getString(6);
	      String maddr = rs.getString(7);
	      String mlevel = rs.getString(8);
	      String mimage = rs.getString(9);
	      String mdate = rs.getString(10);
	      
	      

	      
	      DTOmember member = new DTOmember(mno, mname, mpass, mtel, memail, mgender, maddr, mlevel, mimage, mdate);
	      
	      return member;
	   }
	
	 
	 public static int memberout(String mname, String mpass) throws NamingException, SQLException {
			
			Connection conn = null;
			PreparedStatement stmt = null; 
			int result = 0;
			
			String sql = "DELETE FROM member WHERE (mname=?) and (mpass=?)";
			
			conn= ConnectionPool.get();  
			
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, mname);
				stmt.setString(2, mpass);
				
			
			result = stmt.executeUpdate(); 
			//update는 리턴 받는게 없는 것. 
			//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
			//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 0로 넘어온다. 	
			
			
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
	                              rs.getString(10)));
	      }
	      return members;
	   }
	 
	 
	   public static DTOmember memberDetail(String mno) throws NamingException, SQLException {
	         
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
	      String mname = rs.getString(2);
	      String mpass = rs.getString(3);
	      String mtel = rs.getString(4);
	      String memail = rs.getString(5);
	      String mgender = rs.getString(6);
	      String maddr = rs.getString(7);
	      String mlevel = rs.getString(8);
	      String mimage = rs.getString(9);
	      String mdate = rs.getString(10);
	      
	      

	      
	      DTOmember member = new DTOmember(mno,mname,mpass,mtel,memail,mgender,maddr, mlevel, mimage, mdate);
	      
	      return member;
	   }

	   public static DTOmember memberDetail2(String mname) throws NamingException, SQLException {
	         
			  Connection conn = null;
		      PreparedStatement stmt = null;
		      ResultSet rs = null;
		      
		      String sql = "SELECT * FROM member WHERE mname=? ";
		      conn= ConnectionPool.get();
		      stmt = conn.prepareStatement(sql);
		         stmt.setString(1, mname);   
		      rs = stmt.executeQuery();
		      
		      rs.next();
	  
		      String mno = rs.getString(1);
		       mname = rs.getString(2);
		      String mpass = rs.getString(3);
		      String mtel = rs.getString(4);
		      String memail = rs.getString(5);
		      String mgender = rs.getString(6);
		      String maddr = rs.getString(7);
		      String mlevel = rs.getString(8);
		      String mimage = rs.getString(9);
		      String mdate = rs.getString(10);
		      
		      

		      
		      DTOmember member = new DTOmember(mno,mname,mpass,mtel,memail,mgender,maddr, mlevel, mimage, mdate);
		      
		      return member;
		   }

	   
	}

