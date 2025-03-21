package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import static java.time.LocalDateTime.now;
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
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, a.create_at, m.username_manager\n"
                + "FROM advertising a\n"
                + "JOIN manager m ON a.id_manager = m.id_manager\n"
                + "LIMIT 50;";

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
    public List<Advertising> get12Advertising(int amount) {
        List<Advertising> list = new ArrayList<>();
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, a.create_at, m.username_manager\n"
                + "FROM advertising a\n"
                + "JOIN manager m ON a.id_manager = m.id_manager\n"
                + "LIMIT 3 offset ?;";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, amount);
            ResultSet rs = ps.executeQuery();
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

public List<Advertising> filterAdvertising(String sort, String brand) {
    List<Advertising> list = new ArrayList<>();
    String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, a.create_at, m.username_manager, b.name_train_brand " +
                 "FROM advertising a " +
                 "JOIN manager m ON a.id_manager = m.id_manager " +
                 "JOIN train_brand b ON a.id_manager = b.id_manager ";

    // Thêm điều kiện lọc theo brand nếu không phải 'all'
    if (!"all".equals(brand)) {
        sql += "WHERE b.name_train_brand = ? ";
    }

    // Xử lý sắp xếp theo ngày
    if ("newest".equals(sort)) {
        sql += "ORDER BY a.create_at DESC";
    } else if ("oldest".equals(sort)) {
        sql += "ORDER BY a.create_at ASC";
    }

    try (PreparedStatement ps = connect.prepareStatement(sql)) {
        // Nếu có lọc theo brand, gán giá trị tham số
        if (!"all".equals(brand)) {
            ps.setString(1, brand);
        }

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Advertising ad = new Advertising();
            ad.setId_advertising(rs.getInt("id_advertising"));
            ad.setImage_advertising(rs.getString("image_advertising"));
            ad.setDescription_advertising(rs.getString("description_advertising"));
            ad.setContent(rs.getString("content"));
            ad.setCreate_at(rs.getTimestamp("create_at"));
            ad.setManagerName(rs.getString("username_manager"));
            list.add(ad);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}


    public List<Advertising> getListByPage(List<Advertising> list, int start, int end) {
        ArrayList<Advertising> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {
        AdvertisingDAO ad = new AdvertisingDAO();
        List<model.Advertising> list = ad.filterAdvertising("newest", "");
        for (Advertising advertising : list) {
            System.out.println(advertising);
        }
    }
}
