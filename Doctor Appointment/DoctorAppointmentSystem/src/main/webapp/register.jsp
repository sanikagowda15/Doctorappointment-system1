<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h2>Register Page</h2>

    <form action="register" method="post">
        Name: <input type="text" name="name"><br><br>
        Email: <input type="text" name="email"><br><br>
        Password: <input type="password" name="password"><br><br>

        <input type="submit" value="Register">
    </form>

    <br>
    <a href="index.jsp">Back</a>
</body>
</html>