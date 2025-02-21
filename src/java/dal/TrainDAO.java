/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

    public List<Train> getAllTrains() {
        List<Train> listTrains = new ArrayList<Train>();
        String sql = "select * from train";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return listTrains;
    }

    public void addTrain(Train train) throws SQLException {
        String sql = "INSERT INTO train (name_train, description_train, id_train_brand, id_status) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = connect.prepareStatement(sql)) {
            stmt.setString(1, train.getName_train());
            stmt.setString(2, train.getDescription_train());
            stmt.setInt(3, train.getId_train_brand());
            stmt.setInt(4, train.getId_status());
            stmt.executeUpdate(); // Thực thi câu lệnh SQL
        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // Ném ngoại lệ để xử lý ở lớp gọi
        }
    }
}
