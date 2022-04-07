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
<form action="SaveServlet" method="post">  
<table>  
<tr><td>ID:</td><td><input type="text" name="Id"/></td></tr>  
<tr><td>SURNAME:</td><td><input type="text" name="surname"/></td></tr>  
<tr><td>FIRSTNAME:</td><td><input type="text" name="firstname"/></td></tr>  
<tr><td>PARTY:</td><td><input type="text" name="party"/></td></tr>  
 <tr><td>LOCATION:</td><td><input type="text" name="location"/></td></tr>  
 <tr><td>IKA:</td><td><input type="number" name="ika"/></td></tr> 
 <tr><td>WHY_COMMISSION:</td><td><input type="text" name="why_commission"/></td></tr> 
 <tr><td>WHAT_ATHES_WANT_EDES:</td><td><input type="text" name="what_athes_want_edes"/></td></tr> 
  <tr><td>PROFESSIONAL:</td><td><input type="text" name="professional"/></td></tr>  
  
 
<tr><td colspan="2"><input type="submit" value="Save Candidate"/></td></tr>  
</table>  
</form>  
  
<br/>  
<a href="ViewServlet">view employees</a> 
</body>
</html>