<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
    <link rel="stylesheet" href="html/style.css"/>


	<%@ include file="/html/dashboard_header.html" %>


</head>
<body>
      <div class="dashboard">
      <h1 class="title">Admin Dashboard</h1>
        <b>${user.fullname} (${user.email})</b>
        <br><br>
        
        <div class="btn-dashboard">
          <a href="#" class="btn btn-thin">Candidates</a>
          <a href="#" class="btn btn-thin">Questions</a>
        </div>
      </div>
    
      
      </body>
  
  </html>