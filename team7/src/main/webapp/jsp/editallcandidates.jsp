<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../html/style.css" rel="stylesheet">
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
 		response.sendRedirect("../jsp/editallcandidates.jsp");
 	}
 %>
<header >

	<%@ include file="/html/adminheader.html" %>

</header>
<main>
<h1>Edit Candidates</h1>
<div class="form-container3">


<c:forEach var="candidate" items="${requestScope.candidatelist}">
<div class="row">
<div class="candidate-container">
<div class="candidate-container-info">
	<h3>Candidate ID: ${candidate.id}</h3>
	<p>${candidate.firstname}  ${candidate.surname}</p>
	<p>Party: ${candidate.party}</p>
	<p>Profession: Can${candidate.professional}</p>
	<p>IKA: ${candidate.ika}</p>	
	<p>${candidate.whyCommission}</p>
	<p>${candidate.whatAthesWantEdes}</p>
	<p>location: ${candidate.location}</p>
</div>	
<div class="candidate-container-buttons">

	<a href='../deletecandidate?id=${candidate.id}'><button class="submit-button-update">Delete</button></a> 
	<a href='../readcandidatetoupdate?id=${candidate.id}'><button class="submit-button-delete">Update</button></a>
</div>
</div>
</div>
<hr>
</c:forEach>

<div class="info-img">
	<a href="/dashboard.jsp"><button class="button" type="button">Back to login main</button></a>
</div>
</div>
</main>
</body>
<footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>