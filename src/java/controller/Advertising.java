package controller;

import dal.AdvertisingDAO;
import dal.FeedbackDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Feedback;

public class Advertising extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        //List<Feedback> listFeedbacks = feedbackDAO.getAllFeedback();
        List<model.Advertising> listAdvertisings = advertisingDAO.getAllAdvertising();
        request.setAttribute("listAdvertisings", listAdvertisings);
        //request.setAttribute("listFeedbacks", listFeedbacks);
        request.getRequestDispatcher("Views/Advertising.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.getRequestDispatcher("Views/Advertising.jsp").forward(request, response);
    }

}
