package DB;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOboard {

	public static int join (String title, String memo) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO board (title, memo) VALUES (?,?)";
		
		conn=ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setNString(1, title);
			stmt.setNString(2, memo);
			
		int result = stmt.executeUpdate();
		
		
		return result;
		
	}
	
	
}
