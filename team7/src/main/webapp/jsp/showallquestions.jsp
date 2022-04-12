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
		<td>${Questionss.ID }</td>
		<td>${Questionss.Question }</td>
		
		<td>
			<a href="/editgame?id=${game.id }">Edit</a>
		</td>
	</tr>

</table>

</body>
</html>