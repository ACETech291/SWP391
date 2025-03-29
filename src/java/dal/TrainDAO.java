package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Train;
import java.sql.Types;

public class TrainDAO {

    private Connection connect;

    public TrainDAO() {
        this.connect = DBConnect.MySQLConnect();
        System.out.println("TRAIN DAO");
        if (this.connect == null) {
            System.err.println("Database connection failed!");
        }
    }

    public List<Train> getAllTrains() {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train";
        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
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
        String sql = "INSERT INTO train (name_train, image_train, description_train, content, id_train_brand, id_status) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
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

    public List<Train> getTrainsByBrand(int trainBrandId) throws SQLException {
        List<Train> trains = new ArrayList<>();
        String query = "SELECT * FROM train WHERE id_train_brand = ?";

        try (PreparedStatement ps = connect.prepareStatement(query)) {
            ps.setInt(1, trainBrandId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Train train = new Train();
                train.setId_train(rs.getInt("id_train"));
                train.setName_train(rs.getString("name_train"));
                train.setImage_train(rs.getString("image_train"));
                train.setDescription_train(rs.getString("description_train"));
                train.setContent(rs.getString("content"));
                train.setId_train_brand(rs.getInt("id_train_brand"));
                train.setId_status(rs.getInt("id_status"));
                trains.add(train);
            }
        }
        return trains;
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
            System.out.println("UPDATE TRAIN ID: " + train.getId_train());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateTrain1(Train train) {
        String sql = "UPDATE train SET name_train = ?, image_train = ?, description_train = ?, content = ?, id_status = ? WHERE id_train = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setString(1, train.getName_train());
            ps.setString(2, train.getImage_train());
            ps.setString(3, train.getDescription_train());
            ps.setString(4, train.getContent());
            ps.setInt(5, train.getId_status());
            ps.setInt(6, train.getId_train());
            ps.executeUpdate();
            System.out.println("UPDATE TRAIN ID: " + train.getId_train());
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
        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
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
        try (PreparedStatement ps = connect.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
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

    public List<Train> getTrainByFilter(Integer id_train_brand, Integer id_status) {
        List<Train> listTrains = new ArrayList<>();
        String sql = "SELECT * FROM train WHERE id_train_brand = ? AND (id_status = ? OR ? IS NULL)";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, id_train_brand);
            if (id_status != null) {
                ps.setInt(2, id_status);
                ps.setInt(3, id_status);
            } else {
                ps.setNull(2, Types.INTEGER);
                ps.setNull(3, Types.INTEGER);
            }
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
    public String getNameTrainById(int id_train){
        String sql = "SELECT name_train FROM train WHERE train.id_train = ?";
        String res = null;
        try {
            PreparedStatement ps = connect.prepareStatement(sql);
            ps.setInt(1, id_train);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                res = rs.getString("name_train");
            }
        } catch (SQLException e) {
        }
        return res;
    }
    public static void main(String[] args) {
        TrainDAO trainDAO = new TrainDAO();
        List<Train> lst = trainDAO.getNext4Stations(0);
        for (Train train : lst) {
            System.out.println(train);
        }
    }

}
