package DB;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOmember {

	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	
	public static int join(String mname,String mtel) throws NamingException, SQLException { //입력 받은 것들. static을 걸면 jsp에서 객체를 따로 생성하지 않고도 입력이 가능하다. 
		
		Connection conn = null;
		PreparedStatement stmt = null; //객체 2개 초기화. import 필요.import java.sql.*;로 처리.
		
		String sql = "INSERT INTO member (mname, mtel) VALUES(?,?)"; //입력 받은 것을 값에 넣기. INSERT구문.
		//Connection Pool 이용
		conn= ConnectionPool.get(); //꼭 예외처리를 해야한다. throws 구문. 
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mtel); //setNString과 setString은 신형 구형 차이. 오류 없이 하려면 setString이 낫다.
		
		int result = stmt.executeUpdate(); 
		//update는 리턴 받는게 없는 것. 
		//Query는 넘겨 받는게 있는 친구들(select같은것. 이 경우에는 객체가 하나 더 필요하다. ) 
		//하지만 결과는 넘겨 받아야 하기 때문에 int result로 실행. 결과는 1과 2로 넘어온다. 	
		
		return result;
	}
	//입력 받는 html이 데이터 처리 하는jsp로 던지고, jsp가 java로 던져서 얘가 DB에 던지는 것. 
}
