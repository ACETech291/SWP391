/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import model.Status;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author dinhphu
 */
public class StatusDAO {

    private Connection connect;

    public StatusDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public List<Status> getStatusTrain() {
        List<Status> statusList = new ArrayList<>();
        String sql = "SELECT * FROM Status WHERE id_status BETWEEN 1 AND 4";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Status status = new Status();
                status.setId(rs.getInt("id_status"));
                status.setStatusName(rs.getString("name_status"));
                statusList.add(status);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return statusList;
    }

    public List<Status> getStatusSeat() {
        List<Status> statusList = new ArrayList<>();
        String sql = "SELECT * FROM Status WHERE id_status BETWEEN 5 AND 7";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Status status = new Status();
                status.setId(rs.getInt("id_status"));
                status.setStatusName(rs.getString("name_status"));
                statusList.add(status);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return statusList;
    }

//    public static void main(String[] args) {
//        StatusDAO dao = new StatusDAO();
//        List<Status> statuses = dao.getStatusTrain();
//        for (Status statuse : statuses) {
//            System.out.println(statuse.getId() + " - " + statuse.getStatusName());
//        }
//    }
}
