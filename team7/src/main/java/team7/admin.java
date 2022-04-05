package team7;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
	    name = "admin",
	    urlPatterns = {"/add"}
	)
public class admin extends HttpServlet {
	@Override
	  public void doGet(HttpServletRequest request, HttpServletResponse response) 
	      throws IOException {
	}
}
