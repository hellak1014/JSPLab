package DB;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOmember {
	
	public static int join(String mname, String mtel) throws NamingException, SQLException {
		
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO member (mname, mtel) VALUES(?,?)";
		
		conn=ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mtel);
		
			
		int result = stmt.executeUpdate();
		
		return result;
				
		
	}

}
