/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.practice;

import java.awt.Image;
import java.io.InputStream;
import java.sql.*;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

/**
 *
 * @author Dipak
 */
public class Helper {

    public static ImageIcon getImageIcon(int id, Connection con) {
        ImageIcon img = null;
        try {
            String q = "select pic from images where Id=" + id;

            Statement stmt = con.createStatement();
            ResultSet set;
            set = stmt.executeQuery(q);
            if (set.next()) {
                Blob b = set.getBlob("pic");
                InputStream bs = b.getBinaryStream();
                Image image = ImageIO.read(bs);
                img = new ImageIcon(image);
            }
        } catch (Exception e) {
            System.out.println("error in helper classs");
        }
        return img;
}

}
