package dal;

import model.TrainSeat;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Train;
import org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair;

/**
 *
 * @author dinhphu
 */
public class TrainSeatDAO {

    private Connection connect;

    public TrainSeatDAO() {
        this.connect = DBConnect.MySQLConnect(); // Gán kết nối vào biến connect
        if (this.connect == null) {
            System.err.println("Database connection failed!2");
        }
    }

    public void addTrainSeat(TrainSeat seat) throws SQLException {
        String sql = "INSERT INTO Train_seat (code_train_seat, price_seat, id_train_carriage, id_status) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, seat.getCode_train_seat());
            ps.setInt(2, seat.getPrice_seat());
            ps.setInt(3, seat.getId_train_carriage());
            ps.setInt(4, seat.getId_status());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<TrainSeat> getSeatsByCarriageId(int idTrainCarriage) throws SQLException {
        List<TrainSeat> seatList = new ArrayList<>();
        String sql = "SELECT * FROM Train_seat WHERE id_train_carriage = ?";

        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, idTrainCarriage);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    TrainSeat seat = new TrainSeat();
                    seat.setId_train_seat(rs.getInt("id_train_seat"));
                    seat.setCode_train_seat(rs.getString("code_train_seat"));
                    seat.setPrice_seat(rs.getInt("price_seat"));
                    seat.setId_train_carriage(rs.getInt("id_train_carriage"));
                    seat.setId_status(rs.getInt("id_status"));
                    seatList.add(seat);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return seatList;
    }

    public List<TrainSeat> getSeatsByTrainBrandId(int trainBrandId) {
        List<TrainSeat> list = new ArrayList<>();
        String query = "SELECT ts.* FROM Train_seat ts "
                + "JOIN Train_carriage tc ON ts.id_train_carriage = tc.id_train_carriage "
                + "JOIN Train t ON tc.id_train = t.id_train "
                + "WHERE t.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    TrainSeat seat = new TrainSeat(
                            rs.getInt("id_train_seat"),
                            rs.getString("code_train_seat"),
                            rs.getInt("price_seat"),
                            rs.getInt("id_train_carriage"),
                            rs.getInt("id_status")
                    );
                    list.add(seat);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public TrainSeat getTrainSeatById(int trainSeatId) {
        String query = "SELECT * FROM Train_seat WHERE id_train_seat = ?";
        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, trainSeatId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new TrainSeat(
                            rs.getInt("id_train_seat"),
                            rs.getString("code_train_seat"),
                            rs.getInt("price_seat"),
                            rs.getInt("id_train_carriage"),
                            rs.getInt("id_status")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateTrainSeat(TrainSeat seat) throws SQLException {
        String sql = "UPDATE Train_seat SET code_train_seat = ?, price_seat = ?, id_train_carriage = ?, id_status = ? WHERE id_train_seat = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, seat.getCode_train_seat());
            ps.setInt(2, seat.getPrice_seat());
            ps.setInt(3, seat.getId_train_carriage());
            ps.setInt(4, seat.getId_status());
            ps.setInt(5, seat.getId_train_seat());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteTrainSeatById(int id_train_seat) throws SQLException {
        String sql = "DELETE FROM Train_seat WHERE id_train_seat = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_train_seat);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Pair<Integer,Integer> > getStatusByIdTrainCarriage(int id_train_carriage){
        List<Pair<Integer,Integer> > ans = new ArrayList<>();
        String sql = """
                     SELECT id_status,price_seat
                     FROM train_seat
                     WHERE id_train_carriage = ?
                     ORDER BY id_train_seat ASC
                     """;
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_train_carriage);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    int val = rs.getInt("id_status");
                    int price = rs.getInt("price_seat");
                    ans.add(Pair.of(val,price));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ans;
    }
    public static void main(String[] args) throws SQLException {
        TrainSeatDAO dao = new TrainSeatDAO();
        TrainSeat seat_by_car = dao.getTrainSeatById(1);
        System.out.println(seat_by_car.getCode_train_seat() + " ====");
    }
}
