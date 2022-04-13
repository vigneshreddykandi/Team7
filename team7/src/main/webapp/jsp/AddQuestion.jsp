<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta charset="ISO-8859-1">  
<title>Insert title here</title>  
</head>  
<body>  
  
<h1>Add New Question</h1>  
<form action="/AddQuestion" method="post">  
<table>  
<tr><td>KYSYMYS:</td><td><input type="text" name="Question"/></td></tr>  

<tr><td colspan="2"><input type="submit" value="Save Question"/></td></tr>  
</table>  
</form>  
  
<br/>  
<a href="/viewquestionservlet">view question</a>  
  
</body>  
</html>  