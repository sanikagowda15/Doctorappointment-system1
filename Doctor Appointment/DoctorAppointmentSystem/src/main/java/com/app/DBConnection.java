package com.app;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/doctor_db?useSSL=false&serverTimezone=UTC",
                    "root",
                    "sanika2005"   
            );

            System.out.println("Connected Successfully!");

        } catch (Exception e) {
            System.out.println("REAL ERROR IS:");
            e.printStackTrace();
        }

        return con;
    }
}