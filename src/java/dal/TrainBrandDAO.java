/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.List;
import model.TrainBrand;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Manager;

/**
 *
 * @author dinhphu
 */
public class TrainBrandDAO {

    private Connection connect;

    public TrainBrandDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!5");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public TrainBrand getTrainBrandsByManager(int idManager) {
        String sql = "SELECT * FROM Train_brand WHERE id_manager = ?";
        TrainBrand tb = new TrainBrand();
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, idManager);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Manager manager = new Manager();
                manager.setId_manager(rs.getInt("id_manager"));

                tb.setId_train_brand(rs.getInt("id_train_brand"));
                tb.setManager(manager);
                tb.setName_train_brand(rs.getString("name_train_brand"));
                tb.setImage_train_brand(rs.getString("image_train_brand"));
                tb.setDescription_train_brand(rs.getString("description_train_brand"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tb;
    }

    public boolean createTrainBrand(TrainBrand tb) {
        String sql = "INSERT INTO Train_brand (id_manager, name_train_brand, image_train_brand, description_train_brand) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, tb.getManager().getId_manager());
            ps.setString(2, tb.getName_train_brand());
            ps.setString(3, tb.getImage_train_brand());
            ps.setString(4, tb.getDescription_train_brand());
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

//    public static void main(String[] args) {
//        TrainBrandDAO tb = new TrainBrandDAO();
//        TrainBrand t = tb.getTrainBrandsByManager(1);
//        System.out.println(t.getDescription_train_brand());
//    }
}
