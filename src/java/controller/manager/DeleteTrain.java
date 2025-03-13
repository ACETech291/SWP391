package controller.manager;

import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Status;
import model.Train;

public class DeleteTrain extends HttpServlet {
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        TrainDAO tDAO = new TrainDAO();
        List<Train> topTrains = tDAO.getTopTrains(10);
        request.setAttribute("topTrains", topTrains);

        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Nhận id_train từ request
            int id_train = Integer.parseInt(request.getParameter("id_train"));

            // Gọi DAO để xóa tàu
            TrainDAO trainDAO = new TrainDAO();
            trainDAO.deleteTrain(id_train);

            response.sendRedirect("Manager");
        } catch (Exception e) {
            response.sendRedirect("Manager?message=error");
        }
    }
}
