package controller;

import dal.StationDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Station;

public class ListStation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StationDAO stationDAO = new StationDAO();
        List<Station> listStation = stationDAO.getAllStations();
        request.setAttribute("listStation", listStation);
        request.getRequestDispatcher("Views/ListStation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/ListStation.jsp").forward(request, response);
    }

}
