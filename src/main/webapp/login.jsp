<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="logStyle.css">
</head>
<body>
    <div class="loginDiv">
        <h2>Provide your Credentials 🙈🙈</h2>
        <form action="Login" method="post">
            <label for="uname">Enter Username:</label>
            <input type="text" id="uname" name="uname" required placeholder="Enter your username"><br>

            <label for="pass">Enter Password:</label>
            <input type="password" id="pass" name="pass" required placeholder="Enter your password"><br>

            <input type="submit" value="Login">
        </form>
        <p>Don't have an account? <a href="Register.jsp">Register Here!</a></p>
    </div>
</body>
</html>