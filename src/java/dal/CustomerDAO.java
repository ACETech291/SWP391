/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import model.Customer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Role;

/**
 *
 * @author Nguyen Ba Hien
 */
public class CustomerDAO {

    private Connection connect;

    public CustomerDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }

    public List<Customer> getAllCustomer() {
        List<Customer> listCustomers = new ArrayList<>();
        String sql = "select * from customer a join role r ON a.id_role = r.id_role";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Role role = new Role(rs.getInt(8), rs.getString(9));
                listCustomers.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), role));
            }
        } catch (Exception e) {
        }
        return listCustomers;
    }

    public void createAccount(Customer a) {
        String sql = "INSERT INTO customer (name_customer, phone_number_customer, email_customer, password_customer, status_customer, id_role) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, a.getUserName());
            ps.setString(2, a.getPhoneNumber());
            ps.setString(3, a.getEmail());
            ps.setString(4, a.getPassword());
            ps.setInt(5, a.getStatus());
            ps.setInt(6, a.getRole().getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Role getRoleById(int id) {
        String sql = "select * from role where id_role = ?";
        Role role = null;
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                role = new Role(rs.getInt(1), rs.getString(2));

            }
        } catch (Exception e) {
        }
        return role;
    }

    public Customer getCustomer(String email, String password) {
        String sql = "select * from customer a join `role` r on a.id_role = r.id_role where a.email_customer = ? AND a.password_customer= ?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                if (rs.getString(9) != null) {
                    Role role = new Role(rs.getInt(8),
                            rs.getString(9));
                    return new Customer(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), role);
                }
                if (rs.getString(9) == null) {
                    return null;
                }
            }

        } catch (Exception e) {
        }
        return null;

    }

    public Customer getUserById(int customerId) {
        String sql = "select * from customer a join `role` r on a.id_role = r.id_role where id_customer =?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, customerId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(9) != null) {
                    Role role = new Role(rs.getInt(8),
                            rs.getString(9));
                    return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), role);
                }
                if (rs.getString(9) == null) {
                    return null;
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerByEmail(String email) {
        String sql = "select * from customer a join `role` r on a.id_role = r.id_role where email_customer =?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getString(9) != null) {
                    Role role = new Role(rs.getInt(8),
                            rs.getString(9));
                    return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), role);
                }
                if (rs.getString(9) == null) {
                    return null;
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    public boolean updateName(String email, String name) {
        String sql = "UPDATE customer SET name_customer = ? WHERE email_customer = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, email);

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Name updated successfully for email: " + email);
                return true;
            } else {
                System.err.println("Error: No customer found with email: " + email);
            }
        } catch (SQLException e) {
            System.err.println("Error updating name: " + e.getMessage());
        }
        return false;
    }

    public boolean updatePhone(String email, String phone) {
        String sql = "UPDATE customer SET phone_number_customer = ? WHERE email_customer = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, phone);
            ps.setString(2, email);

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Phone updated successfully for email: " + email);
                return true;
            } else {
                System.err.println("Error: No customer found with email: " + email);
            }
        } catch (SQLException e) {
            System.err.println("Error updating phone: " + e.getMessage());
        }
        return false;
    }

    public boolean updatePassword(String email, String password_encode) {
        String sql = "UPDATE customer SET password_customer = ? WHERE email_customer = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, password_encode);
            ps.setString(2, email);

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Password updated successfully for email: " + email);
                return true;
            } else {
                System.err.println("Error: No customer found with email: " + email);
            }
        } catch (SQLException e) {
            System.err.println("Error updating password: " + e.getMessage());
        }
        return false;
    }

//    public List<Customer> getListCustomer() {
//        List<Customer> listCustomer = new ArrayList<>();
//        String sql = "select *\n"
//                + "from Customer a join role r on a.roleId = r.id";
//        try {
//            PreparedStatement ps = connect.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Role role = new Role(rs.getInt(8), rs.getString(9));
//                listCustomer.add(new Customer(rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        role));
//            }
//        } catch (Exception e) {
//        }
//        return listCustomer;
//    }
    public static void main(String[] args) {
        CustomerDAO cd = new CustomerDAO();
//        List<Customer> a = cd.getAllCustomer();
//        for (Customer customer : a) {
//            System.out.println(customer.toString());
//        }
        Customer customer = cd.getCustomer("a@gmail.com", "a");
        System.out.println(customer);
//        System.out.println("a");
//        Role role = cd.getRoleById(3);
//        System.out.println(role.toString());    
//        System.out.println("a");
//        Customer cus = cd.getCustomer("1", "1");
//        System.out.println(cus.toString());

        Customer cus = cd.getCustomerByEmail("test@gmail.com");
        System.out.println(cus.toString());
    }

}
