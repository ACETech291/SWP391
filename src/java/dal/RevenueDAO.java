package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Manager;
import model.Revenue;
import model.Role;

/**
 *
 * @author dinhphu
 */
public class RevenueDAO {
    private Connection connect;

    public RevenueDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!11");
        }
    }

    public List<Revenue> getRevenueDayAll(){
        List<Revenue> list = new ArrayList<>();
        String sql = """
                        SELECT 
                            d.date_details AS "date",
                            dt.id_trip,
                            COUNT(t.id_ticket) AS quantity,
                            SUM(tr.price_trip + ts.price_seat) AS "revenue"
                        FROM Date_trip dt
                        JOIN Date_of_trip d ON dt.id_date_of_trip = d.id_date_of_trip
                        JOIN Trip tr ON dt.id_trip = tr.id_trip
                        JOIN Ticket t ON dt.id_date_trip = t.id_date_trip
                        JOIN Train_seat ts ON t.id_train_seat = ts.id_train_seat
                        GROUP BY dt.id_date_trip, d.date_details, dt.id_trip
                        ORDER BY d.date_details, dt.id_trip;
                     """;
        try {
            PreparedStatement connect = this.connect.prepareStatement(sql);
            ResultSet rs = connect.executeQuery();
            
            while(rs.next()){
                Revenue r = new Revenue();
                r.setDate(rs.getDate("date"));
                r.setQuantity(rs.getInt("quantity"));
                r.setRevenue(rs.getFloat("revenue"));
                list.add(r);
            }
        } catch (Exception e) {
        }
        
        return list;
    }

}
