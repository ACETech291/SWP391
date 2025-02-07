package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Iterator;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.DataHandler;
import javax.activation.DataSource;

public class Email {
    // Email: tungletest1.email@gmail.com
    // Password: nebeekfipcstxcox

    public static boolean sendEmail(String to, String tieuDe, String noiDung) {
        // Properties : khai báo các thuộc tính
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP HOST
        props.put("mail.smtp.port", "587"); // TLS 587 SSL 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // create Authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // TODO Auto-generated method stub
                return new PasswordAuthentication("nguyenbahien170604@gmail.com", "kkwg ajyy kzbe gbyn");
            }
        };

        // Phiên làm việc
        Session session = Session.getInstance(props, auth);

        // Tạo một tin nhắn
        MimeMessage msg = new MimeMessage(session);

        try {
            // Kiểu nội dung
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");

            // Người gửi
            msg.setFrom("nguyenbahien170604@gmail.com");

            // Người nhận
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            // Tiêu đề email
            msg.setSubject(tieuDe);

            // Quy đinh ngày gửi
            msg.setSentDate(new Date());

            // Quy định email nhận phản hồi
            // msg.setReplyTo(InternetAddress.parse(from, false))
            // Nội dung
            msg.setContent("<html>"
                + "<head><style>"
                + "body { font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; }"
                + ".container { background-color: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); }"
                + "h2 { color: #333; }"
                + "p { color: #555; }"
                + ".button { background-color: #28a745; color: white; padding: 10px 15px; text-decoration: none; border-radius: 4px; }"
                + "</style></head>"
                + "<body>"
                + "<div class='container'>"
                + "<h2>Lấy lại Mật Khẩu</h2>"
                + "<p>Xin chào,</p>"
                + "<p>Cảm ơn bạn đã yêu cầu xác nhận lại email. Dưới đây là đường dẫn giúp bạn có thể vào và đặt lại mật khẩu:</p>"
                + "<a><p><strong><h1>" + noiDung + "<h1></strong></p></a>"
                + "<p>Trân trọng,<br>Đội ngũ hỗ trợ khách hàng</p>"
                + "</div>"
                + "</body>"
                + "</html>", "text/HTML; charset=UTF-8");

            // Gửi email
            Transport.send(msg);
            System.out.println("Gửi email thành công");
            return true;
        } catch (Exception e) {
            System.out.println("Gặp lỗi trong quá trình gửi email");
            e.printStackTrace();
            return false;
        }
    }
    
    public static boolean sendEmail2(String to, String tieuDe, String noiDung,String ngayDatHang,String diaChiNhanHang ) {
        // Properties : khai báo các thuộc tính
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP HOST
        props.put("mail.smtp.port", "587"); // TLS 587 SSL 465
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // create Authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // TODO Auto-generated method stub
                return new PasswordAuthentication("nguyenbahien170604@gmail.com", "kkwg ajyy kzbe gbyn");
            }
        };

        // Phiên làm việc
        Session session = Session.getInstance(props, auth);

        // Tạo một tin nhắn
        MimeMessage msg = new MimeMessage(session);

        try {
            // Kiểu nội dung
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");

            // Người gửi
            msg.setFrom("nguyenbahien170604@gmail.com");

            // Người nhận
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            // Tiêu đề email
            msg.setSubject(tieuDe);

            // Quy đinh ngày gửi
            msg.setSentDate(new Date());

            // Quy định email nhận phản hồi
            // msg.setReplyTo(InternetAddress.parse(from, false))
            // Nội dung
            msg.setContent("<html>"
            + "<head><style>"
            + "body { font-family: Arial, sans-serif; background-color: #f4f4f4; padding: 20px; }"
            + ".container { background-color: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); }"
            + "h2 { color: #333; }"
            + "p { color: #555; }"
            + ".button { background-color: #28a745; color: white; padding: 10px 15px; text-decoration: none; border-radius: 4px; }"
            + "</style></head>"
            + "<body>"
            + "<div class='container'>"
            + "<h2>Đơn Hàng Của Bạn</h2>"
            + "<p>Xin chào,</p>"
            + "<p>Cảm ơn bạn đã đặt hàng. Dưới đây là thông tin đơn hàng của bạn:</p>"
            + "<p><strong>Mã giao dịch</strong> " + System.currentTimeMillis() + "</p>"
            + "<p><strong>Thời gian đặt hàng:</strong> " + ngayDatHang + "</p>"
            + "<p><strong>Địa chỉ nhận hàng : </strong> " + diaChiNhanHang + "</p>"
            + "<p><strong>Thời gian dự kiến nhận hàng:</strong> 15->30 phút </p>"
            + "<p><strong>Số điện thoại người giao:</strong> " + noiDung + "</p>"
            + "<p><a href=\"https://www.facebook.com/hien.nguyenba.7311?locale=vi_VN\">Liên hệ quản lý<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>.</p>"
            + "<p>Chúc bạn có 1 trải nghiệm tuyệt vời.</p>"
            + "<p>Trân trọng,<br>Đội ngũ hỗ trợ khách hàng</p>"
            + "</div>"
            + "</body>"
            + "</html>", "text/HTML; charset=UTF-8");

            // Gửi email
            Transport.send(msg);
            System.out.println("Gửi email thành công");
            return true;
        } catch (Exception e) {
            System.out.println("Gặp lỗi trong quá trình gửi email");
            e.printStackTrace();
            return false;
        }
    }
    public static String layThoiGianHienTai() {
    LocalDateTime now = LocalDateTime.now();
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    return now.format(formatter);
}
}
