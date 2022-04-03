package team7;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
	    name = "updatequestion",
	    urlPatterns = {"/updatequestion"}
	)
public class AddGame extends HttpServlet {
	@Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response) 
	       throws IOException, ServletException {
	   doGet(request, response);
	  }
	  @Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response) 
	      throws IOException, ServletException {
	  response.setContentType("text/html");
	  PrintWriter out=response.getWriter();
}
	  RequestDispatcher rd=request.getRequestDispatcher("htmlstart.html");
	  rd.include(request,  response);
	  Connection conn=null;
	  try {
		  Class.forName("com.mysql.jdbc.Driver").newInstance();
		   
		   
		   conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "pena", "kukkuu");
	  }