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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
            System.err.println("Database connection failed!11");
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

    public List<Manager> getAllManager() {
        List<Manager> managers = new ArrayList<Manager>();
        String sql = "SELECT * FROM manager m JOIN Role r ON m.id_role = r.id_role";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Role role = new Role(rs.getInt("id_role"), rs.getString("name_role"));
                    managers.add(
                            new Manager(
                                    rs.getInt("id_manager"),
                                    rs.getString("username_manager"),
                                    rs.getString("password_manager"),
                                    rs.getString("email_manager"),
                                    role,
                                    rs.getString("image_manager"),
                                    rs.getInt("status_manager")
                            )
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return managers;
    }

    public List<Manager> getManagerActive() {
        List<Manager> managers = new ArrayList<Manager>();
        String sql = "SELECT * FROM manager m JOIN Role r ON m.id_role = r.id_role WHERE status_manager = 1";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Role role = new Role(rs.getInt("id_role"), rs.getString("name_role"));
                    managers.add(
                            new Manager(
                                    rs.getInt("id_manager"),
                                    rs.getString("username_manager"),
                                    rs.getString("password_manager"),
                                    rs.getString("email_manager"),
                                    role,
                                    rs.getString("image_manager"),
                                    rs.getInt("status_manager")
                            )
                    );
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return managers;
    }

    public Manager getManagerById(int id) {
        String sql = "SELECT * FROM manager WHERE id_manager = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            // Thiết lập tham số id
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Manager manager = new Manager();
                    manager.setId_manager(rs.getInt("id_manager"));
                    manager.setUsername_manager(rs.getString("username_manager"));
                    manager.setPassword_manager(rs.getString("password_manager"));
                    manager.setEmail_manager(rs.getString("email_manager"));
                    manager.setImage_manager(rs.getString("image_manager"));
                    manager.setStatus(rs.getInt("status_manager"));
                    return manager;
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean updateManager(Manager manager) {
        String sql = "UPDATE manager SET username_manager = ?, email_manager = ?, status_manager = ? WHERE id_manager = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, manager.getUsername_manager());
            ps.setString(2, manager.getEmail_manager());
            ps.setInt(3, manager.getStatus());
            ps.setInt(4, manager.getId_manager());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean createManager(Manager manager) {
        String sql = "INSERT INTO manager (username_manager, password_manager, email_manager, id_role, status_manager) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, manager.getUsername_manager());
            ps.setString(2, manager.getPassword_manager());
            ps.setString(3, manager.getEmail_manager());
            ps.setInt(4, manager.getRole().getId());
            ps.setInt(5, manager.getStatus());
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Manager> getManagersByTrainBrand(int trainBrandId) {
        List<Manager> managers = new ArrayList<>();
        String sql = "SELECT * FROM Manager m\n"
                + "JOIN `role` r ON r.id_role = m.id_role\n"
                + "JOIN Train_brand tb ON m.id_manager = tb.id_manager \n"
                + "WHERE tb.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Role role = new Role(rs.getInt("id_role"), rs.getString("name_role"));
                    managers.add(new Manager(
                            rs.getInt("id_manager"),
                            rs.getString("username_manager"),
                            rs.getString("password_manager"),
                            rs.getString("email_manager"),
                            role,
                            rs.getString("image_manager"),
                            rs.getInt("status_manager")
                    ));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return managers;
    }

    public static void main(String[] args) {
        ManagerDAO d = new ManagerDAO();

        List<Manager> managers = d.getManagerActive();

        for (Manager manager : managers) {
            System.out.println(manager);
        }
    }
}
