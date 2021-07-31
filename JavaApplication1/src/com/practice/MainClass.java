package com.practice;

import java.sql.*;

public class MainClass {

    public static void main(String[] args) {
        try {
            String q="insert into images(pic) values(?)";
//            ProcessImage.InsertImage(q,ConnectionProvider.getConnection());
//            Connection e = ;
     DisplayImages d=new DisplayImages();
     d.setVisible(true);
     //showImages();
            System.out.println("Main function end!...");
            
        } catch (Exception e) {
        }
    }
}
