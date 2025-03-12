package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import model.Advertising;

/**
 *
 * @author Nguyen Ba Hien
 */
public class AdvertisingDAO {

    private Connection connect;

    public AdvertisingDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    public List<Advertising> getAllAdvertising() {
        List<Advertising> list = new ArrayList<>();
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, a.create_at, m.username_manager "
                   + "FROM advertising a "
                   + "JOIN manager m ON a.id_manager = m.id_manager";

        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Advertising ad = new Advertising();
                ad.setId_advertising(rs.getInt("id_advertising"));
                ad.setImage_advertising(rs.getString("image_advertising"));
                ad.setDescription_advertising(rs.getString("description_advertising"));
                ad.setContent(rs.getString("content"));
                ad.setManagerName(rs.getString("username_manager"));
                ad.setCreate_at(rs.getTimestamp("create_at")); // Lấy thời gian tạo
                list.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Advertising getAdvertisingById(String id) {
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, a.create_at, m.username_manager "
                   + "FROM advertising a "
                   + "JOIN manager m ON a.id_manager = m.id_manager "
                   + "WHERE a.id_advertising = ?";

        try {
            int advertisingId = Integer.parseInt(id);

            try (PreparedStatement ps = connect.prepareStatement(sql)) {
                ps.setInt(1, advertisingId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        Advertising ad = new Advertising();
                        ad.setId_advertising(rs.getInt("id_advertising"));
                        ad.setImage_advertising(rs.getString("image_advertising"));
                        ad.setDescription_advertising(rs.getString("description_advertising"));
                        ad.setContent(rs.getString("content"));
                        ad.setManagerName(rs.getString("username_manager"));
                        ad.setCreate_at(rs.getTimestamp("create_at"));
                        return ad;
                    }
                }
            }
        } catch (NumberFormatException e) {
            System.err.println("Invalid ID format: " + id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public boolean insertAdvertising(String image, String description, int id_manager, String content) {
        String sql = "INSERT INTO advertising (image_advertising, description_advertising, id_manager, content, create_at) "
                   + "VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, image);
            ps.setString(2, description);
            ps.setInt(3, id_manager);
            ps.setString(4, content);
            ps.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Lưu thời gian tạo hiện tại

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        AdvertisingDAO ad = new AdvertisingDAO();
        Advertising a = ad.getAdvertisingById("1");
        System.out.println(a);
    }
}
