<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <title>Election Machine</title>
    <link rel="stylesheet" href="html/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    
    <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 50%;
  padding: 0 5px;
}

.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 10px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #444;
  color: white;
}
.center {
  margin: auto;
  width: 60%;
  
  padding: 10px;
}
.center1 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
  padding: 10px;
  
}
.fa {font-size:50px;}
</style>
    
    


    </head>
    
    
      
 <header >

	<%@ include file="/html/dashboard_header.html" %>
	
</header>

<body>



<div class="center">

<img src="https://static.thenounproject.com/png/58626-200.png" alt="Dashboard"  class="center1" >

<div class="row" >
  <div class="column">
    <div class="card">
      <p><i class="fa fa-user"></i></p>
     <a href="/jsp/UpdateCandidate.jsp" > <h3 >   Candidate Section</h3> </a>
      
    </div>
  </div>

  <div class="column">
    <div class="card">
      <p><i class="fa fa-check"></i></p>
     <a href="/jsp/UpdateCandidate.jsp" > <h3 >   Questions section </h3> </a>
      
    </div>
  </div>
  </div>
  
  
</div>
</body>
  <footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>
