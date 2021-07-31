/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.practice;

import java.sql.*;

/**
 *
 * @author Dipak
 */
public class ConnectionProvider {

    public static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/springdb";
                con = DriverManager.getConnection(url, "root", "");
                if (!con.isClosed()) {
                    System.out.println("connection done....");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
