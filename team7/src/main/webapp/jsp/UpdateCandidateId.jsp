<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String ID = request.getParameter("ID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "vaalikone";
String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from CANDIDATE where ID="+ID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<!DOCTYPE html>
<head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Election Machine</title>
    <link rel="stylesheet" href="/html/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
<html>
<body>
<header>

	<%@ include file="/html/dashboard_header.html" %>


</header>
<h1>Update Candidate</h1>
<form method="post" action="/jsp/update-process.jsp">
<input type="hidden" name="ID" value="<%=resultSet.getString("ID") %>">
<input type="text" name="ID" value="<%=resultSet.getString("ID") %>">
<br>
SURNAME:<br>
<input type="text" name="SURNAME" value="<%=resultSet.getString("SURNAME") %>">
<br>
FIRSTNAME:<br>
<input type="text" name="FIRSTNAME" value="<%=resultSet.getString("FIRSTNAME") %>">
<br>
PARTY:<br>
<input type="text" name="PARTY" value="<%=resultSet.getString("PARTY") %>">
<br>
LOCATION:<br>
<input type="text" name="LOCATION" value="<%=resultSet.getString("LOCATION") %>">
IKA:<br>
<input type="text" name="IKA" value="<%=resultSet.getString("IKA") %>">
<br>
REASON:<br>
<input type="text" name="WHY_COMMISSION" value="<%=resultSet.getString("WHY_COMMISSION") %>">
<br>
CHANGES:<br>
<input type="text" name="WHAT_ATHES_WANT_EDES" value="<%=resultSet.getString("WHAT_ATHES_WANT_EDES") %>">
PROFESSIONAL:<br>
<input type="text" name="PROFESSIONAL" value="<%=resultSet.getString("PROFESSIONAL") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

 <footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</body>
</html>