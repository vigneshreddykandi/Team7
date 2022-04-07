package candidate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CandidateDao {
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
        	Class.forName("oracle.jdbc.driver.OracleDriver");  
            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/vaalikone","root","password"); 
        }catch(Exception e){System.out.println(e);}  
        return con;  
        



        }
	 public static int save(Candidate e){
	        int status=0;  
	        try{  
	            Connection con=CandidateDao.getConnection(); 
	            PreparedStatement ps=con.prepareStatement( 
	            		"insert into CANDIDATE(ID,SURNAME,FIRSTNAME,PARTY,LOCATION,IKA,WHY_COMMISSION,WHAT_ATHES_WANT_EDES,PROFESSIONAL) values (?,?,?,?,?,?,?,?,?)");
	            ps.setInt(1,e.getID());
	            ps.setString(2,e.getSurname());  
	            ps.setString(3,e.getFirstname());  
	            ps.setString(4,e.getParty());  
	            ps.setString(5,e.getLocation());  
	            ps.setInt(6,e.getIka()); 
	            ps.setString(7,e.getWhy_commission());  
	            ps.setString(8,e.getWhat_athes());  
	            ps.setString(9,e.getProfessional());  
	             
	            status=ps.executeUpdate(); 
	            
	            con.close();  
	            
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
	 
	 
	 public static int update(Candidate e){ 
		 int status=0; 
		 try{  
	            Connection con=CandidateDao.getConnection();  
	            PreparedStatement ps=con.prepareStatement( 
	            		"update CANDIDATE set SURNAME=?,FIRSTNAME=?,PARTY=?,LOCATION=?,IKA=?,WHY_COMMISSION=?,WHAT_ATHES_WANT_EDES=?,PROFESSIONAL=? where ID=?"); 
	            ps.setString(1,e.getSurname());  
	            ps.setString(2,e.getFirstname());  
	            ps.setString(3,e.getParty());  
	            ps.setString(4,e.getLocation());  
	            ps.setInt(5,e.getIka()); 
	            ps.setString(6,e.getWhy_commission());  
	            ps.setString(7,e.getWhat_athes());  
	            ps.setString(8,e.getProfessional());  
	            
	            status=ps.executeUpdate();  
	            
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
	            


	}
}
