package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;


public class DAOmember {


	   //C create, R read, U update, D delete
	   //회원 가입 (테이블에 데이터 넣기)
	   public static int memberinsert(String mname,String mtel, String mimage) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      int result = 0;
	      
	      String sql ="INSERT INTO member(mname,mtel, mimage) VALUES(?,?,?)";
	      //Connection Pool 이용
	      conn = ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, mname);
	         stmt.setString(2, mtel);
	         stmt.setString(3, mimage);
	      
	         
	      //executeUpdate() 넘겨받는게 없는애들          
				//executeQurry() 넘겨받는게 있는애들
	       result = stmt.executeUpdate();
	      //결과가 1과 2로 넘어온다.
	      return result;
	   }


	   public static ArrayList<DTOmember> fileList() throws NamingException, SQLException{
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM member";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOmember> files = new ArrayList<DTOmember>();
	      
	      while(rs.next()) {
	         files.add(new DTOmember(rs.getString(1),
	                              rs.getString(2),
	                              rs.getString(3),
	                              rs.getString(4),
	                              rs.getString(5),
	                              rs.getString(6)));
	      }
	      return files;
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
	      String mtel = rs.getString(3);
	      String mlevel = rs.getString(4);
	      String mimage = rs.getString(5);
	      String mdate = rs.getString(6);
	      

	      
	      DTOmember member = new DTOmember(mno,mname,mtel,mlevel,mimage,mdate);
	      
	      return member;
	   }
	}

