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
import model.DateOfTrip;


/**
 *
 * @author HieuPham
 */
public class DateOfTripDAO {

    private Connection connect;

    public DateOfTripDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!12");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public int getIdDateOfTrip(String date) {
        String sql = """
                     SELECT * FROM date_of_trip
                     WHERE date_details = STR_TO_DATE(?, '%d-%m-%Y')""";
        int val = 0;
         try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, date);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                val = rs.getInt("id_date_of_trip");
            }
        } catch (Exception e) {
        }
        return val;
    }
    
        // Phương thức lấy tất cả dữ liệu từ bảng date_of_trip
    public List<DateOfTrip> getAllDateOfTrips() {
        List<DateOfTrip> list = new ArrayList<>();
        String sql = "SELECT * FROM date_of_trip";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DateOfTrip dateOfTrip = new DateOfTrip(
                    rs.getInt("id_date_of_trip"),
                    rs.getDate("date_details")
                );
                list.add(dateOfTrip);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public static void main(String[] args) {
        DateOfTripDAO dotdao = new DateOfTripDAO();
        List<DateOfTrip> listdot = dotdao.getAllDateOfTrips();
        for (DateOfTrip dateOfTrip : listdot) {
            System.out.println(dateOfTrip.getDate_details());
        }
    }
}
