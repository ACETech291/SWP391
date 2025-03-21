package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

    public List<Feedback> getAllFeedback(int id) {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT f.id_feedback, f.voting_feedback, f.content, c.name_customer, f.create_at, f.id_advertising "
                + "FROM Feedback f "
                + "JOIN Customer c ON f.id_customer = c.id_customer where id_advertising = "+id;

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
    public static void main(String[] args) {
        FeedbackDAO fd = new FeedbackDAO();
        List<Feedback> list = fd.getAllFeedback(1);
        for (Feedback feedback : list) {
            System.out.println("1");
            System.out.println(feedback);
        }
    }
}
