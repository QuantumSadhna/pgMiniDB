1.	
2.	import java.sql.Connection;
3.	import java.sql.DriverManager;
4.	import java.sql.SQLException;
5.	
6.	public class DatabaseConnection {
7.	    public static void main(String[] args) {
8.	        // Database connection URL, username, and password
9.	        String url = "jdbc:postgresql://localhost:5432/DBname"; 
10.	        String user = "ur_username";
11.	        String password = "ur_passwd"; 
12.	
13.	        try {
14.	
15.	            Class.forName("org.postgresql.Driver");
16.	
17.	            
18.	            Connection connection = DriverManager.getConnection(url, user, password);
19.	            System.out.println("Connection to the database established successfully!");
20.	
21.	            connection.close();
22.	        } catch (ClassNotFoundException e) {
23.	            System.out.println("PostgreSQL Driver not found!");
24.	            e.printStackTrace();
25.	        } catch (SQLException e) {
26.	            System.out.println("Connection failed!");
27.	            e.printStackTrace();
28.	        }
29.	    }
30.	}
