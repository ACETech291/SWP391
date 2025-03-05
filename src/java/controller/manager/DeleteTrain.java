package controller.manager;

import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteTrain extends HttpServlet {

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
