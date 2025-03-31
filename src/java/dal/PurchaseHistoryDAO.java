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
        System.out.println("PURCHASE HISTORY SUCCESS");

        if (this.connect == null) {
            System.out.println("Database connection failed! - PURCHASE HISTORY");
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
                PreparedStatement stmt = connect.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                PurchaseHistory p = new PurchaseHistory();
                p.setId_purchase_history(rs.getInt("id_purchase_history"));
                p.setId_ticket(rs.getInt("id_ticket"));
                p.setName_banking(rs.getString("name_banking"));
                p.setId_customer(rs.getInt("id_customer"));
                p.setName_user(rs.getString("name_user"));
                p.setCusomter_require(rs.getInt("cusomter_require"));

                purchases.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return purchases;
    }

    public PurchaseHistory getPurchaseHistoryByTicketIT(int Id) {
        PurchaseHistory history = null;  // Khởi tạo null để kiểm tra dữ liệu
        String sql = "SELECT * FROM purchase_history WHERE id_ticket = ?";

        try (PreparedStatement stmt = connect.prepareStatement(sql)) {
            stmt.setInt(1, Id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {  // Kiểm tra có dữ liệu không
                history = new PurchaseHistory();
                history.setId_purchase_history(rs.getInt("id_purchase_history"));
                history.setId_ticket(rs.getInt("id_ticket"));
                history.setName_banking(rs.getString("name_banking"));
                history.setAccount_number(rs.getInt("account_number"));
                history.setId_customer(rs.getInt("id_customer"));
                history.setId_payment_method(rs.getInt("id_payment_method"));
                history.setName_user(rs.getString("name_user"));
                history.setCusomter_require(rs.getInt("cusomter_require"));
            } else {
                System.out.println("Không tìm thấy dữ liệu với id_ticket = " + Id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return history;
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

            System.out.println(id + " --------------");
        } catch (SQLException e) {
            System.err.println("❌ Lỗi khi cập nhật trạng thái chuyến: " + e.getMessage());
            throw e; // Ném lại lỗi để xử lý ở lớp gọi phương thức này
        }
    }

    public static void main(String[] args) {
        PurchaseHistoryDAO pdao = new PurchaseHistoryDAO();
        PurchaseHistory p = pdao.getPurchaseHistoryByTicketIT(491);
        System.out.println(p.toString());

//        List<PurchaseHistory> listP = pdao.getPurchaseHistoryByCustomerId(8);
//
//        for (PurchaseHistory purchaseHistory : listP) {
//            System.out.println("ID Purchase History: " + purchaseHistory.getId_purchase_history());
//            System.out.println("ID Customer: " + purchaseHistory.getId_customer());
//            System.out.println("ID Payment Method: " + purchaseHistory.getId_payment_method());
//            System.out.println("Banking Name: " + purchaseHistory.getName_banking());
//            System.out.println("Account Number: " + purchaseHistory.getAccount_number());
//            System.out.println("User Name: " + purchaseHistory.getName_user());
//            System.out.println("Customer Require: " + purchaseHistory.getCusomter_require());
//            System.out.println("-------------------------------------");
//        }
    }

}
