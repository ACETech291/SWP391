/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.TrainCarriage;

/**
 *
 * @author dinhphu
 */
public class TrainCarriageDAO {

    private Connection connect;

    public TrainCarriageDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }
    // Lấy danh sách tất cả khoang tàu

    public List<TrainCarriage> getAllTrainCarriages() {
        List<TrainCarriage> list = new ArrayList<>();
        String query = "SELECT * FROM Train_carriage";
        try (PreparedStatement ps = connect.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                TrainCarriage carriage = new TrainCarriage(
                        rs.getInt("id_train_carriage"),
                        rs.getString("name_train_carriage"),
                        rs.getString("description_train_carriage"),
                        rs.getInt("id_train"),
                        rs.getInt("id_status"),
                        rs.getInt("total_seat")
                );
                list.add(carriage);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy danh sách khoang tàu theo id_train
    public List<TrainCarriage> getCarriagesByTrainId(int trainId) {
        List<TrainCarriage> list = new ArrayList<>();
        String query = "SELECT * FROM Train_carriage WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, trainId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    TrainCarriage carriage = new TrainCarriage(
                            rs.getInt("id_train_carriage"),
                            rs.getString("name_train_carriage"),
                            rs.getString("description_train_carriage"),
                            rs.getInt("id_train"),
                            rs.getInt("id_status"),
                            rs.getInt("total_seat")
                    );
                    list.add(carriage);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Thêm khoang tàu mới
    public boolean addTrainCarriage(TrainCarriage carriage) {
        String query = "INSERT INTO Train_carriage (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, carriage.getName_train_carriage());
            ps.setString(2, carriage.getDescription_train_carriage());
            ps.setInt(3, carriage.getId_train());
            ps.setInt(4, carriage.getId_status());
            ps.setInt(5, carriage.getTotal_seat());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Cập nhật khoang tàu
    public void updateTrainCarriage(TrainCarriage carriage) {
        String query = "UPDATE Train_carriage SET name_train_carriage = ?, description_train_carriage = ?, id_status = ?, total_seat = ? WHERE id_train_carriage = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, carriage.getName_train_carriage());
            ps.setString(2, carriage.getDescription_train_carriage());
            ps.setInt(3, carriage.getId_status());
            ps.setInt(4, carriage.getTotal_seat());
            ps.setInt(5, carriage.getId_train_carriage());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Xóa khoang tàu
    public void deleteTrainCarriage(int id_train_carriage) {
        String query = "DELETE FROM Train_carriage WHERE id_train_carriage = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_train_carriage);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Lấy danh sách khoang tàu theo id_train_brand
    public List<TrainCarriage> getCarriagesByTrainBrandId(int trainBrandId) {
        List<TrainCarriage> list = new ArrayList<>();
        String query = "SELECT tc.* FROM Train_carriage tc "
                + "JOIN Train t ON tc.id_train = t.id_train "
                + "WHERE t.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    TrainCarriage carriage = new TrainCarriage(
                            rs.getInt("id_train_carriage"),
                            rs.getString("name_train_carriage"),
                            rs.getString("description_train_carriage"),
                            rs.getInt("id_train"),
                            rs.getInt("id_status"),
                            rs.getInt("total_seat")
                    );
                    list.add(carriage);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy thông tin khoang tàu theo id_train_carriage
    public TrainCarriage getTrainCarriageById(int id_train_carriage) {
        String query = "SELECT * FROM Train_carriage WHERE id_train_carriage = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_train_carriage);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new TrainCarriage(
                            rs.getInt("id_train_carriage"),
                            rs.getString("name_train_carriage"),
                            rs.getString("description_train_carriage"),
                            rs.getInt("id_train"),
                            rs.getInt("id_status"),
                            rs.getInt("total_seat")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Trả về null nếu không tìm thấy
    }

    public static void main(String[] args) {
        TrainCarriageDAO traincarriagedao = new TrainCarriageDAO();
        List<TrainCarriage> car_by_brand = traincarriagedao.getCarriagesByTrainBrandId(1);

        for (TrainCarriage trainCarriage : car_by_brand) {
            System.out.println(trainCarriage.getName_train_carriage() + " - " + trainCarriage.getId_train());
        }
    }
}
