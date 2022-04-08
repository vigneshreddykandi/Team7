package candidate;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")

public class EditServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
           throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        out.println("<h1>Update Employee</h1>");  
        String sid=request.getParameter("ID");  
        int ID=Integer.parseInt(sid);  
        
        Candidate e=CandidateDao.getCandidateByID(ID);
        
        out.print("<form action='EditServlet2' method='post'>");  
        out.print("<table>");
        out.print("<tr><td>ID:</td><td><input type='hidden' name='Id' value='"+e.getID()+"'/></td></tr>"); 
        out.print("<tr><td>Surname:</td><td><input type='text' name='surname' value='"+e.getSURNAME()+"'/></td></tr>");
        out.print("<tr><td>Firstname:</td><td><input type='text' name='firstname' value='"+e.getFIRSTNAME()+"'/></td></tr>");
        out.print("<tr><td>Party:</td><td><input type='text' name='party' value='"+e.getPARTY()+"'/></td></tr>");
        out.print("<tr><td>Location:</td><td><input type='text' name='location' value='"+e.getLOCATION()+"'/></td></tr>");
        out.print("<tr><td>Ika:</td><td><input type='hidden' name='ika' value='"+e.getIKA()+"'/></td></tr>"); 
        out.print("<tr><td>why commission:</td><td><input type='text' name='why_commission' value='"+e.getWHY_COMMISSION()+"'/></td></tr>");
        out.print("<tr><td>what athes want edes:</td><td><input type='text' name='what_athes_want_edes' value='"+e.getWHAT_ATHES_WANT_EDES()+"'/></td></tr>");
        out.print("<tr><td>professional:</td><td><input type='text' name='professional' value='"+e.getPROFESSIONAL()+"'/></td></tr>");


        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
        out.print("</table>");  
        out.print("</form>"); 
        
        out.close(); 

    }  
  }
