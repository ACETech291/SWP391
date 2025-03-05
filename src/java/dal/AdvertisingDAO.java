/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.util.List;
import model.Advertising;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, m.username_manager "
                + "FROM advertising a "
                + "JOIN manager m ON a.id_manager = m.id_manager";

        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Advertising ad = new Advertising();
                ad.setId_advertising(rs.getInt("id_advertising"));
                ad.setImage_advertising(rs.getString("image_advertising"));
                ad.setDescription_advertising(rs.getString("description_advertising"));
                ad.setContent(rs.getString("content"));  // Lấy nội dung quảng cáo
                ad.setManagerName(rs.getString("username_manager")); // Lấy tên thay vì ID
                list.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Advertising getAdvertisingById(String id) {
        String sql = "SELECT a.id_advertising, a.image_advertising, a.description_advertising, a.content, m.username_manager "
                + "FROM advertising a "
                + "JOIN manager m ON a.id_manager = m.id_manager "
                + "WHERE a.id_advertising = ?";

        try {
            int advertisingId = Integer.parseInt(id); // Chuyển đổi String -> int

            try (PreparedStatement ps = connect.prepareStatement(sql)) {
                ps.setInt(1, advertisingId);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        Advertising ad = new Advertising();
                        ad.setId_advertising(rs.getInt("id_advertising"));
                        ad.setImage_advertising(rs.getString("image_advertising"));
                        ad.setDescription_advertising(rs.getString("description_advertising"));
                        ad.setContent(rs.getString("content"));  // Lấy nội dung quảng cáo
                        ad.setManagerName(rs.getString("username_manager"));
                        return ad;
                    }
                }
            }
        } catch (NumberFormatException e) {
            System.err.println("Invalid ID format: " + id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null; // Trả về null nếu không tìm thấy quảng cáo hoặc ID không hợp lệ
    }

    public boolean insertAdvertising(String image, String description, int id_manager, String content) {
        String sql = "INSERT INTO advertising (image_advertising, description_advertising, id_manager, content) VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, image);
            ps.setString(2, description);
            ps.setInt(3, id_manager);
            ps.setString(4, content); // Thêm nội dung

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Trả về true nếu thêm thành công
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        AdvertisingDAO ad = new AdvertisingDAO();

//ALTER TABLE advertising 
//ADD COLUMN content LONGTEXT CHARACTER SET utf8mb4 COLLATE UTF8MB4_UNICODE_CI;

//INSERT INTO advertising (image_advertising, description_advertising, id_manager, content) 
//VALUES ('../SWP391/images/HANOI.jpg', 'Hà Nội, thủ đô 1000 năm văn hiến', 1, 
//'Hà Nội là thủ đô ngàn năm văn hiến của Việt Nam, nổi tiếng với những di tích lịch sử như Hồ Gươm, Lăng Bác, Văn Miếu - Quốc Tử Giám và khu phố cổ. Thành phố mang vẻ đẹp cổ kính pha lẫn hiện đại, thu hút du khách bởi nét văn hóa đặc trưng và ẩm thực phong phú như phở, bún chả và bánh cuốn.');
//
//INSERT INTO advertising (image_advertising, description_advertising, id_manager, content) 
//VALUES ('../SWP391/images/NHATRANG.jpg', 'Nha Trang, hòa mình vào từng cơn sóng biển', 1, 
//'Nha Trang là thành phố biển xinh đẹp nổi tiếng với bãi cát trắng mịn, làn nước trong xanh và những hòn đảo tuyệt đẹp như Hòn Mun, Hòn Tằm. Đây là điểm đến lý tưởng cho những ai yêu thích biển và các hoạt động như lặn biển, chèo kayak và thưởng thức hải sản tươi ngon.');
//
//INSERT INTO advertising (image_advertising, description_advertising, id_manager, content) 
//VALUES ('../SWP391/images/SAIGON.jpg', 'Sài Gòn, nơi tình yêu bắt đầu', 2, 
//'Sài Gòn - Thành phố Hồ Chí Minh là trung tâm kinh tế sầm uất bậc nhất Việt Nam, nơi giao thoa của nhiều nền văn hóa. Thành phố mang đến nhịp sống năng động với các địa điểm nổi tiếng như Nhà thờ Đức Bà, Chợ Bến Thành và phố đi bộ Nguyễn Huệ. Nơi đây còn có nền ẩm thực đa dạng từ cơm tấm, hủ tiếu đến cà phê sữa đá.');
//
//INSERT INTO advertising (image_advertising, description_advertising, id_manager, content) 
//VALUES ('../SWP391/images/NUITHANH.jpg', 'Núi Thành, Nơi cảm xúc dâng trào', 2, 
//'Núi Thành thuộc tỉnh Quảng Nam, là vùng đất giàu truyền thống lịch sử và cảnh đẹp thiên nhiên hoang sơ. Đây là điểm đến hấp dẫn với những bãi biển tuyệt đẹp như Tam Hải, những cánh đồng muối và các địa danh gắn liền với lịch sử hào hùng của dân tộc.');
    Advertising a = ad.getAdvertisingById("1");
        System.out.println(a);
    }
    
}
