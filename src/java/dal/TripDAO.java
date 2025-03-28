package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Trip;
import model.TripDTO;
import org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair;

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
//    public List<Trip> getAllTrips() {
//        List<Trip> listTrips = new ArrayList<>();
//        String sql = "SELECT * FROM trip";
//        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
//            while (rs.next()) {
//                listTrips.add(new Trip(
//                        rs.getInt(1), rs.getInt(2), rs.getInt(3),
//                        rs.getTimestamp(4), rs.getTimestamp(5), rs.getInt(6), rs.getInt(7)
//                ));
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return listTrips;
//    }
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
                        rs.getString("time_start_ticket"),
                        rs.getString("time_end_ticket"),
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

    public List<Trip> ListAllTripTrandBrand(int id_train_brand) {
        String sql = """
                    SELECT 
                        dt.id_date_trip,
                        t.name_train,
                        d.date_details AS trip_date,
                        tos_start.time_train_in_station AS time_start,
                        tos_end.time_train_in_station AS time_end,
                        s_start.name_station AS station_from,
                        s_end.name_station AS station_to,
                        tr.price_trip,
                        dt.trip_status
                    FROM Date_trip dt
                    JOIN Date_of_trip d ON dt.id_date_of_trip = d.id_date_of_trip
                    JOIN Trip tr ON dt.id_trip = tr.id_trip
                    JOIN Train t ON tr.id_train = t.id_train
                    JOIN Train_brand tb ON t.id_train_brand = tb.id_train_brand
                    JOIN Time_station ts_start ON tr.id_time_station_start = ts_start.id_time_station
                    JOIN Time_station ts_end ON tr.id_time_station_end = ts_end.id_time_station
                    JOIN Time_of_station tos_start ON ts_start.id_time_of_station = tos_start.id_time_of_station
                    JOIN Time_of_station tos_end ON ts_end.id_time_of_station = tos_end.id_time_of_station
                    JOIN Station s_start ON ts_start.id_station = s_start.id_station
                    JOIN Station s_end ON ts_end.id_station = s_end.id_station
                    WHERE tb.id_train_brand = ?
                    LIMIT 100;
                     """;
        PreparedStatement ps;
        List<Trip> list = new ArrayList<>();
        try {
            ps = connect.prepareStatement(sql);
            ps.setInt(1, id_train_brand);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Trip t = new Trip();

                t.setId_trip(rs.getInt("id_date_trip"));
                t.setName_train(rs.getString("name_train"));
                t.setTime_start_ticket(rs.getString("time_start"));
                t.setTime_end_ticket(rs.getString("time_end"));
                t.setName_station_start(rs.getString("station_from"));
                t.setName_station_end(rs.getString("station_to"));
                t.setPrice_trip(rs.getFloat("price_trip"));
                t.setDate_trip(rs.getString("trip_date"));
                t.setTrip_status(rs.getInt("trip_status"));
                list.add(t);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void disableTrip(int id_trip) throws SQLException {
        String sql = """
                    UPDATE Date_trip 
                    SET trip_status = 1 
                    WHERE id_date_trip = ?
                     """;

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);
            int affectedRows = ps.executeUpdate();

            if (affectedRows == 0) {
                System.out.println("⚠ Không có chuyến nào được cập nhật! Kiểm tra id_trip: " + id_trip);
            } else {
                System.out.println("✔ Đã cập nhật trạng thái của chuyến có id: " + id_trip);
            }
        } catch (SQLException e) {
            System.err.println("❌ Lỗi khi cập nhật trạng thái chuyến: " + e.getMessage());
            throw e; // Ném lại lỗi để xử lý ở lớp gọi phương thức này
        }
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

    // GET NAME TRAIN BY TRIP ID
    public String getNameTrainByTripID(int id_trip) {
        String name_train = "";
        String sql = """
                     SELECT name_train FROM train, trip
                     WHERE train.id_train = trip.id_train AND trip.id_trip = ? """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    name_train = rs.getString("name_train");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name_train;
    }

    public String getNameStationStart(int id_trip) {
        String name_station_start = "";
        String sql = """
                     SELECT name_station 
                     FROM station s, trip t,time_station ts
                     WHERE t.id_time_station_start = ts.id_time_station 
                     AND ts.id_station = s.id_station
                     AND t.id_trip = ? """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    name_station_start = rs.getString("name_station");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name_station_start;
    }

    public String getNameStationEnd(int id_trip) {
        String name_station_start = "";
        String sql = """
                     SELECT name_station 
                     FROM station s, trip t,time_station ts
                     WHERE t.id_time_station_end = ts.id_time_station 
                     AND ts.id_station = s.id_station
                     AND t.id_trip = ? """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    name_station_start = rs.getString("name_station");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name_station_start;
    }

    public String getNameTrainBrand(int id_trip) {
        String name_train_brand = "";
        String sql = """
                     SELECT name_train_brand FROM train tn, trip tp, train_brand td
                     WHERE tn.id_train = tp.id_train 
                     AND tn.id_train_brand = td.id_train_brand
                     AND tp.id_trip = ? """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    name_train_brand = rs.getString("name_train_brand");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name_train_brand;
    }

    public List<Pair<Pair<Integer, Integer>, String>> getNameTrainCarriage(int id_trip) {
        List<Pair<Pair<Integer, Integer>, String>> res = new ArrayList<>();
        String sql = """
                     SELECT name_train_carriage,id_train_carriage,total_seat
                     FROM train_carriage, trip
                     WHERE trip.id_train = train_carriage.id_train
                     AND trip.id_trip = ? """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String name = rs.getString("name_train_carriage");
                    Integer id_train_carriage = rs.getInt("id_train_carriage");
                    Integer total_seat = rs.getInt("total_seat");
                    res.add(Pair.of(Pair.of(id_train_carriage, total_seat), name));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public ArrayList<String> getNameTrainAndBrand(int id_trip) {
        ArrayList<String> res = new ArrayList<>();
        String sql = " SELECT train.name_train, train_brand.name_train_brand\n"
                + "FROM trip, train, train_brand\n"
                + "WHERE trip.id_train = train.id_train\n"
                + "AND train.id_train_brand = train_brand.id_train_brand\n"
                + "AND trip.id_trip = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String name_train = rs.getString("name_train");
                    String name_train_brand = rs.getString("name_train_brand");
                    res.add(name_train);
                    res.add(name_train_brand);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
    
    public int getPriceTripFromTripID(int id_trip){
        String sql = " Select * from trip where id_trip = ? ";
        int res = 0;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    res = rs.getInt("price_trip");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
    public int getIdTrainByIdTrip(int id_trip){
        String sql = " Select * from trip where id_trip = ? ";
        int res = 0;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_trip);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    res = rs.getInt("id_train");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
    public static void main(String[] args) {
        TripDAO td = new TripDAO();
        System.out.println(td.getIdTrainByIdTrip(10));
    }
}
