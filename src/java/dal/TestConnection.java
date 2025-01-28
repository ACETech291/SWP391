package dal;

import java.sql.*;

public class TestConnection {

    public static void main(String[] args) {
        // Test the connection
        Connection connect = DBConnect.MySQLConnect();
        if (connect != null) {
            try {
                connect.close();
                System.out.println("Connection closed successfully.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
