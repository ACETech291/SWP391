package controller.manager;

import dal.CommentDAO;
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

public class DeleteComment extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("Views/Manager/CommentManagement.jsp").forward(request, response);
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Nhận id_train từ request
            int id_comment = Integer.parseInt(request.getParameter("id_comment"));

            // Gọi DAO để xóa tàu
            CommentDAO dao = new CommentDAO();
            dao.disableComment(id_comment);
            response.sendRedirect("CommentManagement");
        } catch (Exception e) {
            response.sendRedirect("Manager?message=error");
        }
    }
}
