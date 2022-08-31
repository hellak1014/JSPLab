package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOreview {

	public static int reviewinsert(String rtitle ,String rname, String rspo, String rcont) throws NamingException, SQLException {
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      int result = 0;
	      
	      String sql ="INSERT INTO review(rtitle, rname, rspo, rcont) VALUES(?,?,?,?)";
	      //Connection Pool 이용
	      conn = ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, rtitle);
	         stmt.setString(2, rname);
	         stmt.setString(3, rspo);
	         stmt.setString(4, rcont);
	         
	         
	         
	      
	         
	      //executeUpdate() 넘겨받는게 없는애들          
				//executeQurry() 넘겨받는게 있는애들
	       result = stmt.executeUpdate();
	      //결과가 1과 2로 넘어온다.
	      return result;
	   }
	
	public static ArrayList<DTOreview> reviewList() throws NamingException, SQLException{
		
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM review ORDER BY rno DESC;";
	      
	      conn = ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	      rs = stmt.executeQuery();
	      
	      ArrayList<DTOreview> reviews = new ArrayList<DTOreview>();
	      
	      while(rs.next()) {
	    	  reviews.add(new DTOreview(rs.getString(1),
	                              rs.getString(2),
	                              rs.getString(3),
	                              rs.getString(4),
	                              rs.getString(5),
	                              rs.getString(6)));
	      }
	      return reviews;
	   }
	
	
	public static DTOreview reviewdetail(String rno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM review WHERE rno=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, rno);   
	      rs = stmt.executeQuery();
	      
	      rs.next();

	      rno = rs.getString(1);
	      String rtitle = rs.getString(2);
	      String rname = rs.getString(3);
	      String rspo = rs.getString(4);
	      String rcont = rs.getString(5);
	      String rdate = rs.getString(6);
	      
	      

	      
	      DTOreview review = new DTOreview(rno, rtitle, rname, rspo, rcont, rdate);
	      
	      return review;
	   }

	public static DTOreview reviewdetail2 (String rname) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      
	      String sql = "SELECT * FROM review WHERE rname=? ";
	      conn= ConnectionPool.get();
	      stmt = conn.prepareStatement(sql);
	         stmt.setString(1, rname);   
	      rs = stmt.executeQuery();
	      
	      rs.next();

	      String rno = rs.getString(1);
	      String rtitle = rs.getString(2);
	      		 rname = rs.getString(3);
  		  String rspo = rs.getString(4);		 
	      String rcont = rs.getString(5);
	      String rdate = rs.getString(6);
	     
	      
	      

	      
	      DTOreview review = new DTOreview(rno, rtitle, rname, rspo, rcont, rdate);
	      
	      return review;
	   }
	
	
	public static int reviewupdate(String rtitle, String rname, String rspo, String rcont, String rno) throws NamingException, SQLException {
        
		  Connection conn = null;
	      PreparedStatement stmt = null;
	      
	     
	      
	      String sql = "UPDATE review SET rtitle = ?, rname = ?, rspo = ?, rcont = ? WHERE rno=?";
	      
	 
	      conn= ConnectionPool.get();
	      
	      stmt = conn.prepareStatement(sql);
	      stmt.setString(1, rtitle);	
	      stmt.setString(2, rname);
	      stmt.setString(3, rspo);
	      stmt.setString(4, rcont);
	      stmt.setString(5, rno);
	      
	      
	      int result = stmt.executeUpdate();
	     
			/* return result > 0? true : false ; */
	      
	      return result;
	      
	      
	   }
	
		/*
		 * public static ArrayList<DTOreview> reviewsearch (String searchField, String
		 * searchText){//특정한 리스트를 받아서 반환
		 * 
		 * Connection conn = null; PreparedStatement stmt = null; ResultSet rs = null;
		 * 
		 * 
		 * ArrayList<DTOreview> lists = new ArrayList<DTOreview>();
		 * 
		 * String SQL ="select * from review WHERE "+searchField.trim() ;
		 * 
		 * try { if(searchText != null && !searchText.equals("") ){//이거 빼면 안 나온다ㅜ 왜지?
		 * SQL +=" LIKE '%"+searchText.trim()+"%' order by rno desc limit 10"; }
		 * 
		 * PreparedStatement pstmt=conn.prepareStatement(SQL);
		 * rs=pstmt.executeQuery();//select
		 * 
		 * while(rs.next()) { DTOreview bbs = new DTOreview();
		 * bbs.setRno(rs.getString(1)); bbs.setRtitle(rs.getString(2));
		 * bbs.setRname(rs.getString(3)); bbs.setRspo(rs.getString(4));
		 * bbs.setRcont(rs.getString(5)); bbs.setRdate(rs.getString(6));
		 * lists.add(bbs);//list에 해당 인스턴스를 담는다. } } catch(Exception e) {
		 * e.printStackTrace(); } return lists;//ㄱㅔ시글 리스트 반환 }
		 */
	
	
}
