package controller;

import dal.AdvertisingDAO;
import dal.FeedbackDAO;
import dal.TrainBrandDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TrainBrand;
import model.Feedback;

public class Advertising extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        List<model.Advertising> listAdvertisings = advertisingDAO.get12Advertising(0);
        List<TrainBrand> brandList = new ArrayList<>();
        try {
            brandList = trainBrandDAO.getAllTrainBrands();
        } catch (SQLException ex) {
            Logger.getLogger(Advertising.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("brandList", brandList);
        request.setAttribute("listAdvertisings", listAdvertisings);
        request.getRequestDispatcher("Views/Advertising.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String sort = request.getParameter("sort");
        String brand = request.getParameter("brand");

        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();

        List<model.Advertising> listAdvertisings = advertisingDAO.filterAdvertising(sort, brand);
        List<TrainBrand> brandList = new ArrayList<>();

        try {
            brandList = trainBrandDAO.getAllTrainBrands();
        } catch (SQLException ex) {
            Logger.getLogger(Advertising.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("brandList", brandList);
        request.setAttribute("listAdvertisings", listAdvertisings);
        request.getRequestDispatcher("Views/Advertising.jsp").forward(request, response);
    }

}
