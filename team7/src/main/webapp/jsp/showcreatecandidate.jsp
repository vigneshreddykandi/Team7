<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="#"%>
<%@ page import="#"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="#"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=UTF-8" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link href="../CSS/style.css" rel="stylesheet">

<title>Election Machine questions</title>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-light navbar-fixed-top">
			<div class="container-fluid">
				<a class="navbar-brand" href="../index.jsp">Election Machine</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href=<%if (session.getAttribute("username") == null) {
	out.println("/jsp/adminlogin.jsp");
} else {
	out.println("/logout");
}%>>
								<%
								if (session.getAttribute("username") == null) {
									out.println("login");
								} else {
									out.println("logout");
								}
								%>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="../statistics">Statistics</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<h3>Create new Candidate</h3>

		<div class="form-container3">
			<!-- question part is start here-->
			<div>
				<p id="description">Fill the form to create new candidate:</p>
			</div>
			<hr>
			<% ArrayList<Question> questionList = (ArrayList<Question>) request.getAttribute("questionlist");%>

			<form action="../createcandidate" method="get">

				<input type='text' name='id' class="candidatebox" placeholder="ID"><br>
				<input type='text' name='firstname' class="candidatebox"
					placeholder="First Name"><br> <input type='text'
					name='surname' class="candidatebox" placeholder='Last Name'><br>
				<input type='text' name='party' class="candidatebox"
					placeholder='Party'><br> <input type='text'
					name='professional' class="candidatebox" placeholder='Profession'><br>
				<input type='text' name='location' class="candidatebox"
					placeholder='Location'><br> <input type='text'
					name='ika' class="candidatebox" placeholder='IKA'><br>
				<input type='text' name='whyCommission' class="candidatebox2"
					placeholder='Why Commission'><br> <input type='text'
					name='whatAthesWantEdes' class="candidatebox2" placeholder='more'><br>

				<hr>
				<hr>


				<ol>
					<c:forEach var="question" items="${requestScope.questionlist}">
						<div class="row">
							<li>${question.question}</li>


							<div class="radio-buttons">
								<input type="radio" Class="recommend-radio"
									name="${question.id}" value="0" style="visibility: hidden;"
									checked><br> <input type="radio"
									Class="recommend-radio" name="${question.id}" value="1">
								<label id="definitely">Definitely Agree</label><br> <input
									type="radio" Class="recommend-radio" name="${question.id}"
									value="2"> <label id="maybe">Agree</label><br> <input
									type="radio" Class="recommend-radio" name="${question.id}"
									value="3"> <label id="not-sure">Middle opinion</label><br>
								<input type="radio" Class="recommend-radio"
									name="${question.id}" value="4"> <label id="not-sure">Disagree</label><br>
								<input type="radio" Class="recommend-radio"
									name="${question.id}" value="5"> <label id="not-sure">Completely
									disagree</label><br>

							</div>
						</div>
						<hr>
					</c:forEach>
				</ol>
				<input type="submit" class="question-button" name="ok"
					value="Finish">

			</form>
		</div>
	</main>
</body>

</html>