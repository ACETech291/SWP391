/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.manager;

import dal.StationDAO;
import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Station;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class AddStation extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddStation</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddStation at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name_station = request.getParameter("name_station");
        String description_station = request.getParameter("description_station");
        
        Station station = new Station(name_station, description_station);
        
        StationDAO dao = new StationDAO();
        dao.addStation(station);
        response.sendRedirect("Manager");
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
