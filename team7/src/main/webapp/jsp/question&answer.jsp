<%@page language="java" import="java.util.*"%>
<html>
<head>
<title>Data Page</title>
</head>
<body>
	<table border="1" width="303">
		<tr>
			<td width="119"><b>ID</b></td>
			<td width="168"><b>Message</b></td>
		</tr>
		<%
		Iterator itr;
		%>
		<%
		List data = (List) request.getAttribute("data");
		for (itr = data.iterator(); itr.hasNext();) {
		%>
		<tr>
			<td width="119"><%=itr.next()%></td>
			<td width="168"><%=itr.next()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>