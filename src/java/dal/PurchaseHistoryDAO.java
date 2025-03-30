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
                        INSERT purchase_history (id_ticket,name_banking,account_number,id_customer,id_payment_method,name_user,cusomter_require)
                        VALUES (?,?,?,?,?,?,?)
                     """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, p.getId_ticket());
            ps.setString(2, p.getName_banking());
            ps.setInt(3, p.getAccount_number());
            ps.setInt(4, p.getId_customer());
            ps.setInt(5, p.getId_payment_method());
            ps.setString(6, p.getName_user());
            ps.setInt(7, p.getCusomter_require());
            ps.executeUpdate();
            System.out.println(p.getCusomter_require());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<PurchaseHistory> getAllPurchaseHistory() {
        List<PurchaseHistory> purchases = new ArrayList<>();
        String sql = """
                SELECT ph.id_purchase_history, ph.id_ticket, ph.name_banking, ph.account_number, 
                       ph.id_customer, c.name_customer, ph.id_payment_method, ph.name_user, ph.cusomter_require
                FROM Purchase_history ph
                JOIN Customer c ON ph.id_customer = c.id_customer
                ORDER BY ph.id_purchase_history DESC;
                """;

        try (
             PreparedStatement stmt = connect.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                purchases.add(new PurchaseHistory(
                        rs.getInt("id_ticket"),
                        rs.getString("name_banking"),
                        rs.getInt("account_number"),
                        rs.getInt("id_customer"),
                        rs.getInt("id_payment_method"),
                        rs.getString("name_user"),
                        rs.getInt("cusomter_require")
                        //rs.getString("name_customer")
                        // Chú ý: "cusomter_require" có thể bị sai chính tả
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return purchases;
    }
    
    public void change(int id) throws SQLException {
        String sql = """
                    UPDATE Purchase_history 
                    SET cusomter_require = 0 
                    WHERE id_purchase_history = ?;
                     """;

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id);
            int affectedRows = ps.executeUpdate();

            if (affectedRows == 0) {
                System.out.println("⚠ Không có chuyến nào được cập nhật! Kiểm tra id_trip: " + id);
            } else {
                System.out.println("✔ Đã cập nhật trạng thái của chuyến có id: " + id);
            }
        } catch (SQLException e) {
            System.err.println("❌ Lỗi khi cập nhật trạng thái chuyến: " + e.getMessage());
            throw e; // Ném lại lỗi để xử lý ở lớp gọi phương thức này
        }
    }
    
    public static void main(String[] args) {
        PurchaseHistoryDAO pdao = new PurchaseHistoryDAO();
        List<PurchaseHistory> listP = pdao.getAllPurchaseHistory();
        for (PurchaseHistory purchaseHistory : listP) {
            System.out.println(purchaseHistory.getCusomter_require());
        }
    }
            
}
