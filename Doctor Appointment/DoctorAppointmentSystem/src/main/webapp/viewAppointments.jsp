<%@ page import="java.sql.*" %>

<%
String email = (String) session.getAttribute("email");
if(email == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Your Appointments</title>
</head>
<body>

<h2>Your Appointments</h2>

<table border="1">
<tr>
    <th>Doctor</th>
    <th>Date</th>
    <th>Time</th>
</tr>

<%
try {
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/doctor_db",
        "root",
        "sanika2005"
    );

    PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM appointments WHERE patient_email=?"
    );

    ps.setString(1, email);

    ResultSet rs = ps.executeQuery();

    while(rs.next()){
%>

<tr>
    <td><%= rs.getString("doctor") %></td>
    <td><%= rs.getString("date") %></td>
    <td><%= rs.getString("time") %></td>
</tr>

<%
    }
} catch(Exception e){
    e.printStackTrace();
}
%>

</table>

<br>
<a href="dashboard.jsp">Back</a>

</body>
</html>