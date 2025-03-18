/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.manager;

import dal.StationDAO;
import dal.StatusDAO;
import dal.TrainCarriageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Station;
import model.Status;
import model.TrainCarriage;

/**
 *
 * @author dinhphu
 */
public class EditStation extends HttpServlet {
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
        int id_station = Integer.parseInt(request.getParameter("id"));

        // Lấy thông tin tàu từ database
        StationDAO dao = new StationDAO();
        Station station = dao.getStationById(id_station);

        // Kiểm tra nếu tàu không tồn tại
        if (station == null) {
            response.sendRedirect("Manager?message=station_not_found");
            return;
        }

        // Truyền dữ liệu sang trang JSP
        request.setAttribute("station", station);
        request.getRequestDispatcher("Views/Manager/EditStation.jsp").forward(request, response);
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
        int id_station = Integer.parseInt(request.getParameter("id_station"));
        String name_station = request.getParameter("name_station");
        String description_station = request.getParameter("description_station");

        Station staion = new Station(id_station, name_station, description_station);
        StationDAO dao = new StationDAO();
        dao.updateStation(staion);
        
        response.sendRedirect("staionmanagement");
    }
}
