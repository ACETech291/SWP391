/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.TripDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair;

/**
 *
 * @author MinhHieuPham
 */
public class ChooseSeat extends HttpServlet {

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
            out.println("<title>Servlet ChooseSeat</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChooseSeat at " + request.getContextPath() + "</h1>");
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
        String xId_trip = request.getParameter("id_trip");
        int id_trip = Integer.parseInt(xId_trip);
        TripDAO td = new TripDAO();
        String name_train = td.getNameTrainByTripID(id_trip);
        String name_station_start = td.getNameStationStart(id_trip);
        String name_station_end = td.getNameStationEnd(id_trip);
        String name_train_brand = td.getNameTrainBrand(id_trip);
        String end_time = request.getParameter("end_time");
        String date = request.getParameter("date");
        String start_time = request.getParameter("start_time");
        String time_date_start = date + " " + start_time;
        List<Pair<Pair<Integer,Integer>,String> > name_train_carriage = td.getNameTrainCarriage(id_trip);
        request.setAttribute("date", date);
        request.setAttribute("name_train_carriage", name_train_carriage);
        request.setAttribute("name_train", name_train);
        request.setAttribute("name_station_start", name_station_start);
        request.setAttribute("name_station_end", name_station_end);
        request.setAttribute("name_train_brand", name_train_brand);
        request.setAttribute("time_date_start", time_date_start);
        request.setAttribute("id_trip", id_trip);
        request.setAttribute("start_time", start_time);
        request.setAttribute("end_time", end_time);
        request.getRequestDispatcher("Views/ChooseSeat.jsp").forward(request, response);
        
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
