package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Train;

public class TrainDAO {

    private Connection connect;

    public TrainDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }

    public List<Train> getAllTrains() {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train";
        try (PreparedStatement ps = connect.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                listTrains.add(new Train(
                        rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }
    
    public Train getTrainById(int id) {
        String sql = "SELECT * FROM train WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Train(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addTrain(Train train) throws SQLException {
        String sql = "INSERT INTO train (name_train, image_train, description_train, content, id_train_brand, id_status) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connect.prepareStatement(sql)) {
            stmt.setString(1, train.getName_train());
            stmt.setString(2, train.getImage_train());
            stmt.setString(3, train.getDescription_train());
            stmt.setString(4, train.getContent());
            stmt.setInt(5, train.getId_train_brand());
            stmt.setInt(6, train.getId_status());
            stmt.execute();
        }
    }

    public void updateTrain(Train train) {
        String sql = "UPDATE train SET name_train = ?, image_train = ?, description_train = ?, content = ?, id_train_brand = ?, id_status = ? WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, train.getName_train());
            ps.setString(2, train.getImage_train());
            ps.setString(3, train.getDescription_train());
            ps.setString(4, train.getContent());
            ps.setInt(5, train.getId_train_brand());
            ps.setInt(6, train.getId_status());
            ps.setInt(7, train.getId_train());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteTrain(int id_train) {
        String sql = "DELETE FROM train WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_train);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Train> getAllTrainSortAZ() {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train ORDER BY name_train COLLATE utf8mb4_unicode_ci ASC";
        try (PreparedStatement ps = connect.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }

    public List<Train> getAllTrainSortZA() {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train ORDER BY name_train COLLATE utf8mb4_unicode_ci DESC";
        try (PreparedStatement ps = connect.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }

    public List<Train> getTopTrains(int limit) {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train ORDER BY id_train LIMIT ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }
        public List<Train> getAllTrainsSameBrand(int id) {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train WHERE id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(
                        rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listTrains;
    }
        public List<Train> getNext4Stations(int amount) {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM Train ORDER BY id_train LIMIT 4 OFFSET ?";
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, amount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listTrains.add(new Train(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (SQLException e) {
        }
        return listTrains;
    }
        public static void main(String[] args) {
        TrainDAO trainDAO = new TrainDAO();
        List<Train> lst = trainDAO.getNext4Stations(0);
            for (Train train : lst) {
                System.out.println(train);
            }
    }
        
}
