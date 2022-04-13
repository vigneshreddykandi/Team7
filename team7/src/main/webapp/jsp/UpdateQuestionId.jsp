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
String sql ="select * from questions where ID="+ID;
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
<h4> Update Question
</h4>
<br>

<a href="/jsp/UpdateQuestion.jsp" >Go back</a>
 <br>
 
 
 <form method="post" action="/jsp/questionupdate-process.jsp">
 
 
 
<div class="mb-3">
ID:<br>
<input type="text" name="Id" class="form-control" value="<%=resultSet.getString("ID") %>">
  </div>

<div class="mb-3">
Question:<br>
<input type="text" name="Question" class="form-control" value="<%=resultSet.getString("Question") %>">
  </div>
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
 
 