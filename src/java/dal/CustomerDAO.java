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
            System.err.println("Database connection failed!14");
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
                listCustomers.add(new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        role)
                );
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
                    return new Customer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            role);
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
                    return new Customer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            role);
                }
                if (rs.getString(9) == null) {
                    return null;
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        CustomerDAO customerDAO = new CustomerDAO();
        List<Customer> customer = customerDAO.getCustomersWithTicketsByTrainBrand(1);
        for (Customer customer1 : customer) {
            System.out.println(customer1.getUserName());
        }
        
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
                    return new Customer(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            role);
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

    public boolean updateCustomer(Customer customer) {
        String sql = "UPDATE customer SET name_customer = ?, phone_number_customer = ?, email_customer = ?, status_customer = ? WHERE id_customer = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, customer.getUserName());
            ps.setString(2, customer.getPhoneNumber());
            ps.setString(3, customer.getEmail());
            ps.setInt(4, customer.getStatus());
            ps.setInt(5, customer.getId_customer());

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error updating customer: " + e.getMessage());
        }
        return false;
    }

    public void updateAvatarPath(String email, String imagePath) {
        try (Connection conn = connect) {
            String sql = "UPDATE Customer SET image_customer = ? WHERE email_customer = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, imagePath);
            stmt.setString(2, email);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int getIdCustomerByEmail(String email) {
        String sql = " SELECT id_customer FROM customer WHERE customer.email_customer = ? ";
        int id = -1;
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id_customer");
            }
        } catch (Exception e) {
        }
        return id;
    }

    public List<Customer> getCustomersWithTicketsByTrainBrand(int trainBrandId) {
        List<Customer> customers = new ArrayList<>();
        String sql = """
    SELECT c.id_customer, c.name_customer, c.email_customer, c.phone_number_customer, 
               tb.id_train_brand, tb.name_train_brand, COUNT(t.id_ticket) AS ticket_count 
        FROM Customer c 
        JOIN Ticket t ON c.id_customer = t.id_customer 
        JOIN Train_seat ts ON t.id_train_seat = ts.id_train_seat 
        JOIN Train_carriage tc ON ts.id_train_carriage = tc.id_train_carriage 
        JOIN Train tr ON tc.id_train = tr.id_train 
        JOIN Train_brand tb ON tr.id_train_brand = tb.id_train_brand 
        WHERE tb.id_train_brand = ? 
        GROUP BY c.id_customer, c.name_customer, c.email_customer, c.phone_number_customer, 
                 tb.id_train_brand, tb.name_train_brand
    """;

        try (
                PreparedStatement stmt = connect.prepareStatement(sql)) {
            stmt.setInt(1, trainBrandId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Customer c = new Customer();
                c.setId(rs.getInt("id_customer"));
                c.setUserName(rs.getString("name_customer"));
                c.setEmail(rs.getString("email_customer"));
                c.setPhoneNumber(rs.getString("phone_number_customer"));
                c.setTicket_quantity(rs.getInt("ticket_count"));
                
                customers.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
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
}
