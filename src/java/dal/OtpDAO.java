/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import model.OTP;

/**
 *
 * @author Nguyen Ba Hien
 */
public class OtpDAO {
    private final Connection connect;
    
    public OtpDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }
    
    public boolean insertOtp(OTP otp) {
        String sql = "INSERT INTO otp (code_otp, expiryTime, isUsed, userId) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, otp.getCode());
            ps.setTimestamp(2, otp.getExpiryTime() != null ? Timestamp.valueOf(otp.getExpiryTime()) : null);
            ps.setBoolean(3, otp.isIsUsed());
            ps.setInt(4, otp.getUserId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error inserting Otp: " + e.getMessage());
        }
        return false;
    }
    
    public OTP getOTP(String otp) {
        String sql = "SELECT * FROM otp WHERE code_otp = ?";
        try (PreparedStatement st = connect.prepareStatement(sql)) {
            st.setString(1, otp);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    return new OTP(
                        rs.getInt("id"),
                        rs.getInt("userId"),
                        rs.getBoolean("isUsed"),
                        rs.getString("code_otp"),
                        rs.getTimestamp("expiryTime").toLocalDateTime()
                    );
                }
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving Otp: " + e.getMessage());
        }
        return null;
    }
    
    public void updateStatusOtp(OTP otp) {
        String sql = "UPDATE otp SET isUsed = ? WHERE code_otp = ?";
        try (PreparedStatement st = connect.prepareStatement(sql)) {
            st.setBoolean(1, otp.isIsUsed());
            st.setString(2, otp.getCode());
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error updating Otp status: " + e.getMessage());
        }
    }
    
    public static void main(String[] args) {
//        OtpDAO dao = new OtpDAO();
////        OTP newOtp = new OTP(1, 3, false, "12345", LocalDateTime.now());
////        boolean insert = dao.insertOtp(newOtp);
////        System.out.println("insert:"+insert);
//        
//        OTP myOtp = dao.getOTP("12345");
//        System.out.println(myOtp.getCode());
//        dao.updateStatusOtp(myOtp);
//        System.out.println(myOtp);
    }
}
