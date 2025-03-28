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
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        List<Feedback> listAllFeedback = feedbackDAO.getAllFeedback(Integer.parseInt(id));
        List<Feedback> listFeedbacks = feedbackDAO.getAllFeedbackVoting(Integer.parseInt(id),5);
        int rating=0;
        for (Feedback listFeedback : listAllFeedback) {
            rating+= listFeedback.getVoting_feedback();
        }
        double result = Double.parseDouble(String.valueOf(rating));
        result = result/listAllFeedback.size();
        result = Math.round(result * 10.0) / 10.0;
        int vote1 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 1);
        int vote2 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 2);
        int vote3 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 3);
        int vote4 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 4);
        int vote5 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 5);
        request.setAttribute("vote1",vote1);
        request.setAttribute("vote2",vote2);
        request.setAttribute("vote3",vote3);
        request.setAttribute("vote4",vote4);
        request.setAttribute("vote5",vote5);
        request.setAttribute("result", result);
        request.setAttribute("advertising", advertising);
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
