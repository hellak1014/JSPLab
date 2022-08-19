package DB;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOboard {

   //C create, R read, U update, D delete
   //회원 가입 (테이블에 데이터 넣기)
   public static int boardinsert(String title,String content, String iname) throws NamingException, SQLException {
      
      Connection conn = null;
      PreparedStatement stmt = null;
      int result = 0;
      
      String sql ="INSERT INTO board(title,content, iname) VALUES(?,?,?)";
      //Connection Pool 이용
      conn = ConnectionPool.get();
      
      stmt = conn.prepareStatement(sql);
         stmt.setNString(1, title);
         stmt.setNString(2, content);
         stmt.setNString(3, iname);
      
         
      //   executeUpdate() 넘겨받는개 없는애들          executeQurry() 넘겨받는게 있는애들
       result = stmt.executeUpdate();
      //결과가 1과 2로 넘어온다.
      return result;
   }
   public static ArrayList<DTOboard> fileList() throws NamingException, SQLException{
      Connection conn = null;
      PreparedStatement stmt = null;
      ResultSet rs = null;
      
      String sql = "SELECT * FROM board";
      
      conn = ConnectionPool.get();
      stmt = conn.prepareStatement(sql);
      rs = stmt.executeQuery();
      
      ArrayList<DTOboard> files = new ArrayList<DTOboard>();
      
      while(rs.next()) {
         files.add(new DTOboard(rs.getString(1),
                              rs.getString(2),
                              rs.getString(3),
                              rs.getString(4),
                              rs.getString(5)));
      }
      return files;
   }
   
   public static DTOboard fileDetail(String bid) throws NamingException, SQLException {
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
      String title = rs.getString(2);
      String content = rs.getString(3);
      String iname = rs.getString(4);
      String bdate = rs.getString(5);
      

      
      DTOboard file = new DTOboard(bid,title,content,iname,bdate);
      
      return file;
   }
}