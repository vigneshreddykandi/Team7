<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../CSS/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
 <%
 
 	// specify that this page should not cache with browser
 	response.setHeader("Cache-Control", "no-cache, no-store , must-revalidate"); //HTTP 1.1
 	response.setHeader("Pragma","no-cache"); //HTTP 1.0
 	response.setHeader("Expires","0"); //Proxies

 	// check for login 
 	if(session.getAttribute("username")==null){
 		response.sendRedirect("../jsp/adminlogin.jsp");
 	}
 %>
 <header>
   <nav class="navbar navbar-expand-lg navbar-dark bg-light navbar-fixed-top">
       <div class="container-fluid">
         <a class="navbar-brand" href="../index.jsp">Election Machine</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
             <li class="nav-item">
               <a class="nav-link" aria-current="page" href=<% if (session.getAttribute("username")==null){out.println("/jsp/adminlogin.jsp");}else{out.println("/logout");} %>>
               <% if (session.getAttribute("username")==null){out.println("Login");}else{out.println("logout");} %></a>             </li>
             <li class="nav-item">
               <a class="nav-link" href="../statistics">Statistics</a>
             </li>
           </ul>
         </div>
       </div>
     </nav>
</header>
<main>
<div class="form-container3">
<hr>

<h1>Update Candidate ${requestScope.candidate.id}</h1>
<hr>

<form action='../updatecandidate?id=${candidate.id}' method='get'>
<div>
<h3>Candidate ID: ${candidate.id }'</h3>
<input type='hidden' name='id' class="candidatebox" value='${candidate.id}'><br>
First Name:<input type='text' name='firstname' class="candidatebox" value='${candidate.firstname}'><br>
Last Name:<input type='text' name='surname' class="candidatebox" value='${candidate.surname}'><br>
Party:<input type='text' name='party' class="candidatebox" value='${candidate.party}'><br>
Profession: <input type='text' name='professional' class="candidatebox" value='${candidate.professional}'><br>
IKA: <input type='text' name='ika' class="candidatebox" value='${candidate.ika}'><br>
Why Commission: <input type='text' name='whyCommission' class="candidatebox2" value='${candidate.whyCommission}'><br>
More: <input type='text' name='whatAthesWantEdes' class="candidatebox2" value='${candidate.whatAthesWantEdes}'><br>


<input class="button" type='submit' name='ok' value='Submit'>
<a href="../editallcandidates"><button class="button" type="button">Back to Candidates</button></a>

</div>
</form>
<div class="info-img">
</div>
</div>

</main>
</body>
</html>