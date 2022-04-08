<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new candidate</title>
</head>
<body>
<h1>Add New Candidate</h1>  
<form action="CandidateServlet" method="post">  
<table>  
<tr><td>SURNAME:</td><td><input type="text" name="SURNAME"/></td></tr>  
<tr><td>FIRSTNAME:</td><td><input type="text" name="FIRSTNAME"/></td></tr>  
<tr><td>PARTY:</td><td><input type="text" name="PARTY"/></td></tr>  
 <tr><td>LOCATION:</td><td><input type="text" name="LOCATION"/></td></tr>  
 <tr><td>IKA:</td><td><input type="number" name="IKA"/></td></tr> 
 <tr><td>WHY_COMMISSION:</td><td><input type="text" name="WHY_COMMISSION"/></td></tr> 
 <tr><td>WHAT_ATHES_WANT_EDES:</td><td><input type="text" name="WHAT_ATHES_WANT_EDES"/></td></tr> 
  <tr><td>PROFESSIONAL:</td><td><input type="text" name="PROFESSIONAL"/></td></tr>  
  
 
<tr><td colspan="2"><input type="submit" value="Save Candidate"/></td></tr>  
</table>  
</form>  
  
<br/>  
<a href="ViewServlet">view employees</a> 
</body>
</html>