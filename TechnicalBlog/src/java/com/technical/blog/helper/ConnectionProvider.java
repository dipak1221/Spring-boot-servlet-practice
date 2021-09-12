package com.technical.blog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                //driver
                Class.forName("com.mysql.jdbc.Driver");

                //create connection
                String url = "jdbc:mysql://localhost:3306/technicalblog";
                con = DriverManager.getConnection(url, "root", "");
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return con;
    }
}
