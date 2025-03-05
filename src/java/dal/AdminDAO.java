package dal;

import java.sql.*;
import model.Admin;
import model.Role;

public class AdminDAO {

    private Connection connection;

    public AdminDAO() {
        this.connection = DBConnect.MySQLConnect();

        if (this.connection == null) {
            System.out.println("Database connection failed!");
        }
    }

    public Admin getAdmin(String email, String password) {
        String sql = "select * from admin a join `role` r on a.id_role = r.id_role where a.email_admin = ? AND a.password_admin= ?";
        try {
            PreparedStatement connect = connection.prepareStatement(sql);
            connect.setString(1, email);
            connect.setString(2, password);
            ResultSet result = connect.executeQuery();

            while (result.next()) {
                Role role = new Role(result.getInt("id_role"), result.getString("name_role"));

                return new Admin(
                        result.getInt("id_admin"),
                        result.getString("username_admin"),
                        result.getString("password_admin"),
                        result.getString("email_admin"),
                        result.getString("image_admin"),
                        role);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getSumManagerActive() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM manager m JOIN Role r ON m.id_role = r.id_role WHERE status_manager = 1";

        try {
            PreparedStatement connect = connection.prepareStatement(sql);
            ResultSet result = connect.executeQuery();

            while (result.next()) {
                count = result.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return count;
    }

    public int getSumCustomerActive() {
        int count = 0;
        String sql = "SELECT COUNT(*) FROM customer c JOIN Role r ON c.id_role = r.id_role WHERE status_customer = 1";

        try {
            PreparedStatement connect = connection.prepareStatement(sql);
            ResultSet result = connect.executeQuery();

            while (result.next()) {
                count = result.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return count;
    }

    public static void main(String[] args) {
        AdminDAO adminDAO = new AdminDAO();
        Admin admin = adminDAO.getAdmin("admin1@example.com", "6NWFIsI1V5KNFeeazNcq35qxRUE=");
        System.out.println(admin);
    }
}
