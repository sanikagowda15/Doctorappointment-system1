<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
</head>
<body>

<h2>Login Page</h2>

<form action="login" method="post">
    Email: <input type="text" name="email" required><br><br>
    Password: <input type="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>

<br>
<a href="index.jsp">Back</a>

</body>
</html>