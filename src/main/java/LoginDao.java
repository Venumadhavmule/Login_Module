import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

public class LoginDao {
	String sqlc="select uname,password from userdb.member where uname=? and password=?";
	String url = "jdbc:mysql://localhost:3306/userdb";
	String usrname = "root";
	String pswd = "Reddy";

public boolean check(String uname, String pass) {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url,usrname,pswd);
		PreparedStatement st = conn.prepareStatement(sqlc);
		st.setString(1, uname);
		st.setString(2,pass);
		
		ResultSet rs =  st.executeQuery();
		if(rs.next()) {
			return true;
		}
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	
	return false;
}
}
