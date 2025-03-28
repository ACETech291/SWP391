package controller.manager;

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

public class DeleteTrip extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("Views/Manager/TripManagement.jsp").forward(request, response);
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Nhận id_train từ request
            int id_trip = Integer.parseInt(request.getParameter("id_trip"));

            // Gọi DAO để xóa tàu
            TripDAO dao = new TripDAO();
            dao.disableTrip(id_trip);
            response.sendRedirect("TripManagement");
        } catch (Exception e) {
            response.sendRedirect("Manager?message=error");
        }
    }
}
