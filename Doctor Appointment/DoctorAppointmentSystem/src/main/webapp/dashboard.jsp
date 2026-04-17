<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
String email = (String) session.getAttribute("email");
if(email == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
</head>
<body>

<h2>Welcome to Dashboard 🎉</h2>
<p>Logged in as: <%= email %></p>

<br>
<a href="bookAppointment.jsp">Book Appointment</a><br><br>
<a href="viewAppointments.jsp">View Appointments</a><br><br>
<a href="logout">Logout</a>

</body>
</html>