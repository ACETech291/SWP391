/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Feedback;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Nguyen Ba Hien
 */
public class FeedbackDAO {
    private Connection connect;

    public FeedbackDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }
   public List<Feedback> getAllFeedback() {
        List<Feedback> feedbackList = new ArrayList<>();
        String query = "SELECT f.id_feedback, f.voting_feedback, f.content, c.name_customer, f.created_at " +
                       "FROM Feedback f " +
                       "JOIN Customer c ON f.id_customer = c.id_customer";

        try (PreparedStatement ps = connect.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                Feedback feedback = new Feedback();
                feedback.setId_feedback(rs.getInt("id_feedback"));
                feedback.setVoting_feedback(rs.getInt("voting_feedback"));
                feedback.setContent(rs.getString("content"));

                // Lấy name_customer từ bảng Customer
                feedback.setName_customer(rs.getString("name_customer"));

                // Lấy created_at dưới dạng java.sql.Date
                Date createdAt = rs.getDate("created_at");
                feedback.setCreated_at(createdAt); // Gán trực tiếp vào Feedback (vì Feedback đang dùng java.util.Date)

                feedbackList.add(feedback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return feedbackList;
    }
}
