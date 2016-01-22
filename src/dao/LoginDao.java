package dao;


import java.sql.*;

import model.Login;
import util.DbUtil;  

public class LoginDao {

	private Connection connection;
	
	public LoginDao(){
		connection = DbUtil.getConnection();
		
	}
	
	public boolean validate(Login login){  
		boolean status=false;  
		try{  
		
		              
		PreparedStatement ps=connection.prepareStatement(  
		    "select * from user where login=? and pass=?");  
		  
		
		ps.setString(1, login.getLogin());
		ps.setString(2, login.getPass());  
		              
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		              
		}catch(Exception e){}  
		  
		return status;  
		  
		}  
	
}
