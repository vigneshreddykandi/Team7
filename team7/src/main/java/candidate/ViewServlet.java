package candidate;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
            throws ServletException, IOException {  
     response.setContentType("text/html");  
     PrintWriter out=response.getWriter();  
     out.println("<a href='index.html'>Add New Candidate</a>");  
     out.println("<h1>Candidate List</h1>");  
     
     List<Candidate> list=CandidateDao.getAllCandidates(); 
     out.print("<table border='1' width='100%'");


     out.print("<tr><th>Id</th><th>Surname</th><th>Firstname</th><th>Party</th><th>Location</th><th>Ika</th><th>Why comission</th><th>WHAT ATHES WANT EDES</th><th>Professional</th>  <th>Edit</th><th>Delete</th></tr>");  
     
     for(Candidate e:list){
    	 
    	 
    	 
    	 out.print("<tr><td>"+e.getID()+"</td> <td>"+e.getSURNAME()+"</td><td>"+e.getFIRSTNAME()+"</td> <td>"+e.getPARTY()+"</td><td>"+e.getLOCATION() +"</td>  <td>"+e.getIKA()+"</td><td>"+e.getWHY_COMMISSION()+"</td><td>"+e.getWHAT_ATHES_WANT_EDES()+"</td><td>"+e.getPROFESSIONAL()+"</td> <td><a href='EditServlet?Id="+e.getID()+"'>edit</a></td>   <td><a href='DeleteServlet?Id="+e.getID()+"'>delete</a></td></tr>"); 
    	 out.print("</table>");  
         
         out.close();  
     }
     }  
 }  
	
 	