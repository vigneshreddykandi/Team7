<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
    <link href="../html/style.css" rel="stylesheet">
<title>Candidates</title>
</head>
<body>
<header >

	<%@ include file="/html/userheader.html" %>

</header>
<main>
<div class="form-container2">
<h1>Candidates</h1>
<div class="row">
<c:forEach var="candidate" items="${requestScope.candidatelist}">
<div class="col-sm-4">
    <div id="project1" class="project_cards">
       <div class="card_photo">
           <div class="demobox" id="demobox1">
               <img src="./images/Candidate${candidate.id}.jpg" alt="Candidate - tribute page" style="width:400px;height:260px;">
           </div>
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
</html>