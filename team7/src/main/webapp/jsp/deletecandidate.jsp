<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String ID=request.getParameter("ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "root", "password");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM CANDIDATE WHERE ID="+ID);
out.println("Data Deleted Successfully!");
request.getRequestDispatcher("/jsp/UpdateCandidate.jsp").include(request, response); 

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>