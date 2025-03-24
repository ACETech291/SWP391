/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import model.Authorization;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Nguyen Ba Hien
 */
public class AuthorizationDAO {

    private Connection connect;

    public AuthorizationDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!16");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public Authorization getAuthorizationById(int id_authorization) {
        String query = "SELECT id_authorization, role_id, url_authorization, feature_authorization FROM Authorization WHERE id_authorization = ?";

        try (PreparedStatement preparedStatement = connect.prepareStatement(query)) {
            preparedStatement.setInt(1, id_authorization);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    Authorization authorization = new Authorization();
                    authorization.setId_authorization(resultSet.getInt("id_authorization"));
                    authorization.setRole_id(resultSet.getInt("role_id"));
                    authorization.setUrl_authorization(resultSet.getString("url_authorization"));
                    authorization.setFeature_authorization(resultSet.getString("feature_authorization"));
                    return authorization;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Không tìm thấy
    }

    public boolean updateAuthorization(int id_authorization, int role_id, String url_authorization, String feature_authorization) {
        String query = "UPDATE Authorization SET role_id = ?, url_authorization = ?, feature_authorization = ?, status_authorization = 1 WHERE id_authorization = ?";
        try (PreparedStatement preparedStatement = connect.prepareStatement(query)) {
            preparedStatement.setInt(1, role_id);
            preparedStatement.setString(2, url_authorization);
            preparedStatement.setString(3, feature_authorization);
            preparedStatement.setInt(4, id_authorization);

            int affectedRows = preparedStatement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Authorization> getAllAuthorizations() {
        List<Authorization> authorizations = new ArrayList<>();
        String query = "SELECT id_authorization, role_id, url_authorization, feature_authorization FROM Authorization where status_authorization = 1";

        try (PreparedStatement preparedStatement = connect.prepareStatement(query); ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                Authorization authorization = new Authorization();
                authorization.setId_authorization(resultSet.getInt("id_authorization"));
                authorization.setRole_id(resultSet.getInt("role_id"));
                authorization.setUrl_authorization(resultSet.getString("url_authorization"));
                authorization.setFeature_authorization(resultSet.getString("feature_authorization"));

                authorizations.add(authorization);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return authorizations;
    }

    public boolean deleteAuthorization(int id_authorization) {
        String query = "DELETE FROM Authorization WHERE id_authorization = ?";
        try (Connection conn = DBConnect.MySQLConnect(); PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, id_authorization);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean authorizationCheck(int role_id, String url_authorization) {
        if (url_authorization.contains("/css") || url_authorization.contains("/vendors") || url_authorization.contains("/img") || url_authorization.contains("/app")) {
            return true;
        }
        String query = "SELECT COUNT(*) FROM Authorization WHERE role_id = ? AND url_authorization = ?";

        try (PreparedStatement preparedStatement = connect.prepareStatement(query)) {
            preparedStatement.setInt(1, role_id);
            preparedStatement.setString(2, url_authorization);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0; // Nếu COUNT > 0, tức là tồn tại
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false; // Không tìm thấy
    }

    public List<Authorization> getListByPage1(List<Authorization> list, int start, int end) {
        ArrayList<Authorization> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void addAuthorization(int role_id, String url_authorization, String feature_authorization, int status_authorization) {
        String query = "INSERT INTO Authorization (role_id, url_authorization, feature_authorization, status_authorization) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connect.prepareStatement(query)) {
            preparedStatement.setInt(1, role_id);
            preparedStatement.setString(2, url_authorization);
            preparedStatement.setString(3, feature_authorization);
            preparedStatement.setInt(4, status_authorization);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        AuthorizationDAO ad = new AuthorizationDAO();
        ad.addAuthorization(1, "/login", "Trang đăng kí", 1);
        ad.addAuthorization(2, "/login", "Trang đăng kí", 1);
        ad.addAuthorization(3, "/login", "Trang đăng kí", 1);
        ad.addAuthorization(4, "/login", "Trang đăng kí", 1);
        System.out.println(ad.authorizationCheck(1, "/login"));;
    }
}
