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
import model.TrainBrand;

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
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listTrains;
    }

    public Train getTrainById(int id) {
        String sql = "select * from train where id_train = ?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Train> getAllTrainsSameBrand(int id) {
        List<Train> listTrains = new ArrayList<Train>();
        String sql = "select * from train where id_train_brand = ?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listTrains;
    }

    public List<Train> getAllTrainSortAZ() {
        List<Train> listTrains = new ArrayList<Train>();
        String sql = "SELECT * FROM train ORDER BY name_train COLLATE utf8mb4_unicode_ci ASC";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listTrains;
    }

    public List<Train> getAllTrainSortZA() {
        List<Train> listTrains = new ArrayList<Train>();
        String sql = "SELECT * FROM train ORDER BY name_train COLLATE utf8mb4_unicode_ci DESC";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
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
            stmt.execute(); // Thực thi câu lệnh SQL
        } catch (SQLException e) {
            e.printStackTrace();
            throw e; // Ném ngoại lệ để xử lý ở lớp gọi
        }
    }

    public List<Train> getTopTrains(int limit) {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train ORDER BY id_train LIMIT ?";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }

    public void updateTrain(Train train) {
        String sql = "UPDATE Train SET name_train = ?, description_train = ?, id_status = ? WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, train.getName_train());
            ps.setString(2, train.getDescription_train());
            ps.setInt(3, train.getId_status());
            ps.setInt(4, train.getId_train());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Debug lỗi nếu có
        }
    }

    public void deleteTrain(int id_train) {
        String sql = "DELETE FROM Train WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {

            ps.setInt(1, id_train);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        TrainDAO dao = new TrainDAO();
        List<Train> topTrains = dao.getAllTrains();
        for (Train topTrain : topTrains) {
            System.out.println(topTrain.getName_train() + " ");
        }
        
        for (Train topTrain : topTrains) {
            System.out.println(topTrain);
        }
    }
}
