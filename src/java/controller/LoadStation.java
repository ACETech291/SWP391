/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Station;

/**
 *
 * @author Nguyen Ba Hien
 */
public class LoadStation extends HttpServlet {

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
            StationDAO stationDAO = new StationDAO();
            String xamount = request.getParameter("exists");
            int amount = Integer.parseInt(xamount);
            List<Station> listStation = stationDAO.getNext6Stations(amount);
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            for (Station station : listStation) {
                out.println("<div class=\"station col-lg-4 col-md-6 col-sm-12 mb-4\">\n"
                        + "                                                <div class=\"blog-full\">\n"
                        + "                                                    <div class=\"blog-image\">\n"
                        + "                                                        <a href=\"stationdetail?id=" + station.getId_station() + "\">\n"
                        + "                                                            <div class=\"trend-image\">\n"
                        + "                                                                <img src=\"" + station.getImage_station() + "\" alt=\"" + station.getName_station() + "\">\n"
                        + "                                                            </div>\n"
                        + "                                                        </a>\n"
                        + "                                                    </div> \n"
                        + "                                                    <div class=\"blog-content p-3\">\n"
                        + "                                                        <h4><a href=\"stationdetail?id=" + station.getId_station() + "\">" + station.getName_station() + "</a></h4>\n"
                        + "                                                        <p class=\"mb-2 pink\"><i class=\"fa fa-map-marker mr-1\"></i> " + station.getName_station() + ", Việt Nam</p>\n"
                        + "                                                        <p class=\"mb-2 border-t pt-2\">" + station.getDescription_station() + "</p> \n"
                        + "                                                    </div>\n"
                        + "                                                </div>\n"
                        + "                                            </div>");
            }
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
        PrintWriter out = response.getWriter();
        StationDAO stationDAO = new StationDAO();
        String xamount = request.getParameter("exists");
        int amount = 0;
        try {
            amount = Integer.parseInt(xamount);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        List<Station> listStation = stationDAO.getNext6Stations(amount);
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        for (Station station : listStation) {
            out.println("<div class=\"station col-lg-4 col-md-6 col-sm-12 mb-4\">\n"
                    + "                                                <div class=\"blog-full\">\n"
                    + "                                                    <div class=\"blog-image\">\n"
                    + "                                                        <a href=\"stationdetail?id=" + station.getId_station() + "\">\n"
                    + "                                                            <div class=\"trend-image\">\n"
                    + "                                                                <img src=\"" + station.getImage_station() + "\" alt=\"" + station.getName_station() + "\">\n"
                    + "                                                            </div>\n"
                    + "                                                        </a>\n"
                    + "                                                    </div> \n"
                    + "                                                    <div class=\"blog-content p-3\">\n"
                    + "                                                        <h4><a href=\"stationdetail?id=" + station.getId_station() + "\">" + station.getName_station() + "</a></h4>\n"
                    + "                                                        <p class=\"mb-2 pink\"><i class=\"fa fa-map-marker mr-1\"></i> " + station.getName_station() + ", Việt Nam</p>\n"
                    + "                                                        <p class=\"mb-2 border-t pt-2\">" + station.getDescription_station() + "</p> \n"
                    + "                                                    </div>\n"
                    + "                                                </div>\n"
                    + "                                            </div>");
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
        processRequest(request, response);
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
