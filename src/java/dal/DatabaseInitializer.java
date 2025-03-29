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
//        System.out.println("Initializing database...");
//        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Create.ddl.sql");
//        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql");
//        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertCustomer.ddl.sql");
//        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertTicket.ddl.sql");
//        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Important_train_seat.ddl.sql");
//        System.out.println("Database initialized successfully!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application stopped.");
    }
}
