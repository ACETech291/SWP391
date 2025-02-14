/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Train;

/**
 *
 * @author MinhHieuPham
 */
public class TrainDAO {
    private Connection connect;

    public TrainDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }
    
    public List<Train> getAllTrains(){
        List<Train> listTrains = new ArrayList<Train>();
        String sql = "select * from train";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return listTrains;
    }
}
