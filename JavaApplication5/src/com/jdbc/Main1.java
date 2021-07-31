package com.jdbc;

import java.sql.*;

public class Main1 {

    public static void main(String[] args) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/springdb";
            Connection con = DriverManager.getConnection(url, "root", "");
            if (!con.isClosed()) {
                System.out.println("Connection done....");
            }
        } catch (Exception e) {
            System.out.println("Error!!..");
        }
    }
}
