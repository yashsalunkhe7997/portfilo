package portfilo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Insert {
	
	public static boolean savedata(String Full_name, String Email_id ,String Sub_ject, String Company,String Messages) throws Exception {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
		PreparedStatement ps=conn.prepareStatement("insert into companies values(?,?,?,?,?)");
		
		ps.setString(1, Full_name);
		ps.setString(2, Email_id);
		ps.setString(3, Sub_ject);
		ps.setString(4, Company);
		ps.setString(5, Messages);
		
		ps.executeUpdate();
		
		return true;
		
	}
	
  public static  ResultSet getdata() throws Exception ,ClassNotFoundException{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
		PreparedStatement ps=conn.prepareStatement("select * from companies");
		ResultSet rs=ps.executeQuery();
		
	     return rs;
	     
	     
	
  }
  
  
  

}
