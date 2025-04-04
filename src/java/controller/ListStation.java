package controller;

import dal.IntroductionDAO;
import dal.PolicyDAO;
import dal.StationDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;
import model.Station;

public class ListStation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StationDAO stationDAO = new StationDAO();
        List<Station> listStation = stationDAO.getNext6Stations(0);  
                PolicyDAO policyDAO = new PolicyDAO();
        IntroductionDAO introductionDAO = new IntroductionDAO();
        request.setAttribute("policy",policyDAO.getLastPolicy().getContent());
        request.setAttribute("introduction", introductionDAO.getLastIntroduction().getContent());
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
