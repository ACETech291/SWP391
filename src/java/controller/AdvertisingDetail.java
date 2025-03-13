package controller;

import dal.AdvertisingDAO;
import dal.FeedbackDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Advertising;
import java.util.List;
import model.Feedback;
/**
 *
 * @author hiepg
 */
public class AdvertisingDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        
        String id = request.getParameter("id");
        Advertising advertising = advertisingDAO.getAdvertisingById(id);
        request.setAttribute("advertising", advertising);
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        List<Feedback> listFeedbacks = feedbackDAO.getAllFeedback(Integer.parseInt(id));
        request.setAttribute("listFeedbacks", listFeedbacks);
        request.getRequestDispatcher("Views/AdvertisingDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/AdvertisingDetail.jsp").forward(request, response);
    }

}
