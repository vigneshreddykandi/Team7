<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Election Machine</title>
    <link rel="stylesheet" href="html/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <style>
body  {
 
  background-color: #ffff;
}


</style>
  </head>

  
<header >

	<%@ include file="/html/adminheader.html" %>
<a class="nav-link" aria-current="page" href=<% if (session.getAttribute("username")==null){out.println("/jsp/adminlogin.jsp");}else{out.println("/logout");} %>>
               <% if (session.getAttribute("username")==null){out.println("Login");}else{out.println("logout");} %></a>
</header>

<meta charset="utf-8">
<title></title>

</head>
<body>

    <div style="text-align: center">
        <h1 style="margin-top: 80px; font-weight: bold;">Admin Login</h1>
        
        <form id="login-form" action="login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit"class="btn btn-primary">Login</button>
        </form>
    </div>
</body>

 <footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>