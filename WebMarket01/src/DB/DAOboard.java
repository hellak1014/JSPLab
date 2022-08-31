package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOboard {

   //C create, R read, U update, D delete
   //회원 가입 (테이블에 데이터 넣기)
   public static int boardinsert(String btitle,String bauthor, String bcont) throws NamingException, SQLException {
      
      Connection conn = null;
      PreparedStatement stmt = null;
      int result = 0;
      
      String sql ="INSERT INTO board(btitle, bauthor, bcont) VALUES(?,?,?)";
      //Connection Pool 이용
      conn = ConnectionPool.get();
      
      stmt = conn.prepareStatement(sql);
         stmt.setNString(1, btitle);
         stmt.setNString(2, bauthor);
         stmt.setNString(3, bcont);
      
         
      //   executeUpdate() 넘겨받는개 없는애들          executeQurry() 넘겨받는게 있는애들
       result = stmt.executeUpdate();
      //결과가 1과 2로 넘어온다.
      return result;
   }
   
	
	 public static ArrayList<DTOboard> boardList() throws NamingException,SQLException{ 
		 
	 Connection conn = null; 
	 PreparedStatement stmt = null;
	 ResultSet rs = null;
	 
	  String sql = "SELECT * FROM board";
	  
	 conn = ConnectionPool.get(); 
	 stmt = conn.prepareStatement(sql); 
	 rs = stmt.executeQuery();
	 
	  ArrayList<DTOboard> boards = new ArrayList<DTOboard>();
	  
	  while(rs.next()) { 
		  boards.add(new DTOboard(
				  rs.getString(1), 
				  rs.getString(2),
				  rs.getString(3), 
				  rs.getString(4), 
				  rs.getString(5))); } 
	  
	  return boards; 
	  
	  }
	 
	  
	  
	 public static DTOboard boardDetail(String bid) throws NamingException,SQLException {
		
		 Connection conn = null; 
		 PreparedStatement stmt = null;
		 ResultSet rs = null;
	 
		 String sql = "SELECT * FROM board WHERE bid=? "; 
	 
		 conn= ConnectionPool.get();
		 stmt = conn.prepareStatement(sql);
		 	stmt.setString(1, bid); 
		 rs = stmt.executeQuery();
	
		 rs.next();
	 
		 bid = rs.getString(1); 
		 String btitle = rs.getString(2); 
		 String bauthor = rs.getString(3); 
		 String bcont = rs.getString(4); 
		 String bdate = rs.getString(5);
	
	
		 DTOboard board = new DTOboard(bid,btitle,bauthor,bcont,bdate);
	 
		return board; 
		
	 }
	
}