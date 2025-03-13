package controller;

import dal.StationDAO;
import dal.TripDAO;
import model.Station;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.TripDTO;
import java.util.List;

public class StationDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        StationDAO stationDAO = new StationDAO();
        
        String id = request.getParameter("id");      
        Station station = stationDAO.getStationById(Integer.parseInt(id));
        request.setAttribute("station", station);
        request.getRequestDispatcher("Views/StationDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/StationDetail.jsp").forward(request, response);
    }

}
