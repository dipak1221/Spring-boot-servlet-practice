package com.technical.blog.dao;

import com.technical.blog.entities.User;
import com.technical.blog.helper.*;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            PreparedStatement pstmt;
            String query;

            if (user.getAbout().length() == 0) {
                query = "insert into user(name,email,password,gender) value(?,?,?,?)";
                pstmt = this.con.prepareStatement(query);
                pstmt.setString(1, user.getName());
                pstmt.setString(2, user.getEmail());
                pstmt.setString(3, user.getPassword());
                pstmt.setString(4, user.getGender());
                System.out.println(user.getAbout() + "1111111111111111111111111====================================");
            } else {
                System.out.println(user.getAbout().length() + "222222222222222222222====================================");
                query = "insert into user(name,email,password,gender,about) value(?,?,?,?,?)";
                pstmt = this.con.prepareStatement(query);
                pstmt.setString(1, user.getName());
                pstmt.setString(2, user.getEmail());
                pstmt.setString(3, user.getPassword());
                pstmt.setString(4, user.getGender());
                pstmt.setString(5, user.getAbout());
            }

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    /**
     *
     * @param email
     * @param password
     * @return
     */
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user = new User();
                user.setId(set.getInt("id"));
                user.setName(set.getString("name"));
                user.setEmail(set.getString("email"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

}
