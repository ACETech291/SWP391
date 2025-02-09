package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    public static Connection MySQLConnect() {
        // Database credentials and URL
        String DB_URL = "jdbc:mysql://localhost:3306/swp391"; // This is the name of database
        String DB_USER = "root"; // Replace with your MySQL username
        String DB_PASSWORD = "sasasa"; // Replace with your MySQL password

        Connection connection = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            System.out.println("Connection to database successful!");

        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Failed to connect to the database!");
            e.printStackTrace();
        }

        return connection;
    }
}
