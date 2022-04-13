<%--  --%><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=UTF-8" />
<title>Add question</title>
<link rel="stylesheet" href="/html/style.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"crossorigin="anonymous">
</head>
<body>
	<header>
		<%@ include file="/html/dashboard_header.html"%>


	</header>



	<div class="container-fluid">

		<br>
		<h4>Add Question</h4>
		<br> <a href="/jsp/UpdateQuestion.jsp">Go back</a> <br>

		<form method="post" action="/AddQuestion">

			<div class="mb-3">
				Question:<br> <input type="text" name="Question" class="form-control" required>
			</div>


			<input type="submit" value="submit" class="btn btn-primary">

		</form>
		<div class="container-fluid"></div>
	</div>

	<footer>

		<%@ include file="/html/footer.html"%>


	</footer>

</body>
</html>


</html>
