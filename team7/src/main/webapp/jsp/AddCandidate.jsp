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
<br>



<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Surname</span>
  </div>
  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="SURNAME" required >
</div>

 <!-- 
<div class="mb-3">
SURNAME:<br>
<input type="text" name="SURNAME" class="form-control" required>
  </div>  -->
  
  
 
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Firstname</span>
  </div>
  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="FIRSTNAME" required >
</div>
  
   <!-- 

<div class="mb-3">
FIRSTNAME:<br>
<input type="text" name="FIRSTNAME" class="form-control" required>
</div> -->


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Party	</label>
  </div>
  <select class="custom-select" name="PARTY" required>
    <option selected>Choose...</option>
    <option value="The Finnish Social Democratic Party">The Finnish Social Democratic Party</option>
    <option value="The Centre Party of Finland">The Centre Party of Finland</option>
    <option value="The National Coalition Party">The National Coalition Party</option>
    <option value="Swedish People's Party of Finland">Swedish People's Party of Finland</option>
    <option value="Christian Democrats in Finland">Christian Democrats in Finland</option>
    <option value="The Greens">The Greens</option>
     <option value="The Left Alliance">The Left Alliance</option>
     <option value="The Finns Party">The Finns Party</option>
     <option value="The Feminist Party">The Feminist Party</option>
  </select>
</div>
 <!-- 
<div class="mb-3">

PARTY:<br>
<input type="text" name="PARTY" class="form-control" required>
</div> -->


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Location</label>
  </div>
  <select class="custom-select" name="LOCATION" required>
    <option selected>Choose...</option>
    <option value="Helsinki">Helsinki</option>
    <option value="Tampere">Tampere</option>
    <option value="Hämenlinna">Hämenlinna</option>
    <option value="Turkku">Turkku</option>
    <option value="Espoo">Espoo</option>
    <option value="Vantaa">Vantaa</option>
    <option value="Lahti">Lahti</option>
    <option value="Rovaniemi">Rovaniemi</option>
    <option value="Forssa">Forssa</option>
    <option value="Janakkala">Janakkala</option>
  </select>
</div>
 <!-- <div class="mb-3">
LOCATION:<br>
<input type="text" name="LOCATION" class="form-control" required>
</div> -->


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Polling Number</span>
  </div>
  <input type="number" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="IKA" required>
</div>

<!--

<div class="mb-3">
IKA:<br>
<input type="text" name="IKA" class="form-control" required>
</div> -->

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Reson for voting</span>
  </div>
  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="WHY_COMMISSION" required>
</div>

<!--
<div class="mb-3">

REASON:<br>
<input type="text" name="WHY_COMMISSION" class="form-control" required >
</div> -->


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Changes </span>
  </div>
  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="WHAT_ATHES_WANT_EDES" required>
</div>
<!--
<div class="mb-3">
CHANGES:<br>
<input type="text" name="WHAT_ATHES_WANT_EDES" class="form-control"required>
</div>-->


<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">Profession </span>
  </div>
  <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default" name="PROFESSIONAL" required>
</div>
<!--
<div class="mb-3">
PROFESSIONAL:<br>
<input type="text" name="PROFESSIONAL" class="form-control"required>
</div> -->
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

