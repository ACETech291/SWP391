/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StationDAO;
import dal.TrainBrandDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Station;
import model.Train;

/**
 *
 * @author Nguyen Ba Hien
 */
public class SortServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet SortServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SortServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        String order = request.getParameter("order");
        if (order.equalsIgnoreCase("2")) {
            StationDAO stationDAO = new StationDAO();
            List<Station> listStation = stationDAO.getAllStationSortAZ();
            request.setAttribute("listStation", listStation);
            request.setAttribute("order", order);
            request.getRequestDispatcher("Views/ListStation.jsp").forward(request, response);

        } else if (order.equalsIgnoreCase("3")) {
            StationDAO stationDAO = new StationDAO();
            List<Station> listStation = stationDAO.getAllStationSortZA();
            request.setAttribute("listStation", listStation);
            request.setAttribute("order", order);
            request.getRequestDispatcher("Views/ListStation.jsp").forward(request, response);

        } else {
            StationDAO stationDAO = new StationDAO();
            List<Station> listStation = stationDAO.getNext6Stations(0);
            request.setAttribute("listStation", listStation);
            request.setAttribute("order", order);
            request.getRequestDispatcher("Views/ListStation.jsp").forward(request, response);
        }
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
        String order = request.getParameter("order");
        if (order.equalsIgnoreCase("2")) {
            TrainDAO trainDAO = new TrainDAO();
            TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
            List<model.TrainBrand> brandList=null;
            try {
                brandList = trainBrandDAO.getAllTrainBrands();
            } catch (SQLException ex) {
                Logger.getLogger(SortServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            List<Train> trains = trainDAO.getAllTrainSortAZ();
            request.setAttribute("trains", trains);
            request.setAttribute("brandList", brandList);
            request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);

        } else if (order.equalsIgnoreCase("3")) {
            String sort = request.getParameter("sort");
            TrainDAO trainDAO = new TrainDAO();
            TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
            List<model.TrainBrand> brandList=null;
            try {
                brandList = trainBrandDAO.getAllTrainBrands();
            } catch (SQLException ex) {
                Logger.getLogger(SortServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            List<Train> trains = trainDAO.getAllTrainSortZA();
            request.setAttribute("trains", trains);
            request.setAttribute("brandList", brandList);
            request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
        } else {
            String sort = request.getParameter("sort");
            TrainDAO trainDAO = new TrainDAO();
            TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
            List<model.TrainBrand> brandList=null;
            try {
                brandList = trainBrandDAO.getAllTrainBrands();
            } catch (SQLException ex) {
                Logger.getLogger(SortServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            List<Train> trains = trainDAO.getNext4Stations(0);
            request.setAttribute("trains", trains);
            request.setAttribute("brandList", brandList);
            request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
        }
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
