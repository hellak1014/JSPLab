package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOproduct {

	public static int productinsert(String pid ,String pname, String pdesc, String pprice, String pimage1, String pimage2, String pimage3) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      int result = 0;
	      
	      String sql ="INSERT INTO product(pid, pname, pdesc, pprice, pimage1, pimage2, pimage3) VALUES(?,?,?,?,?,?,?)";
	      //Connection Pool 이용
	      conn = ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, pid);
	         stmt.setString(2, pname);
	         stmt.setString(3, pdesc);
	         stmt.setString(4, pprice);
	         stmt.setString(5, pimage1);
	         stmt.setString(6, pimage2);
	         stmt.setString(7, pimage3);
	         
	      
	         
	      //executeUpdate() 넘겨받는게 없는애들          
				//executeQurry() 넘겨받는게 있는애들
	       result = stmt.executeUpdate();
	      //결과가 1과 2로 넘어온다.
	      return result;
	   }


	   public static ArrayList<DTOproduct> productList() throws NamingException, SQLException{
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM product";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOproduct> products = new ArrayList<DTOproduct>();
	      
	      while(rs.next()) {
	    	  products.add(new DTOproduct(rs.getString(1),
	                              rs.getString(2),
	                              rs.getString(3),
	                              rs.getString(4),
	                              rs.getString(5),
	                              rs.getString(6),
	                              rs.getString(7)));
	      }
	      return products;
	   }


	   
	   public static DTOproduct productDetail(String pid) throws NamingException, SQLException {
		         
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM product WHERE pid=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, pid);   
	      rs = stmt.executeQuery();
	      
	      rs.next();
    
	      pid = rs.getString(1);
	      String pname = rs.getString(2);
	      String pdesc = rs.getString(3);
	      String pprice = rs.getString(4);
	      String pimage1 = rs.getString(5);
	      String pimage2 = rs.getString(6);
	      String pimage3 = rs.getString(7);
	      
	      

	      
	      DTOproduct product = new DTOproduct(pid,pname,pdesc,pprice,pimage1,pimage2,pimage3);
	      
	      return product;
	   }
	
}
