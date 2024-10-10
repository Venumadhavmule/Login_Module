import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistDao {
	private String dburl = "jdbc:mysql://localhost:3306/userdb";
	private String dbuname = "root";
	private String dbpassword = "Reddy";
	private String dbdriver = "com.mysql.jdbc.Driver";

	public void loadDriver(String dbdriver) {

		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			conn=DriverManager.getConnection(dburl,dbuname,dbpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
		
	}

	public void addReg(Member member) {
		loadDriver(dbdriver);
		Connection conn = getConnection();
		String addSql = "insert into userdb.member values(?,?,?,?,?,?)";
//		String result="Data Entered Successfully";
		try {
			PreparedStatement ps = conn.prepareStatement(addSql);
			ps.setString(1, member.getFname());
			ps.setString(2, member.getLname());
			ps.setString(3, member.getPhone());
			ps.setString(4, member.getPhone());
			ps.setString(5, member.getUname());
			ps.setString(6, member.getPassword());
			ps.executeUpdate();
		} catch (SQLException e) {
//			result="Data Not Entered Successfully";
			e.printStackTrace();
		}
		
	}

}
