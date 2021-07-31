package com.practice;
import java.io.*;
import java.math.BigDecimal;
import java.sql.*;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
public class ProcessImage {
    public static void InsertImage(String q,Connection con){
       try{
        PreparedStatement pstmt=con.prepareStatement(q);
           JFileChooser j=new JFileChooser();
           j.showOpenDialog(null);
        File f=j.getSelectedFile();
           FileInputStream fs=new FileInputStream(f);
        pstmt.setBinaryStream(1,fs,fs.available());
        pstmt.executeUpdate();
           System.out.println("inerted successfully");
//           showImages();
       }catch(Exception e){
           System.out.println("Error in inserting images !!...");
       }
    }
    
}
