package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Trip;

public class TripDAO {
    private Connection connect;

    public TripDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    // Lấy tất cả chuyến đi
    public List<Trip> getAllTrips() {
        List<Trip> listTrips = new ArrayList<>();
        String sql = "SELECT * FROM trip";
        try (PreparedStatement ps = connect.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                listTrips.add(new Trip(
                        rs.getInt(1), rs.getInt(2), rs.getInt(3),
                        rs.getTimestamp(4), rs.getTimestamp(5), rs.getInt(6), rs.getInt(7)
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listTrips;
    }

    // Lấy danh sách chuyến đi theo ngày
    public List<Trip> getTripsByDate(Date date) {
        List<Trip> trips = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String formattedDate = sdf.format(date);

        String sql = """
            SELECT t.id_trip, s1.name_station AS start_station, s2.name_station AS end_station,
                   t.time_start_ticket, t.time_end_ticket, tr.image_train, tr.name_train
            FROM trip t
            JOIN station s1 ON t.id_station_start = s1.id_station
            JOIN station s2 ON t.id_station_end = s2.id_station
            JOIN train tr ON t.id_train = tr.id_train
            WHERE t.time_start_ticket BETWEEN ? AND ?
        """;

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            String startDate = formattedDate + " 00:00:00";
            String endDate = formattedDate + " 23:59:59";

            ps.setString(1, startDate);
            ps.setString(2, endDate);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                trips.add(new Trip(rs.getString("name_train"),
                        rs.getTimestamp("time_start_ticket"),  
                        rs.getTimestamp("time_end_ticket"),
                        rs.getString("start_station"),
                        rs.getString("end_station"),
                        rs.getString("image_train")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return trips;
    }

    public static void main(String[] args) {
        TripDAO td = new TripDAO();
        List<Trip> trips = td.getTripsByDate(new Date(2025-1900, 01, 14));

        System.out.println("Danh sách chuyến đi trong ngày:");
        for (Trip trip : trips) {
            System.out.println(trip.getName_station_start() + " -> " + trip.getName_station_end());
        }
    }
}
