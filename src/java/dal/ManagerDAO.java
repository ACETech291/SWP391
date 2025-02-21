/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import com.mysql.cj.jdbc.result.ResultSetImpl;
import java.awt.BorderLayout;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Manager;
import model.Role;

/**
 *
 * @author dinhphu
 */
public class ManagerDAO {

    private Connection connect;

    public ManagerDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }

    public Manager getManagerByEmailAndPassword(String email, String password) {
        String sql = "SELECT * FROM Manager m JOIN Role r ON m.id_role = r.id_role WHERE m.email_manager = ? AND m.password_manager = ?;";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, email); // Thiết lập giá trị cho tham số thứ nhất (email)
            ps.setString(2, password); // Thiết lập giá trị cho tham số thứ hai (password)
            System.out.println(ps);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    // Tạo đối tượng Role từ kết quả truy vấn
                    Role role = new Role(rs.getInt("id_role"), rs.getString("name_role"));

                    // Tạo đối tượng Manager từ kết quả truy vấn
                    Manager manager = new Manager();
                    manager.setId_manager(rs.getInt("id_manager"));
                    manager.setUsername_manager(rs.getString("username_manager"));
                    manager.setPassword_manager(rs.getString("password_manager"));
                    manager.setEmail_manager(rs.getString("email_manager"));
                    manager.setRole(role);
                    manager.setStatus(rs.getInt("status_manager"));

                    return manager; // Trả về đối tượng Manager nếu tìm thấy
                }
            }
        } catch (Exception e) {
            e.printStackTrace(); // In ra lỗi nếu có
        }
        return null; // Trả về null nếu không tìm thấy
    }
    
//    public static void main(String[] args) {
//        ManagerDAO d = new ManagerDAO();
//        Manager m = d.getManagerByEmailAndPassword("manager1@gmail.com", "6NWFIsI1V5KNFeeazNcq35qxRUE=");
//                
//        System.out.println(m.getPassword_manager());
//    }
}
