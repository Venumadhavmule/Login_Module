<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
	<center>
	<h2>Provide your Credentials🙈🙈</h2>
		<form action="Login" method="post">
			Enter username: <input type="text" name="uname" required><br><br>
			Enter Password: <input type="password" name="pass" required><br><br>
			<input type="submit" value="Login">
		</form>
		<br>don't have an account? <a href="Register.jsp">Register Here.!</a>
	</center>
</body>
</html>