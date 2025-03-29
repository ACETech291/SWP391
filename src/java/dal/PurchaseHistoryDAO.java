/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Policy;
import model.PurchaseHistory;

/**
 *
 * @author HieuPham
 */
public class PurchaseHistoryDAO {

    private Connection connect;

    public PurchaseHistoryDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public void insertPurchaseHistory(PurchaseHistory p) {
        String sql = """
                        INSERT purchase_history (id_ticket,name_banking,account_number,id_customer,id_payment_method,name_user)
                        VALUES (?,?,?,?,?,?)
                     """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, p.getId_ticket());
            ps.setString(2, p.getName_banking());
            ps.setInt(3, p.getAccount_number());
            ps.setInt(4, p.getId_customer());
            ps.setInt(5, p.getId_payment_method());
            ps.setString(6, p.getName_user());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
