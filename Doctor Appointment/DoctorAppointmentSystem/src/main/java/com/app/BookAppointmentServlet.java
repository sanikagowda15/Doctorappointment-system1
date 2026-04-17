package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BookAppointmentServlet")
public class BookAppointmentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            // Get form data
            String doctor = request.getParameter("doctor_name");
            String date = request.getParameter("appointment_date");
            String time = request.getParameter("appointment_time");

            // Session check
            HttpSession session = request.getSession(false);
            String email = (String) session.getAttribute("email");

            if (email == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            // DB connection
            Connection con = DBConnection.getConnection();

            // INSERT QUERY (your table columns)
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO appointments(patient_email, doctor, date, time) VALUES (?, ?, ?, ?)"
            );

            ps.setString(1, email);
            ps.setString(2, doctor);
            ps.setString(3, date);
            ps.setString(4, time);

            ps.executeUpdate();

            // IMPORTANT: prevents repeat submission
            response.sendRedirect("viewAppointments.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}