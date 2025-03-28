package controller.manager;

import controller.home;
import dal.AdvertisingDAO;
import dal.StationDAO;
import dal.TrainBrandDAO;
import dal.TrainDAO;
import dal.TripDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Station;
import model.Train;
import model.TrainBrand;
import model.Trip;
import model.TripDTO;

/**
 *
 * @author dinhphu
 */
public class TripManagement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("Views/Manager/TripManagement.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                StationDAO stationDAO = new StationDAO();
        request.getRequestDispatcher("Views/Manager/TripManagement.jsp").forward(request, response);
    }

}
