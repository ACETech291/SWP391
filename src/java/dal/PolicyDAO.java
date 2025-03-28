/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Policy;

public class PolicyDAO {

    private Connection connect;

    public PolicyDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public Policy getPolicyById(int id_policy) {
        String query = "SELECT id_policy, content, create_at, status_policy FROM Policy WHERE id_policy = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_policy);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Policy(
                            rs.getInt("id_policy"),
                            rs.getString("content"),
                            rs.getTimestamp("create_at"),
                            rs.getInt("status_policy")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean addPolicy(String content, Timestamp create_at, int status_policy) {
        String query = "INSERT INTO Policy (content, create_at, status_policy) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, create_at);
            ps.setInt(3, status_policy);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updatePolicy(int id_policy, String content, Timestamp create_at, int status_policy) {
        String query = "UPDATE Policy SET content = ?, create_at = ?, status_policy = ? WHERE id_policy = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, create_at);
            ps.setInt(3, status_policy);
            ps.setInt(4, id_policy);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deletePolicy(int id_policy) {
        String query = "DELETE FROM Policy WHERE id_policy = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_policy);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Policy> getAllPolicies() {
        List<Policy> policies = new ArrayList<>();
        String query = "SELECT id_policy, content, create_at, status_policy FROM Policy WHERE status_policy = 1";
        try (PreparedStatement ps = connect.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                policies.add(new Policy(
                        rs.getInt("id_policy"),
                        rs.getString("content"),
                        rs.getTimestamp("create_at"),
                        rs.getInt("status_policy")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return policies;
    }

    public boolean updatePolicyContent(int id_policy, String content) {
        String query = "UPDATE Policy SET content = ? WHERE id_policy = ?";
        try (
                PreparedStatement stmt = connect.prepareStatement(query)) {
            stmt.setString(1, content);
            stmt.setInt(2, id_policy);
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Policy getLastPolicy() {
        String query = "SELECT * FROM Policy WHERE status_policy = 1 ORDER BY create_at DESC LIMIT 1";

        try (PreparedStatement preparedStatement = connect.prepareStatement(query); ResultSet resultSet = preparedStatement.executeQuery()) {

            if (resultSet.next()) {
                Policy policy = new Policy();
                policy.setId_policy(resultSet.getInt("id_policy"));
                policy.setContent(resultSet.getString("content"));
                policy.setCreate_at(resultSet.getTimestamp("create_at"));
                policy.setStatus_policy(resultSet.getInt("status_policy"));
                return policy;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Không tìm thấy bản ghi nào
    }

    public boolean updatePolicy(int id_policy, String content, LocalDateTime create_at, int status_policy) {
        String query = "UPDATE Policy SET content = ?, create_at = ?, status_policy = ? WHERE id_policy = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, Timestamp.valueOf(create_at));
            ps.setInt(3, status_policy);
            ps.setInt(4, id_policy);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
