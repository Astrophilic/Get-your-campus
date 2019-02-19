package counselling;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//import com.mysql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class authenticate {
	

	
	public String check_pwd(String s) { 
		 String str=null;
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/counselling","root","1234"); 
		Statement stmt = con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from users");  
	while(rs.next())  
	{
		if (rs.getString(1).equals(s))
			{str=rs.getString(2);
			break;}
		//con.close();  
		
	}}catch(Exception e){ System.out.println(e);}
	return str;
	}
	public boolean isValid(String user,String pwd) throws SQLException
	{
		String p=check_pwd(user);
		if(p!=null && p.equals(pwd))
		{
			return true;
		}
		else
			return false;
	}
	

}
