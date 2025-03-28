package controller.manager;

import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class TrainManagement extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Views/Manager/TrainManagement.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idStatusStr = request.getParameter("id_status");
        String idTrainBrandStr = request.getParameter("id_train_brand");

        Integer id_status = (idStatusStr != null && !idStatusStr.isEmpty()) ? Integer.parseInt(idStatusStr) : null;
        Integer id_train_brand = (idTrainBrandStr != null && !idTrainBrandStr.isEmpty()) ? Integer.parseInt(idTrainBrandStr) : null;

        if (id_status != null && id_train_brand != null) {
            TrainDAO dao = new TrainDAO();
            List<Train> trainsbyfilter = dao.getTrainByFilter(id_train_brand, id_status);
            request.setAttribute("trainsbyfilter", trainsbyfilter);
        }

        request.getRequestDispatcher("Views/Manager/TrainManagement.jsp").forward(request, response);
    }
}
