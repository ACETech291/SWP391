package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Trip;
import model.TripDTO;

public class TripDAO {

    private Connection connect;

    public TripDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!1");
        } else {
            System.out.println("Database connected successfully!");
        }
    }

    // Lấy tất cả chuyến đi
    public List<Trip> getAllTrips() {
        List<Trip> listTrips = new ArrayList<>();
        String sql = "SELECT * FROM trip";
        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
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

    public List<TripDTO> getAllTripsAtThisDay() {
        List<TripDTO> trips = new ArrayList<>();
        StringBuilder sql = new StringBuilder("""
    SELECT t.id_trip, 
           s1.name_station AS start_station, 
           s2.name_station AS end_station,
           tr.name_train, 
           tos1.time_train_in_station AS start_time, 
           tos2.time_train_in_station AS end_time,
           t.price_trip  -- Lấy thêm giá vé
    FROM trip t
    JOIN time_station ts1 ON t.id_time_station_start = ts1.id_time_station
    JOIN time_station ts2 ON t.id_time_station_end = ts2.id_time_station
    JOIN station s1 ON ts1.id_station = s1.id_station
    JOIN station s2 ON ts2.id_station = s2.id_station
    JOIN train tr ON t.id_train = tr.id_train
    JOIN time_of_station tos1 ON ts1.id_time_of_station = tos1.id_time_of_station
    JOIN time_of_station tos2 ON ts2.id_time_of_station = tos2.id_time_of_station
    WHERE DATE(tos1.time_train_in_station) = CURDATE()  
       OR DATE(tos2.time_train_in_station) = CURDATE(); 
""");
        PreparedStatement ps;
        try {
            ps = connect.prepareStatement(sql.toString());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                trips.add(new TripDTO(
                        rs.getInt("id_trip"),
                        rs.getString("start_station"),
                        rs.getString("end_station"),
                        rs.getString("name_train"),
                        rs.getObject("start_time", LocalTime.class),
                        rs.getObject("end_time", LocalTime.class),
                        rs.getDouble("price_trip") // Lấy thêm giá vé
                ));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return trips;
    }

    public List<TripDTO> searchTrips(String id_station_start, String id_station_end, String train_brand) {
        List<TripDTO> trips = new ArrayList<>();
        if (id_station_start != null && !id_station_start.isEmpty() && id_station_end != null && !id_station_end.isEmpty() && Integer.parseInt(id_station_start) > Integer.parseInt(id_station_end)) {
            StringBuilder sql = new StringBuilder("""
    SELECT t.id_trip, 
                   s1.name_station AS start_station, 
                   s2.name_station AS end_station,
                   tr.name_train, 
                   tos1.time_train_in_station AS start_time, 
                   tos2.time_train_in_station AS end_time,
                   t.price_trip  
            FROM trip t
            JOIN time_station ts1 ON t.id_time_station_start = ts1.id_time_station
            JOIN time_station ts2 ON t.id_time_station_end = ts2.id_time_station
            JOIN station s1 ON ts1.id_station = 38-s1.id_station
            JOIN station s2 ON ts2.id_station = 38-s2.id_station
            JOIN train tr ON t.id_train = tr.id_train
            JOIN time_of_station tos1 ON ts1.id_time_of_station = tos1.id_time_of_station 
            JOIN time_of_station tos2 ON ts2.id_time_of_station = tos2.id_time_of_station
            WHERE 1 = 1
""");
            List<Object> params = new ArrayList<>();

            // Nếu có id_station_start
            if (id_station_start != null && !id_station_start.isEmpty()) {
                sql.append(" AND ts1.id_station = ?");
                params.add(38 - Integer.parseInt(id_station_start));
            }

            // Nếu có id_station_end
            if (id_station_end != null && !id_station_end.isEmpty()) {
                sql.append(" AND ts2.id_station = ?");
                params.add(38 - Integer.parseInt(id_station_end));
            }

            if (train_brand != null && !train_brand.trim().isEmpty()) {
                sql.append(" AND tr.name_train LIKE ?");
                params.add("%" + train_brand + "%");
            }

            try (PreparedStatement ps = connect.prepareStatement(sql.toString())) {
                for (int i = 0; i < params.size(); i++) {
                    if (params.get(i) instanceof Integer) {
                        ps.setInt(i + 1, (Integer) params.get(i));
                    } else if (params.get(i) instanceof String) {
                        ps.setString(i + 1, (String) params.get(i));
                    }
                }

                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    trips.add(new TripDTO(
                            rs.getInt("id_trip"),
                            rs.getString("start_station"),
                            rs.getString("end_station"),
                            rs.getString("name_train"),
                            rs.getObject("start_time", LocalTime.class),
                            rs.getObject("end_time", LocalTime.class),
                            rs.getDouble("price_trip") // Lấy thêm giá vé
                    ));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return trips;
        }
        StringBuilder sql = new StringBuilder("""
    SELECT t.id_trip, 
               s1.name_station AS start_station, 
               s2.name_station AS end_station,
               tr.name_train, 
               tos1.time_train_in_station AS start_time, 
               tos2.time_train_in_station AS end_time,
               t.price_trip  
        FROM trip t
        JOIN time_station ts1 ON t.id_time_station_start = ts1.id_time_station
        JOIN time_station ts2 ON t.id_time_station_end = ts2.id_time_station
        JOIN station s1 ON ts1.id_station = s1.id_station
        JOIN station s2 ON ts2.id_station = s2.id_station
        JOIN train tr ON t.id_train = tr.id_train
        JOIN time_of_station tos1 ON ts1.id_time_of_station = tos1.id_time_of_station
        JOIN time_of_station tos2 ON ts2.id_time_of_station = tos2.id_time_of_station
        WHERE 1 = 1
""");

        List<Object> params = new ArrayList<>();

        // Nếu có id_station_start
        if (id_station_start != null && !id_station_start.isEmpty()) {
            sql.append(" AND ts1.id_station = ?");
            params.add(Integer.parseInt(id_station_start));
        }

        // Nếu có id_station_end
        if (id_station_end != null && !id_station_end.isEmpty()) {
            sql.append(" AND ts2.id_station = ?");
            params.add(Integer.parseInt(id_station_end));
        }

// Nếu có train_brand
        if (train_brand != null && !train_brand.trim().isEmpty()) {
            sql.append(" AND tr.name_train LIKE ?");
            params.add("%" + train_brand + "%");
        }

        try (PreparedStatement ps = connect.prepareStatement(sql.toString())) {
            for (int i = 0; i < params.size(); i++) {
                if (params.get(i) instanceof Integer) {
                    ps.setInt(i + 1, (Integer) params.get(i));
                } else if (params.get(i) instanceof String) {
                    ps.setString(i + 1, (String) params.get(i));
                }
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                trips.add(new TripDTO(
                        rs.getInt("id_trip"),
                        rs.getString("start_station"),
                        rs.getString("end_station"),
                        rs.getString("name_train"),
                        rs.getObject("start_time", LocalTime.class),
                        rs.getObject("end_time", LocalTime.class),
                        rs.getDouble("price_trip") // Lấy thêm giá vé
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return trips;
    }

    public int getID_StationByName_station(String stationName) {
        int stationId = -1;  // Mặc định -1, nếu không tìm thấy sẽ trả về -1

        String sql = "SELECT id_station FROM station WHERE name_station = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, stationName);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    stationId = rs.getInt("id_station");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return stationId;
    }

    public List<TripDTO> getListByPage(List<TripDTO> list, int start, int end) {
        ArrayList<TripDTO> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public void insertTrip(int price_trip, int id_time_station_start, int id_time_station_end, int id_train) {
        String sql = "INSERT INTO trip (price_trip, id_time_station_start, id_time_station_end, id_train) VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {

            ps.setInt(1, price_trip);
            ps.setInt(2, id_time_station_start);
            ps.setInt(3, id_time_station_end);
            ps.setInt(4, id_train);

            int rowsInserted = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        TripDAO td = new TripDAO();
//        for(int i = 1; i <38;i++){
//            for(int j = i+1 ; j <38;j++){
//                System.out.println("(0, "+i+","+j+", 1),");
//            }
//        }
//        for(int i = 37; i >0;i--){
//            for(int j = i-1 ; j >0;j--){
//                System.out.println("(0, "+i+","+j+", 1),");
//            }
//        }
//        for (int j = 1; j < 29; j++) {
//            for (int i = 1; i < 1133; i++) {
//                System.out.println("(" + i + "," + j + "),");
//
//            }
//        }
    }
}
