package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.Comment;

public class CommentDAO {

    private Connection connect;

    public CommentDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public List<Comment> getAllComments(int id) {
        List<Comment> commentList = new ArrayList<>();
        String query = "SELECT c.id_comment, c.voting_comment, c.content, cu.name_customer, c.create_at, c.id_train_brand " +
                "FROM Comment c " +
                "JOIN Customer cu ON c.id_customer = cu.id_customer WHERE id_train_brand = ?";

        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Comment comment = new Comment();
                comment.setId_comment(rs.getInt("id_comment"));
                comment.setVoting_comment(rs.getInt("voting_comment"));
                comment.setContent(rs.getString("content"));
                comment.setName_customer(rs.getString("name_customer"));
                comment.setCreate_at(rs.getTimestamp("create_at"));
                comment.setId_train_brand(rs.getInt("id_train_brand"));

                commentList.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return commentList;
    }

    public boolean insertComment(int voting_comment, String content, int id_customer, int id_train_brand) {
        String sql = "INSERT INTO Comment (voting_comment, content, id_customer, id_train_brand, create_at) VALUES (?, ?, ?, ?, NOW())";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, voting_comment);
            ps.setString(2, content);
            ps.setInt(3, id_customer);
            ps.setInt(4, id_train_brand);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        CommentDAO cd = new CommentDAO();
        List<Comment> list = cd.getAllComments(1);
        for (Comment comment : list) {
            System.out.println(comment);
        }
    }
}
