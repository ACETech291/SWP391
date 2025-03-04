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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Status;
import model.Train;
import model.TrainBrand;

/**
 *
 * @author dinhphu
 */
public class Manager extends HttpServlet {
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
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        TrainDAO tDAO = new TrainDAO();
        List<Train> topTrains = tDAO.getTopTrains(10);
        request.setAttribute("topTrains", topTrains);
        
        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
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
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);
        
        TrainDAO tDAO = new TrainDAO();
        List<Train> topTrains = tDAO.getTopTrains(10);
        request.setAttribute("topTrains", topTrains);
        
        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
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
