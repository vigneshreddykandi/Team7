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
    <%-- <div style="text-align: center">
=======
   <%--  <div style="text-align: center">
>>>>>>> Stashed changes
        <h1>Welcome to Admin Dashboard</h1>
        <b>${user.fullname} (${user.email})</b>
        <br><br>
        <!-- <a href="/logout">Logout</a> -->
    </div> --%>
		
    
    <main>
	  <div class="container">
	  	<hr>
	    <h1>Admin dashboard</h1>
	    <hr>
	   	<img src="http://cdn.onlinewebfonts.com/svg/img_325788.png" alt="admin icon" style="width:100px;height:100px;"><br>   
	   	 <a href="./jsp/UpdateCandidate.jsp"><button class="button" type="button">View/Edit Candidates</button></a>
	   	 <a href="#"><button class="button" type="button">Questions</button></a>
	   	 
<!-- 		<a href="../editallcandidates"><button class="button" type="button">Edit Candidates</button></a> -->
<!-- 		<a href="../showcreatecandidate"><button class="button" type="button">New Candidate</button></a> -->
<!-- 		<a href="../editallquestions"><button class="button" type="button">Edit Questions</button></a> -->
		
		

	 </div>
</main>
</body>

<footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>
