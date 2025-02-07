package dal;

import java.sql.*;

public class TestConnection {

    public static void main(String[] args) {
        Connection conn = DBConnect.MySQLConnect();
        if (conn != null) {
            System.out.println("Database connected successfully!");
        } else {
            System.out.println("Failed to connect to database!");
        }
    }
}
