package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOQboard {
	
	public static int Qboardinsert(String qtitle ,String qname, String qcont) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      int result = 0;
	      
	      String sql ="INSERT INTO Qboard(qtitle, qname, qcont) VALUES(?,?,?)";
	      //Connection Pool 이용
	      conn = ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, qtitle);
	         stmt.setString(2, qname);
	         stmt.setString(3, qcont);
	         
	         
	         
	      
	         
	      //executeUpdate() 넘겨받는게 없는애들          
				//executeQurry() 넘겨받는게 있는애들
	       result = stmt.executeUpdate();
	      //결과가 1과 2로 넘어온다.
	       
	       stmt.close();
	       conn.close();
	       
	      return result;
	   }
	
	
	
	public static ArrayList<DTOQboard> QboardList() throws NamingException, SQLException{
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM Qboard";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOQboard> Qboards = new ArrayList<DTOQboard>();
	      
	      while(rs.next()) {
	    	  Qboards.add(new DTOQboard(rs.getString(1),
	                              rs.getString(2),
	                              rs.getString(3),
	                              rs.getString(4),
	                              rs.getString(5)));
	      }
	      return Qboards;
	   }
	
	public static DTOQboard Qboarddetail(String qno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM Qboard WHERE qno=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, qno);   
	      rs = stmt.executeQuery();
	      
	      rs.next();

	      qno = rs.getString(1);
	      String qtitle = rs.getString(2);
	      String qname = rs.getString(3);
	      String qcont = rs.getString(4);
	      String qdate = rs.getString(5);
	      
	      
	      

	      
	      DTOQboard Qboard = new DTOQboard(qno, qtitle, qname, qcont, qdate);
	      
	      return Qboard;
	   }
	
	public static DTOQboard Qboarddetail2 (String qname) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM Qboard WHERE qname=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, qname);   
	      rs = stmt.executeQuery();
	      
	      rs.next();

	      String qno = rs.getString(1);
	      String qtitle = rs.getString(2);
	      		 qname = rs.getString(3);
	      String qcont = rs.getString(4);
	      String qdate = rs.getString(5);
	     
	      
	      

	      
	      DTOQboard Qboard = new DTOQboard(qno, qtitle, qname, qcont, qdate);
	      
	      return Qboard;
	   }
	

	public static int Qboardupdate(String qtitle, String qname, String qcont, String qno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      
	     
	      
	      String sql = "UPDATE Qboard SET qtitle = ?, qname = ?, qcont = ? WHERE qno=?";
	      
	 
	      conn= ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, qtitle);	
	      stmt.setString(2, qname);
	      stmt.setString(3, qcont);
	      stmt.setString(4, qno);
	      
	      
	      int result = stmt.executeUpdate();
	     
			/* return result > 0? true : false ; */
	      
	      return result;
	      
	      
	   }
	
	
	
}
