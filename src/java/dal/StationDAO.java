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
    
    public static void main(String[] args) throws FileNotFoundException {
        StationDAO stationDAO = new StationDAO();
        Station station = new Station("Ga Hà Nội", "../SWP391/images/stations/HàNội1.jpg", "Điểm đến lí tưởng");

            boolean success = stationDAO.insertStation(station);

            if (success) {
                System.out.println("Inserted successfully!");
            } else {
                System.out.println("Insert failed!");
            }
    }
}
