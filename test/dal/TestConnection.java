package dal;

import java.sql.*;

public class TestConnection {

    public static void main(String[] args) {
        DBConnect.MySQLConnect();
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Create.ddl.sql");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertCustomer.ddl.sql");
        DBConnect.executeSQLFile("D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertTicket.ddl.sql");
    }
}
