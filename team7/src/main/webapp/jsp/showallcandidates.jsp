<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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

	<%@ include file="/html/userheader.html" %>

</header>

<h1 allign = "centre"> List of candidates</h1>
<table class="table table-dark table-striped">
  <thead>
    
<tr>

<td>surname</td>
<td>first name</td>
<td>Party</td>
<td>Password</td>
<td>location</td>
<td>reason</td>
<td>changes</td>
<td>profession</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from CANDIDATE";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("SURNAME") %></td>
<td><%=resultSet.getString("FIRSTNAME") %></td>
<td><%=resultSet.getString("PARTY") %></td>
<td><%=resultSet.getString("LOCATION") %></td>
<td><%=resultSet.getString("IKA") %></td>
<td><%=resultSet.getString("WHY_COMMISSION") %></td>
<td><%=resultSet.getString("WHAT_ATHES_WANT_EDES") %></td>
<td><%=resultSet.getString("PROFESSIONAL") %></td>



</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
=======
<main>
<div class="form-container2">
<h1>Candidates</h1>
<div class="row">
<c:forEach var="candidate" items="${requestScope.candidatelist}">
<div class="col-sm-4">
    <div id="project1" class="project_cards">
       <div class="card_photo">
       </div>
       <div class="card-header">
           <h4>${candidate.firstname} - ${candidate.surname}</h4>
       </div>
       <div class="card-describe">
       	<p class="card-text"><b>Candidate id:</b> ${candidate.id}</p>	    
	   	<p class="card-text"><b>Candidate Party:</b> ${candidate.party}</p>	    
	    <p class="card-text"><b>Candidate Location:</b> ${candidate.location}</p>    
	    <p class="card-text"><b>Candidate profession:</b> ${candidate.professional}</p>
	    <a href='../showonecandidate?id=${candidate.id}' class="btn btn-primary">More Information</a>
	    
       </div>
   </div>
</div>	
	<!--  <a href='../deletecandidate?id=${candidate.id}'><button class="submit-button">Delete</button></a> 
	<a href='../readtoupdatecandidate?id=${candidate.id}'><button class="submit-button">Update</button></a>-->
</c:forEach>
</div>

</div>
</main>
</body>

<footer>
  	<%@ include file="/html/footer.html" %>

</footer>
</body>



</html>