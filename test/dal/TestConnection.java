package dal;

import java.sql.*;

public class TestConnection {

    public static void main(String[] args) {
        System.out.println("Test 1");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Create.ddl.sql");
        System.out.println("Test 2");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql");
        System.out.println("Test 3");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertCustomer.ddl.sql");
        
    }
}
