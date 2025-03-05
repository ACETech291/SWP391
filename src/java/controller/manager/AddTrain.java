/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SQLInsert;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class AddTrain extends HttpServlet {

    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();

        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true); BufferedWriter bufferedWriter = new BufferedWriter(writer)) {
            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm Train vào file thành công! " + x.toString());

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Manager");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name_train");
        String des = request.getParameter("description_train");
        int id_train_brand = Integer.parseInt(request.getParameter("id_train_brand"));
        int id_status = Integer.parseInt(request.getParameter("id_status"));

        Train train = new Train(name, des, id_train_brand, id_status);
        // Thêm tàu vào cơ sở dữ liệu
        TrainDAO trainDAO = new TrainDAO();
        try {
            trainDAO.addTrain(train);
        } catch (SQLException ex) {
            Logger.getLogger(AddTrain.class.getName()).log(Level.SEVERE, null, ex);
        }
        //insertDatabase(train);
       
        response.sendRedirect("Manager");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
