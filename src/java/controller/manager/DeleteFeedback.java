package controller.manager;

import dal.CommentDAO;
import dal.FeedbackDAO;
import dal.StatusDAO;
import dal.TrainDAO;
import dal.TripDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Status;
import model.Train;

public class DeleteFeedback extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("Views/Manager/FeedbackManagement.jsp").forward(request, response);
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Nhận id_train từ request
            int id_Feedback = Integer.parseInt(request.getParameter("id_Feedback"));

            // Gọi DAO để xóa tàu
            FeedbackDAO dao = new FeedbackDAO();
            dao.disableFeedback(id_Feedback);
            response.sendRedirect("FeedbackManagement");
        } catch (Exception e) {
            response.sendRedirect("Manager?message=error");
        }
    }
}
