package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import model.TokenForgetPassword;

/**
 * DAO class for handling tokenForgetPassword operations.
 * @author Nguyen Ba Hien
 */
public class TokenDAO {
    
    private final Connection connect;
    
    public TokenDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }

    /**
     * Insert a new TokenForgetPassword record into the database.
     * @param tokenForget TokenForgetPassword object
     * @return true if insertion is successful, false otherwise
     */
    public boolean insertTokenForget(TokenForgetPassword tokenForget) {
        String sql = "INSERT INTO tokenForgetPassword (token, expiryTime, isUsed, userId) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, tokenForget.getToken());
            ps.setTimestamp(2, tokenForget.getExpiryTime() != null ? Timestamp.valueOf(tokenForget.getExpiryTime()) : null);
            ps.setBoolean(3, tokenForget.isIsUsed());
            ps.setInt(4, tokenForget.getUserId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error inserting tokenForgetPassword: " + e.getMessage());
        }
        return false;
    }

    /**
     * Retrieve a TokenForgetPassword by its token.
     * @param token Token string
     * @return TokenForgetPassword object or null if not found
     */
    public TokenForgetPassword getTokenPassword(String token) {
        String sql = "SELECT * FROM tokenForgetPassword WHERE token = ?";
        try (PreparedStatement st = connect.prepareStatement(sql)) {
            st.setString(1, token);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    return new TokenForgetPassword(
                        rs.getInt("id"),
                        rs.getInt("userId"),
                        rs.getBoolean("isUsed"),
                        rs.getString("token"),
                        rs.getTimestamp("expiryTime").toLocalDateTime()
                    );
                }
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving tokenForgetPassword: " + e.getMessage());
        }
        return null;
    }

    /**
     * Update the isUsed status of a token.
     * @param token TokenForgetPassword object
     */
    public void updateStatus(TokenForgetPassword token) {
        String sql = "UPDATE tokenForgetPassword SET isUsed = ? WHERE token = ?";
        try (PreparedStatement st = connect.prepareStatement(sql)) {
            st.setBoolean(1, token.isIsUsed());
            st.setString(2, token.getToken());
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println("Error updating tokenForgetPassword status: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
//        TokenDAO dao = new TokenDAO();
//        TokenForgetPassword token = new TokenForgetPassword(10, true, "1", LocalDateTime.now());
//        boolean inserted = dao.insertTokenForget(token);
//        System.out.println("Inserted: " + inserted);
    }
}
