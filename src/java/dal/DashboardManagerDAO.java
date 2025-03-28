package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DashboardManagerDAO {

    private Connection connect;

    public DashboardManagerDAO() {
        this.connect = DBConnect.MySQLConnect();
        if (this.connect == null) {
            System.err.println("Database connection failed!14");
        }
    }

    public double getMonthlyRevenueByBrand(int month, int year, int trainBrandId) {
        double revenue = 0;
        String sql = "SELECT SUM(t.price_trip) AS revenue "
                + "FROM Ticket tk "
                + "JOIN Date_trip dt ON tk.id_date_trip = dt.id_date_trip "
                + "JOIN Trip t ON dt.id_trip = t.id_trip "
                + "JOIN Train tr ON t.id_train = tr.id_train "
                + "WHERE MONTH(tk.booking_time_ticket) = ? "
                + "AND YEAR(tk.booking_time_ticket) = ? "
                + "AND tr.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, month);
            ps.setInt(2, year);
            ps.setInt(3, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    revenue = rs.getDouble("revenue");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return revenue;
    }

    public int getTotalTicketsSoldByBrand(int month, int year, int trainBrandId) {
        int total = 0;
        String sql = "SELECT COUNT(*) AS total "
                + "FROM Ticket tk "
                + "JOIN Date_trip dt ON tk.id_date_trip = dt.id_date_trip "
                + "JOIN Trip t ON dt.id_trip = t.id_trip "
                + "JOIN Train tr ON t.id_train = tr.id_train "
                + "WHERE MONTH(tk.booking_time_ticket) = ? "
                + "AND YEAR(tk.booking_time_ticket) = ? "
                + "AND tr.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, month);
            ps.setInt(2, year);
            ps.setInt(3, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    total = rs.getInt("total");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    public int getCanceledTicketsByBrand(int month, int year, int trainBrandId) {
        int canceled = 0;
        String sql = "SELECT COUNT(*) AS canceled "
                + "FROM Ticket tk "
                + "JOIN Date_trip dt ON tk.id_date_trip = dt.id_date_trip "
                + "JOIN Trip t ON dt.id_trip = t.id_trip "
                + "JOIN Train tr ON t.id_train = tr.id_train "
                + "WHERE tk.status_ticket = 0 "
                + "AND MONTH(tk.booking_time_ticket) = ? "
                + "AND YEAR(tk.booking_time_ticket) = ? "
                + "AND tr.id_train_brand = ?";
        try (PreparedStatement ps = connect.prepareStatement(sql)) {
            ps.setInt(1, month);
            ps.setInt(2, year);
            ps.setInt(3, trainBrandId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    canceled = rs.getInt("canceled");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return canceled;
    }

    public List<Double> getMonthlyRevenuesByBrand(int year, int trainBrandId) {
        List<Double> monthlyRevenues = new ArrayList<>();
        for (int month = 1; month <= 12; month++) {
            double revenue = getMonthlyRevenueByBrand(month, year, trainBrandId);
            monthlyRevenues.add(revenue);
        }
        return monthlyRevenues;
    }

    public List<Integer> getMonthlyTicketsByBrand(int year, int trainBrandId) {
        List<Integer> monthlyTickets = new ArrayList<>();
        for (int month = 1; month <= 12; month++) {
            int tickets = getTotalTicketsSoldByBrand(month, year, trainBrandId);
            monthlyTickets.add(tickets);
        }
        return monthlyTickets;
    }

}
