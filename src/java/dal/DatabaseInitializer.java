/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author dinhphu
 */
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class DatabaseInitializer implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Create.ddl.sql";
        System.out.println("Initializing database...");
        DBConnect.executeSQLFile(filePath);
        System.out.println("Database initialized successfully!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application stopped.");
    }
}
