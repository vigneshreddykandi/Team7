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
<body>




<div class="container-fluid">

<br>
<h4> Add Candidate
</h4>
<br>

<a href="/jsp/UpdateCandidate.jsp" >Go back</a>
 <br>

<form method="post" action="/jsp/update-process.jsp">

<div class="mb-3">
ID:<br>
<input type="text" name="ID" class="form-control" value="<%=resultSet.getString("ID") %>">
  </div>

<div class="mb-3">
SURNAME:<br>
<input type="text" name="SURNAME" class="form-control" value="<%=resultSet.getString("SURNAME") %>">
  </div>

<div class="mb-3">
FIRSTNAME:<br>
<input type="text" name="FIRSTNAME" class="form-control" value="<%=resultSet.getString("FIRSTNAME") %>">
</div>
<div class="mb-3">

PARTY:<br>
<input type="text" name="PARTY" class="form-control" value="<%=resultSet.getString("PARTY") %>">
</div>
<div class="mb-3">
LOCATION:<br>
<input type="text" name="LOCATION" class="form-control" value="<%=resultSet.getString("LOCATION") %>">
</div>
<div class="mb-3">
IKA:<br>
<input type="text" name="IKA" class="form-control" value="<%=resultSet.getString("IKA") %>">
</div>
<div class="mb-3">

REASON:<br>
<input type="text" name="WHY_COMMISSION" class="form-control" value="<%=resultSet.getString("WHY_COMMISSION") %>">
</div>
<div class="mb-3">
CHANGES:<br>
<input type="text" name="WHAT_ATHES_WANT_EDES" class="form-control" value="<%=resultSet.getString("WHAT_ATHES_WANT_EDES") %>">
</div>
<div class="mb-3">
PROFESSIONAL:<br>
<input type="text" name="PROFESSIONAL" class="form-control" value="<%=resultSet.getString("PROFESSIONAL") %>">
</div>
<br><br>
<input type="submit" value="submit"  class="btn btn-primary">
</form>
<div class="container-fluid">
  
</div>
</div>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>

 <footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</body>
</html>