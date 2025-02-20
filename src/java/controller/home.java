/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dal.StationDAO;
import dal.TrainDAO;
import java.util.List;
import model.Station;
import model.Train;

/**
 *
 * @author Nguyen Ba Hien
 */
public class home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        StationDAO stationDAO = new StationDAO();
        TrainDAO trainDAO = new TrainDAO();

        List<Train> trains = trainDAO.getAllTrains();
        List<Station> listStation = stationDAO.getAllStations();

        request.setAttribute("listStation", listStation);
        request.setAttribute("trains", trains);

        request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
    }

}
