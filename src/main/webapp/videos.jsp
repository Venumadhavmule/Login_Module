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
</body>
</html>