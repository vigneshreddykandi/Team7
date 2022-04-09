<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Add candidate</title>
    <link rel="stylesheet" href="/html/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<header>
		<%@ include file="/html/dashboard_header.html" %>


</header>



<div class="container-fluid">

<br>
<h4> Add Candidate
</h4>
<br>

<a href="/jsp/UpdateCandidate.jsp" >Go back</a>
 <br>

<form method="post" action="/jsp/process.jsp">

<div class="mb-3">
SURNAME:<br>
<input type="text" name="SURNAME" class="form-control" required>
  </div>

<div class="mb-3">
FIRSTNAME:<br>
<input type="text" name="FIRSTNAME" class="form-control" required>
</div>
<div class="mb-3">

PARTY:<br>
<input type="text" name="PARTY" class="form-control" required>
</div>
<div class="mb-3">
LOCATION:<br>
<input type="text" name="LOCATION" class="form-control" required>
</div>
<div class="mb-3">
IKA:<br>
<input type="text" name="IKA" class="form-control" required>
</div>
<div class="mb-3">

REASON:<br>
<input type="text" name="WHY_COMMISSION" class="form-control" required >
</div>
<div class="mb-3">
CHANGES:<br>
<input type="text" name="WHAT_ATHES_WANT_EDES" class="form-control"required>
</div>
<div class="mb-3">
PROFESSIONAL:<br>
<input type="text" name="PROFESSIONAL" class="form-control"required>
</div>
<br><br>
<input type="submit" value="submit"  class="btn btn-primary">
</form>
<div class="container-fluid">
  
</div>
</div>

 <footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>

</body>
</html>

