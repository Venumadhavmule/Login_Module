<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos page</title>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies

	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>


	<iframe width="923" height="519"
		src="https://www.youtube.com/embed/zpsVpnvFfZQ"
		title="&#39;Chittiyaan Kalaiyaan&#39; FULL VIDEO SONG | Roy | Meet Bros Anjjan, Kanika Kapoor | T-SERIES"
		frameborder="0"
		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
		referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>