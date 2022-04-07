<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="#" %>
 <%@ page import="#" %>
 
 <%@ page import="java.sql.Connection" %>  
 <%@ page import="java.sql.DriverManager" %>   
 <%@ page import="#" %> 
 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
 <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
    <link href="../html/style.css" rel="stylesheet">

    <title>Election Machine questions</title>
</head>
<body>
 <header >

	<%@ include file="/html/userheader.html" %>

</header>
<main>
  <div class="form-container">
    <!-- question part is start here-->
    <div>
      <p id="description">Answer these questions to application can suggest the best candidates for you:</p>
    </div>
<hr>
	<%! //CounterIndex index = new  CounterIndex(0);%>
	<%  ArrayList<Question> questionList=(ArrayList<Question>)request.getAttribute("questionlist");%>
	
	<h1><%=CounterIndex.currentIndex()+1+" / "+ questionList.size()%></h1>
	<hr>
		
<form data-ajax="false" method="get"  id="radioanswer">
	
    <% 
      	// create index for questions for test
	//CounterIndex j = new CounterIndex();
	// out.println("your index is: "+ j.getIndex());
      	
	Question f = questionList.get(CounterIndex.currentIndex());
	if(CounterIndex.currentIndex()<questionList.size()){
		out.println((CounterIndex.currentIndex()+1)+" . "+f.getQuestion());
	}else{			
		out.println("There is no such question! \n");
       }		

	%>
			
		<input type="hidden"  name="id" value="<%=f.getId()%>">
		<input type="hidden"  name="question" value="<%=f.getQuestion()%>">
		
	   <div class="radio-buttons">
	          <input type="radio" Class="recommend-radio" name="answer" value="0" style="visibility: hidden;" checked ><br>
              <input type="radio" Class="recommend-radio" name="answer" value="1" >
              <label id="definitely">Definitely Agree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="2" >
              <label id="maybe">Agree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="3">
              <label id="not-sure">Middle opinion</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="4">
              <label id="not-sure">Disagree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="5">
              <label id="not-sure">Completely disagree</label><br>
              <hr>
              <%="<p><b>your current saved choice is : "+ f.getAnswer()+"</b></p>"%>
              <hr>
          </div>

     <div class="buttons" data-role="fieldcontain">
     	<input formaction='../backquestion'  id="previous" type="submit" class="question-button" name="action" value="Previous"> 
		<input formaction='../nextquestion' id="next" type="submit" class="question-button"  name="action" value="Next">
		<input formaction='../result'  type="submit" class="question-button"  name="ok" value="Finish">
			
     </div>	
</form>
</div>
</main>
</body>
<script type="text/javascript">
	let i =  parseInt(<%=CounterIndex.currentIndex()%>);
	let x = parseInt(<%=questionList.size()%>);
	if (i==0){
		document.getElementById("previous").disabled = true;
	}
	if (i ==x-1){
		document.getElementById("next").disabled = true;
	}

</script>
<footer>
  
  	<%@ include file="/html/footer.html" %>
  
  
  </footer>
</html>