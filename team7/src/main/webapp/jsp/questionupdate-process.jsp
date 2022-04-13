<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/vaalikone";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%

String ID = request.getParameter("ID");
String Question=request.getParameter("Question");

if(ID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(ID);

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update questions set ID=?,Question=? where ID="+ID;
ps = con.prepareStatement(sql);
ps.setString(1,ID);
ps.setString(2, Question);


int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
request.getRequestDispatcher("/jsp/UpdateQuestion.jsp").include(request, response); 

}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
