<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="questionss.Questionss" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All datatable rows</title>
</head>
<body>

<table>
<tr>
	<th>ID</th>
	<th>Question</th>

	<th>Actions</th>
</tr>

	<tr>
		<td>${Questionss.getID}</td>
		<td>${Questionss.getQuestion}</td>
		
		<td>
		
		</td>
	</tr>

</table>

</body>
</html>