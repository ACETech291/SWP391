package dal;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

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
        } catch (SQLException e) {
            System.err.println("Failed to connect to the database!abc");
        }

        return connection;
    }

    public static void executeSQLFile(String filePath) {
        Connection connection = MySQLConnect();
        if (connection == null) {
            System.err.println("Database connection failed. Cannot execute SQL file.");
            return;
        }

        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(new FileInputStream(filePath), "UTF-8")); Statement stmt = connection.createStatement()) {

            StringBuilder sql = new StringBuilder();
            String line;

            while ((line = br.readLine()) != null) {
                line = line.trim();System.out.println("X");
                // Bỏ qua dòng trống và dòng comment
                if (!line.isEmpty() && !line.startsWith("--")) {
                    sql.append(line);
                    // Khi gặp dấu chấm phẩy, thực thi câu lệnh SQL
                    if (line.endsWith(";")) {
                        stmt.execute(sql.toString());
                        sql.setLength(0); // Reset StringBuilder để đọc câu lệnh tiếp theo
                    }
                }
            }

            System.out.println("SQL script executed successfully!");
        } catch (IOException io) {
            System.err.println("Error reading SQL file.");
            System.out.println(io);
        } catch (SQLException sql) {
            System.err.println("Error executing SQL script.");
            System.out.println(sql);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
    }
}
