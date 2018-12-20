/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Koneksi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

/**
 * Di class crud ini membuat sebuah inheritance atau class turunan dari class koneksi
 * di crud ada 2 method yaitu update dan delete
 * masing masing method memiliki peran sendiri"
 */
public class crud extends koneksi{
    
    /**
     * di method update ada 4 parameter
     * @nama_table : berfungsi untuk mengambil nama tabel apa yang akan diupdate
     * @id_karyawan : mengambil data id_karyawan yang nantinya untuk primari key mengupdate data
     * @nama : mengambil data nama yang nantinhya akan di edit
     * @jabatan : mengambil data jabatan yang nantinya akan diedit
     */
    public void update(String nama_table, String id_karyawan, String nama, String jabatan, Connection conn) {
        String query = "UPDATE "+nama_table+" set nama=?,jabatan=? where id_karyawan=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, nama);
            stmt.setString(2, jabatan);
            stmt.setString(3, id_karyawan);
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Berhasil Edit Data Karyawan!");
        } catch (Exception e) {
            System.out.println("Error : " + e);
        }
    }
    
    /**
     * di method delete ada 3 parameter yaitu
     * @nama_tabel : untuk menghapus tabel yang mana
     * @id_karyawan : sebagai primary key dari tabel yang akan dihapus / sebagai kondisi
     * @conn : koneksi untuk ke databasenya
     */
    
    public void delete(String nama_tabel, String id_karyawan, Connection conn) {
        String query = "DELETE from "+nama_tabel+" WHERE id_karyawan=?";
        
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, id_karyawan);
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Data Karyawan Berhasil Di Hapus");
        } catch (Exception e) {
        }
    }
    
}
