package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.Feedback;

public class FeedbackDAO {

    private Connection connect;

    public FeedbackDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!12");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public List<Feedback> getFeedbackByTrainBrandId(int id_train_brand) {
        List<Feedback> feedbackList = new ArrayList<>();
        String sql = """
                    SELECT f.*, c.name_customer, m.username_manager
                    FROM Feedback f
                    JOIN Advertising a ON f.id_advertising = a.id_advertising
                    JOIN train_brand tb ON a.id_manager = tb.id_manager
                    JOIN manager m ON tb.id_manager = m.id_manager
                    JOIN Customer c ON f.id_customer = c.id_customer
                    WHERE tb.id_train_brand = ?;
                     """;

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_train_brand);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Feedback feedback = new Feedback(
                        rs.getInt("id_feedback"),
                        rs.getInt("voting_feedback"),
                        rs.getString("content"),
                        rs.getString("name_customer"),
                        rs.getTimestamp("create_at"),
                        rs.getInt("id_advertising")
                );
                feedback.setFeedback_status(rs.getInt("feedback_status"));
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    public List<Feedback> getFilteredFeedback(Integer idAdvertising, Integer voting) {
        List<Feedback> feedbackList = new ArrayList<>();
        String sql = """
                     SELECT f.id_feedback, f.voting_feedback, f.content, c.name_customer AS name_customer, 
                            f.create_at, f.id_advertising, f.feedback_status
                     FROM Feedback f
                     JOIN Customer c ON f.id_customer = c.id_customer
                     WHERE (? = '' OR f.id_advertising = ?)
                     AND (? = '' OR f.voting_feedback = ?);
                     """;
        
        
        
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, idAdvertising);
            ps.setInt(2, idAdvertising);
            ps.setInt(3, voting);
            ps.setInt(4, voting);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Feedback feedback = new Feedback(
                        rs.getInt("id_feedback"),
                        rs.getInt("voting_feedback"),
                        rs.getString("content"),
                        rs.getString("name_customer"),
                        rs.getTimestamp("create_at"),
                        rs.getInt("id_advertising")
                );
                feedback.setFeedback_status(rs.getInt("feedback_status"));
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    public void disableFeedback(int id_feedback) throws SQLException {
        String sql = """
                    UPDATE Feedback 
                    SET feedback_status = 1 
                    WHERE id_feedback = ?
                     """;

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_feedback);
            int affectedRows = ps.executeUpdate();

            if (affectedRows == 0) {
                System.out.println("⚠ Không có chuyến nào được cập nhật! Kiểm tra id_trip: " + id_feedback);
            } else {
                System.out.println("✔ Đã cập nhật trạng thái của chuyến có id: " + id_feedback);
            }
        } catch (SQLException e) {
            System.err.println("❌ Lỗi khi cập nhật trạng thái chuyến: " + e.getMessage());
            throw e; // Ném lại lỗi để xử lý ở lớp gọi phương thức này
        }
    }

    public List<Feedback> getAllFeedback(int id) {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT f.id_feedback, f.voting_feedback, f.content, c.name_customer, f.create_at, f.id_advertising "
                + "FROM Feedback f "
                + "JOIN Customer c ON f.id_customer = c.id_customer where feedback_status = 0 AND id_advertising = " + id;

        try (PreparedStatement ps = connect.prepareStatement(query); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setId_feedback(rs.getInt("id_feedback"));
                feedback.setVoting_feedback(rs.getInt("voting_feedback"));
                feedback.setContent(rs.getString("content"));
                feedback.setName_customer(rs.getString("name_customer"));
                feedback.setCreate_at(rs.getTimestamp("create_at"));
                feedback.setId_advertising(rs.getInt("id_advertising"));
                
                feedbackList.add(feedback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    public List<Feedback> getAllFeedbackVoting(int id, int voting_feedback) {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT f.id_feedback, f.voting_feedback, f.content, c.name_customer, f.create_at, f.id_advertising "
                + "FROM Feedback f "
                + "JOIN Customer c ON f.id_customer = c.id_customer "
                + "WHERE feedback_status = 0 AND f.id_advertising = ? AND f.voting_feedback = ?";

        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id);
            ps.setInt(2, voting_feedback);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Feedback feedback = new Feedback();
                    feedback.setId_feedback(rs.getInt("id_feedback"));
                    feedback.setVoting_feedback(rs.getInt("voting_feedback"));
                    feedback.setContent(rs.getString("content"));
                    feedback.setName_customer(rs.getString("name_customer"));
                    feedback.setCreate_at(rs.getTimestamp("create_at"));
                    feedback.setId_advertising(rs.getInt("id_advertising"));

                    feedbackList.add(feedback);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return feedbackList;
    }

    public int countFeedbackByVoting(int id, int voting_feedback) {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM Feedback WHERE feedback_status = 0  AND id_advertising = ? AND voting_feedback = ?";

        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id);
            ps.setInt(2, voting_feedback);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    count = rs.getInt("total");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    public boolean insertFeedback(int voting_feedback, String content, int id_customer, int id_advertising) {
        String sql = "INSERT INTO Feedback (voting_feedback, content, id_customer, id_advertising, create_at) VALUES (?, ?, ?, ?, NOW())";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, voting_feedback);
            ps.setString(2, content);
            ps.setInt(3, id_customer);
            ps.setInt(4, id_advertising);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    public boolean deleteFeedbackByAdvertisingId(int id_advertising) {
        String sql = "DELETE FROM Feedback WHERE id_advertising = ?";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_advertising);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Trả về true nếu có ít nhất một hàng bị xóa
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Feedback> getFeedbackByAdvertisingId(int idAdvertising) {
        List<Feedback> feedbacks = new ArrayList<>();
        String query = "SELECT * FROM feedback WHERE id_advertising = ? ORDER BY create_at DESC";

        try (
                PreparedStatement ps = connect.prepareStatement(query)) {

            ps.setInt(1, idAdvertising);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Feedback feedback = new Feedback(
                        rs.getInt("id_feedback"),
                        rs.getInt("voting_feedback"),
                        rs.getString("content"),
                        rs.getString("name_customer"),
                        rs.getTimestamp("create_at"),
                        rs.getInt("id_advertising")
                );
                feedbacks.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return feedbacks;
    }
    
    public static void main(String[] args) {
        FeedbackDAO fbdao = new FeedbackDAO();
        List<Feedback> list = fbdao.getFilteredFeedback(1, 0);
        System.out.println(list.size());
    }
}
