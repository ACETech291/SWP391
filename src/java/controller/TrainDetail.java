package controller;

import dal.IntroductionDAO;
import dal.PolicyDAO;
import dal.TrainBrandDAO;
import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Train;
import model.TrainBrand;

public class TrainDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        TrainDAO trainDAO = new TrainDAO();
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        String id = request.getParameter("id");
                   PolicyDAO policyDAO = new PolicyDAO();
        IntroductionDAO introductionDAO = new IntroductionDAO();
        request.setAttribute("policy",policyDAO.getLastPolicy().getContent());
        request.setAttribute("introduction", introductionDAO.getLastIntroduction().getContent());
        Train train = trainDAO.getTrainById(Integer.parseInt(id));
        List<Train> trains = trainDAO.getAllTrainsSameBrand(train.getId_train_brand());
        TrainBrand trainBrand = null;
        try {
             trainBrand = trainBrandDAO.getTrainBrandById(train.getId_train_brand());
        } catch (SQLException ex) {
            Logger.getLogger(TrainDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("brand", trainBrand.getName_train_brand());
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
