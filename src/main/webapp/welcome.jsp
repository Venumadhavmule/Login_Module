<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
</head>
<body>
	<%
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
	%>
	Welcome ${usernam} 👋👋
	<a href="videos.jsp">Videos here</a>
	
	<form action="Logout">
	<input type="submit" value="Logout"></form>
</body>
</html>