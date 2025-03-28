/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


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
}
