package candidate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CandidateDao {
	 
     
	public static Connection getConnection(){ 
		String jdbcURL = "jdbc:mysql://127.0.0.1:3306/vaalikone?user=root";

	     String dbUser = "root";
	     String dbPassword = "password";
       Connection con=null;  
        try{  
        	con=DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/?user=root","root","password"); 
            
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
	            ps.setString(2,e. getSURNAME());  
	            ps.setString(3,e.getFIRSTNAME());  
	            ps.setString(4,e.getPARTY());  
	            ps.setString(5,e.getLOCATION());  
	            ps.setString(5,e.getIKA());  
	            ps.setString(7,e.getWHY_COMMISSION());  
	            ps.setString(8,e.getWHAT_ATHES_WANT_EDES());  
	            ps.setString(9,e.getPROFESSIONAL());  
	             
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
	            ps.setInt(1,e.getID());
	            ps.setString(2,e.getSURNAME());  
	            ps.setString(3,e.getFIRSTNAME());  
	            ps.setString(4,e.getPARTY());  
	            ps.setString(5,e.getLOCATION());  
	            ps.setString(6,e.getIKA()); 
	            ps.setString(7,e.getWHY_COMMISSION());  
	            ps.setString(8,e.getWHAT_ATHES_WANT_EDES());  
	            ps.setString(9,e.getPROFESSIONAL());  
	             
	            status=ps.executeUpdate(); 
	            
	            con.close();  
	            
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
	 
	            
	 public static int delete(int ID){  
		 int status=0; 
		 try{  
			 Connection con=CandidateDao.getConnection(); 
	            PreparedStatement ps=con.prepareStatement( 
	            		"delete from CANDIDATE where ID=?" );
	            
	            ps.setInt(1,ID);  
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  
	 
	 public static Candidate getCandidateByID(int ID){  
	        Candidate e=new Candidate();  
	          
	        try{  
	        	Connection con=CandidateDao.getConnection(); 	
	        	PreparedStatement ps=con.prepareStatement(
	        			"select * from CANDIDATE where ID=?");  
	        	
	        	ps.setInt(1,ID);
	        	ResultSet rs=ps.executeQuery(); 
	        	if(rs.next()){  
	        		e.setID(rs.getInt(1));  
	                e.setSURNAME(rs.getString(2));  
	                e.setFIRSTNAME(rs.getString(3));  
	                e.setPARTY(rs.getString(4));  
	                e.setLOCATION(rs.getString(5)); 
	                e.setIKA(rs.getString(6));
	                e.setWHY_COMMISSION(rs.getString(7));  
	                e.setWHAT_ATHES_WANT_EDES(rs.getString(8));  
	                e.setPROFESSIONAL(rs.getString(9)); 
	        	}
	        	 con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return e;  
	    }  
	 public static List<Candidate> getAllCandidates(){
		 List<Candidate> list=new ArrayList<Candidate>();
		 try{  
	            Connection con=CandidateDao.getConnection(); 
	            PreparedStatement ps=con.prepareStatement("select * from CANDIDATE");
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){ 
	            	
	            	Candidate e=new Candidate();
	            	e.setID(rs.getInt(1));  
	                e.setSURNAME(rs.getString(2));  
	                e.setFIRSTNAME(rs.getString(3));  
	                e.setPARTY(rs.getString(4));  
	                e.setLOCATION(rs.getString(5)); 
	                e.setIKA(rs.getString(6));
	                e.setWHY_COMMISSION(rs.getString(7));  
	                e.setWHAT_ATHES_WANT_EDES(rs.getString(8));  
	                e.setPROFESSIONAL(rs.getString(9)); 
	            }
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    }  
	}  