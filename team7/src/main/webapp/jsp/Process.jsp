<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String SURNAME=request.getParameter("SURNAME");
String FIRSTNAME=request.getParameter("FIRSTNAME");
String PARTY=request.getParameter("PARTY");
String LOCATION=request.getParameter("LOCATION");
String IKA=request.getParameter("IKA");
String WHY_COMMISSION=request.getParameter("WHY_COMMISSION");
String WHAT_ATHES_WANT_EDES=request.getParameter("WHAT_ATHES_WANT_EDES");
String PROFESSIONAL=request.getParameter("PROFESSIONAL");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "root", "password");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into CANDIDATE(SURNAME,FIRSTNAME,PARTY,LOCATION,IKA,WHY_COMMISSION,WHAT_ATHES_WANT_EDES,PROFESSIONAL)values('"+SURNAME+"','"+FIRSTNAME+"','"+PARTY+"','"+LOCATION+"','"+IKA+"','"+WHY_COMMISSION+"','"+WHAT_ATHES_WANT_EDES+"','"+PROFESSIONAL+"')");
        out.println("Data is successfully inserted!");
        request.getRequestDispatcher("/jsp/UpdateCandidate.jsp").include(request, response); 

        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>