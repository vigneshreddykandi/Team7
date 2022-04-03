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

	<%@ include file="/html/userheader.html" %>

</header>
	<body>
	
	<div class="container"> <br> <br> <br> <br>
  <div class="row">
    <div class="col">
     <div class="card" style="width: 28rem;">
  <img class="card-img-top" src="./img/el1.jpg" alt="election image">
  <div class="card-body">
    <h5 class="card-title"> Answer quiz</h5>
    <p class="card-text"> to find suitable candidate matches your answers.</p>
    <a href="#" class="btn btn-primary">Go to quiz</a>
  </div>
</div>
    </div>
    <div class="col">
    <div class="card" style="width: 28rem;">
  <img class="card-img-top" src="./img/el2.jpg" alt="election image">
  <div class="card-body">
    <h5 class="card-title">List of candidates</h5>
    <p class="card-text">See list of candidates and their information.</p>
    <a href="#" class="btn btn-primary">Go to list</a>
  </div> 
</div>
    </div>
  </div>
  

</div> 
  </body>
  
  <footer>
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>