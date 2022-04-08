o<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidates List</title>
</head>
<body>
<main>
<h1> ${candidate.firstname} ${candidate.surname}</h1>
<div class="form-container1">
	<div class="candidates-info">
		<div class="info-img">
			<img  src="./images/Candidate${candidate.id}.jpg" style="width:400px;height:260px;border-radius:30px;">
		</div>
		<div class="candidate-info"><p class="info-text"><b>Candidate ID: </b>${candidate.id}</p></div>
		<div class="candidate-info"><p class="info-text"><b>First Name: </b>${candidate.firstname}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Last Name: </b>${candidate.surname}</p></div>
		<div class="candidate-info"><p class="info-text"><b>IKA: </b>${candidate.ika}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Location: </b>${candidate.location}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Party: </b>${candidate.party}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Profession: </b>${candidate.professional}</p></div>
		<div class="candidate-info"><p class="info-text"><b>WHAT ATHES WANT EDES: </b>${candidate.whatAthesWantEdes}</p></div>
		<div class="candidate-info"><p class="info-text"><b>WHY COMMISSION: </b>${candidate.whyCommission}</p></div>
	</div>
	<div class="info-img">
		<a href="./jsp/showallcandidates.jsp"><button class="button" type="button">Go to all Candidates</button></a>
	</div>
</div>
</main>
</body>
</html>