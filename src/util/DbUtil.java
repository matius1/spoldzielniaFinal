package util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Properties;

import com.mysql.jdbc.Driver;


public class DbUtil {

	private static Connection connection = null;
	
	public static Connection getConnection(){
		
		if(connection !=null)
			return connection;
		
		else{
			
			try {
//				contextDestroyed();
				
				Properties prop =  new Properties();
				InputStream inputStream =  DbUtil.class.getClassLoader().getResourceAsStream("/db.properties");
				prop.load(inputStream);
				String driver = prop.getProperty("driver");
				String url = prop.getProperty("url");
				String user = prop.getProperty("user");
				String password = prop.getProperty("password");
				Class.forName(driver);
				connection = DriverManager.getConnection(url, user, password);
				System.out.println("Connected to DB");
		
					
				}catch (ClassNotFoundException e) {
	                e.printStackTrace();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            } catch (FileNotFoundException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	            return connection;	
			} 

		}
	public final static void contextDestroyed() {
	    // ... First close any background tasks which may be using the DB ...
	    // ... Then close any DB connection pools ...

	    // Now deregister JDBC drivers in this context's ClassLoader:
	    // Get the webapp's ClassLoader
	    ClassLoader cl = Thread.currentThread().getContextClassLoader();
	    // Loop through all drivers
	    Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
	    while (drivers.hasMoreElements()) {
	        Driver driver = (Driver) drivers.nextElement();
	        if (driver.getClass().getClassLoader() == cl) {
	            // This driver was registered by the webapp's ClassLoader, so deregister it:
	            try {
	              
	                DriverManager.deregisterDriver(driver);
	            } catch (SQLException ex) {
	               
	            }
	        } else {
	            // driver was not registered by the webapp's ClassLoader and may be in use elsewhere
	            
	        }
	    }
	}
	
	
	
}
