/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import model.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Nguyen Ba Hien
 */
public class RoleDAO {
    private Connection connection;

    public RoleDAO() {
        this.connection = DBConnect.MySQLConnect();

        if (this.connection == null) {
            System.out.println("Database connection failed!9");
        }
    }
        public List<Role> getAllRoles() {
        List<Role> roles = new ArrayList<>();
        String query = "SELECT id_role, name_role FROM role";

        try (PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Role role = new Role();
                role.setId(rs.getInt("id_role"));
                role.setRole_name(rs.getString("name_role"));
                roles.add(role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }
}