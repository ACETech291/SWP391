package controller;

import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Train;

public class TrainDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        TrainDAO trainDAO = new TrainDAO();
        String id = request.getParameter("id");

        Train train = trainDAO.getTrainById(Integer.parseInt(id));
        List<Train> trains = trainDAO.getAllTrainsSameBrand(train.getId_train_brand());

        request.setAttribute("train", train);
        request.setAttribute("trains", trains);
        request.getRequestDispatcher("Views/TrainDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/TrainDetail.jsp").forward(request, response);
    }

}
