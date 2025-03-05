/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdvertisingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dal.StationDAO;
import dal.TrainDAO;
import dal.TripDAO;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import model.Station;
import model.Train;
import model.TripDTO;
import model.Advertising;

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
        TripDAO tripDAO = new TripDAO();
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        
        List<Train> trains = trainDAO.getAllTrains();
        List<Station> listStation = stationDAO.getAllStations();
        List<Advertising> listAdvertisings = advertisingDAO.getAllAdvertising();
        
        List<TripDTO> list1 = tripDAO.getAllTripsAtThisDay();
        
        request.setAttribute("listStation", listStation);
        Date currentDate = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = sdf.format(currentDate);
        int size = list1.size();
        int page;
        int numberPerPage = 10;
        int num = (size%numberPerPage == 0?size/numberPerPage:size/numberPerPage+1);
        String xPage = request.getParameter("page");
        if(xPage == null){
            page = 1;
        }else{
            page = Integer.parseInt(xPage);
        }
        int start = (page-1)*numberPerPage;
        int end = Math.min(page*numberPerPage, size);
        List<TripDTO> listTrips = tripDAO.getListByPage(list1, start, end);
        
        
        request.setAttribute("listStation", listStation);
        request.setAttribute("listAdvertisings", listAdvertisings);
        request.setAttribute("trains", trains);
        request.setAttribute("formattedDate", formattedDate);
        request.setAttribute("listTrips", listTrips);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
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
