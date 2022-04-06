<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>

<header >

	<%@ include file="/html/dashboard_header.html" %>

</header>
</head>
<body>
    <div style="text-align: center">
        <h1>Welcome to Admin Dashboard</h1>
        <b>${user.fullname} (${user.email})</b>
        <br><br>
        <!-- <a href="/logout">Logout</a> -->
    </div>
</body>

<footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>
