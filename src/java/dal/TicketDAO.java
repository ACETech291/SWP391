package dal;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.Admin;
import model.Ticket;

public class TicketDAO {

    private final Connection connection;

    public TicketDAO() {
        this.connection = DBConnect.MySQLConnect();

        if (this.connection == null) {
            System.out.println("Database connection failed!");
        }
    }

    public void insertTicketToDataBase(Ticket t) {
        System.out.println(t);
        LocalDateTime bookingTime = t.getBooking_time_ticket();
        Timestamp sqlTimestamp = Timestamp.valueOf(bookingTime);
        String sql = """
                      INSERT INTO ticket (name_ticket,booking_time_ticket,id_date_trip,id_customer,id_train_seat,total_bill)
                     VALUE (?,?,?,?,?,?)  """;

        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, t.getName_ticket());

            preparedStatement.setTimestamp(2, sqlTimestamp);
            preparedStatement.setInt(3, t.getId_date_trip());
            preparedStatement.setInt(4, t.getId_customer());
            preparedStatement.setInt(5, t.getId_train_seat());
            preparedStatement.setDouble(6, t.getTotal_bill());
            preparedStatement.executeUpdate();
            System.out.println("SUCCESS");
        } catch (SQLException e) {
        }
    }

    public void updateStatusTicket(int id_ticket, String status) {
        String query = " UPDATE Ticket SET status = ? WHERE id_ticket = ? ";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, status);
            preparedStatement.setInt(2, id_ticket);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public int getNumberOfTicket() {
        int val = -1;
        String query = " Select count(*) as total from ticket ";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                val = rs.getInt("total");
            }

        } catch (SQLException e) {
        }
        return val;
    }

    public List<Integer> getCodeTrainSeat(int id_train, int id_train_carriage) {
        List<Integer> res = new ArrayList<>();
        String sql = "SELECT code_train_seat FROM ticket,train_seat WHERE status = 'Completed' AND ticket.id_train_seat = train_seat.id_train_seat order by ticket.id_ticket ASC ";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String val = rs.getString("code_train_seat");
                String[] token = val.split(" - ");
                if (Integer.parseInt(token[0]) == id_train && Integer.parseInt(token[1]) == id_train_carriage) {
                    res.add(Integer.valueOf(token[2]));
                }
            }

        } catch (SQLException e) {
        }
        return res;
    }

    public List<String> getStartDate(int id_train, int id_train_carriage) {
        List<String> start = new ArrayList<>();
        String sql = """
                     SELECT code_train_seat, time_train_in_station FROM ticket, date_trip, trip, time_station, time_of_station, train_seat
                     where ticket.id_date_trip = date_trip.id_date_trip AND status = 'Completed' AND date_trip.id_trip = trip.id_trip 
                     AND trip.id_time_station_start = time_station.id_time_station AND time_station.id_time_of_station = time_of_station.id_time_of_station AND ticket.id_train_seat = train_seat.id_train_seat
                     ORDER BY ticket.id_ticket ASC
                     """;
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String code_train_seat = rs.getString("code_train_seat");
                String[] token = code_train_seat.split(" - ");
                if (Integer.parseInt(token[0]) == id_train && Integer.parseInt(token[1]) == id_train_carriage) {
                    String sqlTime = rs.getString("time_train_in_station");
                    LocalTime time = LocalTime.parse(sqlTime); // Chuyển thành LocalTime
                    String formattedTime = time.format(DateTimeFormatter.ofPattern("HH:mm")); // Chỉ lấy giờ:phút
                    start.add(formattedTime);
                }
            }

        } catch (SQLException e) {
        }
        return start;
    }
     public List<String> getEndDate(int id_train, int id_train_carriage) {
        List<String> start = new ArrayList<>();
        String sql = """
                     SELECT code_train_seat, time_train_in_station FROM ticket, date_trip, trip, time_station, time_of_station, train_seat
                     where ticket.id_date_trip = date_trip.id_date_trip AND status = 'Completed' AND date_trip.id_trip = trip.id_trip 
                     AND trip.id_time_station_end = time_station.id_time_station AND time_station.id_time_of_station = time_of_station.id_time_of_station AND ticket.id_train_seat = train_seat.id_train_seat
                     ORDER BY ticket.id_ticket ASC
                     """;
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String code_train_seat = rs.getString("code_train_seat");
                String[] token = code_train_seat.split(" - ");
                if (Integer.parseInt(token[0]) == id_train && Integer.parseInt(token[1]) == id_train_carriage) {
                    String sqlTime = rs.getString("time_train_in_station");
                    LocalTime time = LocalTime.parse(sqlTime); // Chuyển thành LocalTime
                    String formattedTime = time.format(DateTimeFormatter.ofPattern("HH:mm")); // Chỉ lấy giờ:phút
                    start.add(formattedTime);
                }
            }

        } catch (SQLException e) {
        }
        return start;
    }
    public static void main(String[] args) {

        LocalDateTime dateTime = LocalDateTime.parse("2025-01-01T00:00:00");
        TicketDAO td = new TicketDAO();
        td.updateStatusTicket(202, "Completed");
        //td.insertTicketToDataBase(new Ticket("kaka", dateTime, 1, 2, 3, 150));
    }
}
