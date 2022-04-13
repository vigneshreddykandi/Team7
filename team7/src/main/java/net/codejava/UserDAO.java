package net.codejava;
 /** 
 * @author mona_achaaoud 
 * checkLogin() method checks the login information entered by the user against the data in the database 
 */


import java.sql.*;




import net.codejava.User;
 
public class UserDAO {
	
	 /** 
     * @param email of the admin 
     * @param password entered by admin  
     * @return user login 
     * @throws SQLException provides information on a database access error 
     * @throws ClassNotFoundException gets thrown when it tries to load in the user class 
     */
 
    public User checkLogin(String email, String password) throws SQLException,
          ClassNotFoundException {

       
        String jdbcURL = "jdbc:mysql://127.0.0.1:3306/vaalikone?user=root";

        String dbUser = "root";
        String dbPassword = "password";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM users WHERE email = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
 
        if (result.next()) {
            user = new User();
            user.setFullname(result.getString("fullname"));
            user.setEmail(email);
        }
 
        connection.close();
 
        return user;
   }
	
		
	
	
	
}
    