package candidate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditServlet2
 */
@WebServlet("/EditServlet2")
public class EditServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)   
	          throws ServletException, IOException {  
	        response.setContentType("text/html");  
	        PrintWriter out=response.getWriter(); 
	        
	        String sid=request.getParameter("ID"); 
	        int ID=Integer.parseInt(sid);
	        
	        String SURNAME=request.getParameter("SURNAME");  
	        String FIRSTNAME=request.getParameter("FIRSTNAME");  
	        String PARTY=request.getParameter("PARTY");  
	        String LOCATION=request.getParameter("LOCATION");  
	        int IKA=(int) request.getAttribute("IKA");  
	        String WHY_COMMISSION=request.getParameter("WHY_COMMISSION");  
	        String WHAT_ATHES_WANT_EDES=request.getParameter("WHAT_ATHES_WANT_EDES"); 
	        String PROFESSIONAL=request.getParameter("PROFESSIONAL"); 
	        
	        
	        Candidate e=new Candidate();
	        e.setID(ID);  
	        e.setSURNAME(SURNAME);  
	        e.setFIRSTNAME(FIRSTNAME);  
	        e.setPARTY(PARTY); 
	        e.setLOCATION(SURNAME);  
	        e.setIKA(IKA);  
	        e.setWHY_COMMISSION(WHY_COMMISSION);
	        e.setWHAT_ATHES_WANT_EDES(WHAT_ATHES_WANT_EDES);  
	        e.setPROFESSIONAL(PROFESSIONAL);  
	        
	        int status=CandidateDao.save(e); 
	        
	        if(status>0){  
	            response.sendRedirect("ViewServlet");  
	        }else{  
	            out.println("Sorry! unable to update record");  
	        }  
	          
	        out.close();  
	    }  
	  
	}
		
	    

