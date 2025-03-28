package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Introduction;

public class IntroductionDAO {
    private Connection connect;

    public IntroductionDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public Introduction getIntroductionById(int id_introduction) {
        String query = "SELECT * FROM Introduction WHERE id_introduction = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_introduction);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Introduction(
                        rs.getInt("id_introduction"),
                        rs.getString("content"),
                        rs.getTimestamp("create_at"),
                        rs.getInt("status_introduction")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Introduction> getAllIntroductions() {
        List<Introduction> introductions = new ArrayList<>();
        String query = "SELECT * FROM Introduction WHERE status_introduction = 1";
        try (PreparedStatement ps = connect.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                introductions.add(new Introduction(
                    rs.getInt("id_introduction"),
                    rs.getString("content"),
                    rs.getTimestamp("create_at"),
                    rs.getInt("status_introduction")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return introductions;
    }

    public boolean addIntroduction(String content, Timestamp create_at, int status_introduction) {
        String query = "INSERT INTO Introduction (content, create_at, status_introduction) VALUES (?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, create_at);
            ps.setInt(3, status_introduction);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateIntroduction(int id_introduction, String content, Timestamp create_at, int status_introduction) {
        String query = "UPDATE Introduction SET content = ?, create_at = ?, status_introduction = ? WHERE id_introduction = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, create_at);
            ps.setInt(3, status_introduction);
            ps.setInt(4, id_introduction);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteIntroduction(int id_introduction) {
        String query = "DELETE FROM Introduction WHERE id_introduction = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id_introduction);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public Introduction getLastIntroduction() {
    String query = "SELECT * FROM Introduction WHERE status_introduction = 1 ORDER BY create_at DESC LIMIT 1";
    
    try (PreparedStatement preparedStatement = connect.prepareStatement(query);
         ResultSet resultSet = preparedStatement.executeQuery()) {
        
        if (resultSet.next()) {
            Introduction introduction = new Introduction();
            introduction.setId_introduction(resultSet.getInt("id_introduction"));
            introduction.setContent(resultSet.getString("content"));
            introduction.setCreate_at(resultSet.getTimestamp("create_at"));
            introduction.setStatus_introduction(resultSet.getInt("status_introduction"));
            return introduction;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return null; // Không tìm thấy bản ghi nào
}
    public boolean updateIntroduction(int id_introduction, String content, LocalDateTime create_at, int status_introduction) {
        String query = "UPDATE Introduction SET content = ?, create_at = ?, status_introduction = ? WHERE id_introduction = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setString(1, content);
            ps.setTimestamp(2, Timestamp.valueOf(create_at));
            ps.setInt(3, status_introduction);
            ps.setInt(4, id_introduction);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
