package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOdelivery {

	public static int insert(String dpid, String dmid, String dpname, String dmtel, String dmaddr, String dpprice) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      int result = 0;
	      
	      String sql ="INSERT INTO delivery(dpid, dmid, dpname, dmtel, dmaddr, dpprice) VALUES(?,?,?,?,?,?)";
	      //Connection Pool 이용
	      conn = ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, dpid);
	         stmt.setString(2, dmid);
	         stmt.setString(3, dpname);
	         stmt.setString(4, dmtel);
	         stmt.setString(5, dmaddr);
	         stmt.setString(6, dpprice);
	         
	         
	      
	         
	      //executeUpdate() 넘겨받는게 없는애들          
				//executeQurry() 넘겨받는게 있는애들
	       result = stmt.executeUpdate();
	      //결과가 1과 2로 넘어온다.
	      return result;
	   }
	
	public static ArrayList<DTOdelivery> deliveryList() throws NamingException, SQLException{
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM delivery";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOdelivery> deliverys = new ArrayList<DTOdelivery>();
	      
	      while(rs.next()) {
	    	  deliverys.add(new DTOdelivery(rs.getString(1),
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
	      return deliverys;
	   }

	 
	
}
