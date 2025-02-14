/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import model.Customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Role;
import model.Station;
import model.Trip;

/**
 *
 * @author Nguyen Ba Hien
 */
public class StationDAO {
    private final Connection connection;
    
    public StationDAO() {
        this.connection = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connection == null) {
            System.err.println("Database connection failed!");
        }
    }
    
    public boolean insertStation(Station station) {
        String sql = "INSERT INTO Station (name_station, image_station, description_station) VALUES ( ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, station.getName_station());
            stmt.setString(2, station.getImage_station());  // Lưu đường dẫn ảnh dưới dạng chuỗi
            stmt.setString(3, station.getDescription_station());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public List<Station> getAllStations(){
        List<Station> listStations = new ArrayList<Station>();
        String sql = "select * from station";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listStations.add(new Station(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return listStations;
    }
     public static void main(String[] args) {
        StationDAO sd = new StationDAO();
        List<Station> lt = sd.getAllStations();
        System.out.println("LAI YEU LE");
        for(int i = 0 ; i < lt.size(); ++i){
            System.out.println(lt.get(i).getName_station() + " " + lt.get(i).getId_station());
        }
    }
}
