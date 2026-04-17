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
<title>Book Appointment</title>
</head>
<body>

<h2>Book Appointment</h2>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Book Appointment</title>
</head>
<body>

<h2>Book Appointment</h2>

<form action="BookAppointmentServlet" method="post">

Doctor Name:
<input type="text" name="doctor_name" required><br><br>

Date:
<input type="date" name="appointment_date" required><br><br>

Time:
<input type="text" name="appointment_time" required><br><br>

<input type="submit" value="Book">

</form>

<br>
<a href="dashboard.jsp">Back</a>

</body>
</html>