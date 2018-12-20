/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Koneksi;

/**
 *
 * @author confus1on
 */
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

public class koneksi {
    
     private Connection koneksi; // membuat variabel koneksi untuk mengambil koneksi
     
     // membuat function dengan nama connect untuk mengkoneksikan database 
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver"); // menghubungkan ke driver jdbc
            System.out.println("berhasil konek");  // jika berhaisl menghubungkan akan muncul berhasil konek
        }catch(ClassNotFoundException ex){
            System.out.println("gagal konek"+ex);
        }
        String url = "jdbc:mysql://localhost:8889/penggajian"; // menghubunkan ke dabatase mysql dengan nama database penggajian
        try{
            koneksi = (Connection)DriverManager.getConnection(url,"root","root");
        }catch(SQLException ex){
            System.out.println("gagal konek db"+ex); // jika gagal terhubung maka akan mengeluarkan ouput error
        }
        return koneksi;
    }
}

