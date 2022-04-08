<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/vaalikone";%>
<%!String user = "root";%>
<%!String psw = "password";%>
<%

String ID = request.getParameter("ID");
String SURNAME=request.getParameter("SURNAME");
String FIRSTNAME=request.getParameter("FIRSTNAME");
String PARTY=request.getParameter("PARTY");
String LOCATION=request.getParameter("LOCATION");
String IKA=request.getParameter("IKA");
String WHY_COMMISSION=request.getParameter("WHY_COMMISSION");
String WHAT_ATHES_WANT_EDES=request.getParameter("WHAT_ATHES_WANT_EDES");
String PROFESSIONAL=request.getParameter("PROFESSIONAL");
if(ID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(ID);

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update CANDIDATE set ID=?,SURNAME=?,FIRSTNAME=?,PARTY=?,LOCATION=?,IKA=?,WHY_COMMISSION=?,WHAT_ATHES_WANT_EDES=?,PROFESSIONAL=? where ID="+ID;
ps = con.prepareStatement(sql);
ps.setString(1,ID);
ps.setString(2, SURNAME);
ps.setString(3, FIRSTNAME);
ps.setString(4, PARTY);
ps.setString(5, LOCATION);
ps.setString(6, IKA);
ps.setString(7, WHY_COMMISSION);
ps.setString(8, WHAT_ATHES_WANT_EDES);
ps.setString(9, PROFESSIONAL);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
request.getRequestDispatcher("/jsp/UpdateCandidate.jsp").include(request, response); 

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