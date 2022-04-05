<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

	<form action="login" method="post">

		<h3>Enter Login details</h3>

		<table>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="usName" /></td>
			</tr>
			<tr>
				<td>User Password:</td>
				<td><input type="password" name="usPass" /></td>
			</tr>

		</table>
		
		<input type="submit" value="Login" />

	</form>
</body>
</html>

