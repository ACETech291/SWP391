/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.http.HttpServlet;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import model.SQLUpdate;
import model.Station;

/**
 *
 * @author Nguyen Ba Hien
 */
public class StationDAO extends HttpServlet {

    public void insertDatabase(SQLUpdate x) {
        String add = x.toSQLUpdate();

        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true); BufferedWriter bufferedWriter = new BufferedWriter(writer)) {

            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm dòng vào file thành công!");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private final Connection connection;

    public StationDAO() {
        this.connection = DBConnect.MySQLConnect();
        System.out.println("STATION");// Gán kết nối vào biến connect
        if (this.connection == null) {
            System.err.println("Database connection failed!8");
        }
    }

    public boolean insertStation(Station station) {
        String sql = "INSERT INTO Station (name_station, image_station, description_station,content) VALUES ( ?, ?, ?,?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, station.getName_station());
            stmt.setString(2, station.getImage_station());  // Lưu đường dẫn ảnh dưới dạng chuỗi
            stmt.setString(3, station.getDescription_station());
            stmt.setString(4, station.getContent());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Station getStationById(int id) {
        String sql = "SELECT * FROM Station WHERE id_station = ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new Station(
                        rs.getInt("id_station"),
                        rs.getString("name_station"),
                        rs.getString("image_station"),
                        rs.getString("description_station"),
                        rs.getString("content")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Station> searchStationByName(String name) {
        String sql = "SELECT * FROM Station WHERE name_station LIKE ?";
        List<Station> stations = new ArrayList<>();

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, "%" + name + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                stations.add(new Station(
                        rs.getInt("id_station"),
                        rs.getString("name_station"),
                        rs.getString("image_station"),
                        rs.getString("description_station"),
                        rs.getString("content")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return stations;
    }

    public boolean updateStationImage(int stationId, String newImagePath) {
        String sql = "UPDATE Station SET image_station = ? WHERE id_station = ?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, newImagePath);
            stmt.setInt(2, stationId);

            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Station> getAllStations() {
        List<Station> listStations = new ArrayList<Station>();
        String sql = "select * from station";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listStations.add(new Station(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
        }
        return listStations;
    }

    public List<Station> getNext6Stations(int amount) {
        List<Station> listStations = new ArrayList<Station>();
        String sql = "SELECT * FROM station ORDER BY id_station LIMIT 6 OFFSET ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, amount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listStations.add(new Station(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
        }
        return listStations;
    }

    public List<Station> getAllStationSortAZ() {
        List<Station> listStations = new ArrayList<Station>();
        String sql = "SELECT * FROM station ORDER BY name_station COLLATE utf8mb4_unicode_ci ASC";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listStations.add(new Station(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
        }
        return listStations;
    }

    public List<Station> getAllStationSortZA() {
        List<Station> listStations = new ArrayList<Station>();
        String sql = "SELECT * FROM station ORDER BY name_station COLLATE utf8mb4_unicode_ci DESC";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                listStations.add(new Station(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
        }
        return listStations;
    }

    public void addStation(Station station) {
        String sql = "INSERT INTO Station (name_station, description_station) VALUES (?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, station.getName_station());
            ps.setString(2, station.getDescription_station());
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateStation(Station station) {
        String sql = "UPDATE Station SET name_station = ?, description_station = ? WHERE id_station = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, station.getName_station());
            ps.setString(2, station.getDescription_station());
            ps.setInt(3, station.getId_station());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteStation(int id_station) {
        String sql = "DELETE FROM Station WHERE id_station = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id_station);
            System.out.println("DELETE STATION BY ID");
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ChangeToDisable(int id) {
        String sql = "UPDATE Station SET status_station = 1 WHERE id_station = ?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}