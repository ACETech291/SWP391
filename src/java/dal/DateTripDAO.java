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
public class DateTripDAO {
    private Connection connect;

    public DateTripDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!12");
        } else {
            System.out.println("Database connected successfully!");
        }
    }
    public void insertDateTrip(int id_trip,int id_date_of_trip) {
        String sql = """
                     INSERT INTO date_trip(id_trip,id_date_of_trip) VALUES(?,?)
                     """;
        
         try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id_trip);
            ps.setInt(2, id_date_of_trip);
            int val = ps.executeUpdate();
             System.out.println("SUCESS InsertDATETRIP");
        } catch (Exception e) {
        }
        
    }
    public int getIdDateTrip(int id_trip,int id_date_of_trip){
        String sql = """
                     Select * from date_trip where id_trip = ? and id_date_of_trip = ?
                     """;
        int val = -1;
         try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id_trip);
            ps.setInt(2, id_date_of_trip);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                val = rs.getInt("id_date_trip");
            }
            
        } catch (Exception e) {
        }
        return val;
    }
    public static void main(String[] args) {
        DateTripDAO dtd = new DateTripDAO();
        dtd.insertDateTrip(2, 27);
    }
}
