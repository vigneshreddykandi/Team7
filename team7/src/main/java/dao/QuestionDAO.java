package dao;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet(
	    name = "QstAns",
	    urlPatterns = {"/QstAns"}
public class QuestionDAO extends HttpServlet {

}

public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
{  
    PrintWriter out = res.getWriter();  
    res.setContentType("text/html");  
    out.println("<html><body>");  
    try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "root", "password");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM vaalikone.KYSYMYKSET;");
    out.println("<table border=1 width=50% height=50%>");  
    out.println("<tr><th>EmpId</th><th>EmpName</th><th>Salary</th><tr>");  
    while (rs.next()) 
    {  
        int n = rs.getInt("KYSYMYS_ID");  
        String nm = rs.getString("KYSYMYS");  
       
        out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" + s + "</td></tr>");   
    }  
    out.println("</table>");  
    out.println("</html></body>");  
    con.close();  
   }