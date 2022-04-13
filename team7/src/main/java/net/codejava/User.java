package net.codejava;

/** 
 * @author mona_achaaoud 
 * Class that represents a user which is the admin 
 */

import java.io.Serializable;


public class User 
implements Serializable {
    private static final long serialVersionUID = 1L;
    private String fullname;
    private String email;
    private String password;
    
    
 public void setFullname(String string) {
  // TODO Auto-generated method stub
  
 }
 public void setEmail(String email2) {
  // TODO Auto-generated method stub
  
  
  
 }
 /**
  * @return the password
  */
 public String getPassword() {
  return password;
 }
 /**
  * @param password the password to set
  */
 public void setPassword(String password) {
  this.password = password;
 }
 /**
  * @return the email
  */
 public String getEmail() {
  return email;
 }
 
 
    // getters and setters are not shown for brevity   
     
}