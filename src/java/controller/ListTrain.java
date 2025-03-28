package controller;

import dal.TrainBrandDAO;
import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Train;
import model.TrainBrand;
import model.TripDTO;

public class ListTrain extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        TrainDAO trainDAO = new TrainDAO();
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        List<TrainBrand> brandList = null;
        try {
             brandList = trainBrandDAO.getAllTrainBrands();
        } catch (SQLException ex) {
            Logger.getLogger(ListTrain.class.getName()).log(Level.SEVERE, null, ex);
        }
        List<Train> trains = trainDAO.getNext4Stations(0);
        request.setAttribute("trains", trains);
        request.setAttribute("brandList", brandList);
        request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
    }

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String choose = request.getParameter("choose");

    TrainDAO trainDAO = new TrainDAO();
    TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
    
    List<TrainBrand> brandList = null;
    List<Train> trains = new ArrayList<>();

    try {
        brandList = trainBrandDAO.getAllTrainBrands();
        
        if (choose == null || choose.equals("all")) {
            // Nếu chọn "Chọn hãng theo" hoặc "all", lấy toàn bộ danh sách
            trains = trainDAO.getNext4Stations(0);
        } else {
            // Nếu chọn hãng cụ thể, lọc danh sách theo hãng đó
            trains = trainDAO.getTrainsByBrand(Integer.parseInt(choose));
        }
    } catch (SQLException ex) {
        Logger.getLogger(ListTrain.class.getName()).log(Level.SEVERE, null, ex);
    }

    request.setAttribute("trains", trains);
    request.setAttribute("brandList", brandList);
    request.setAttribute("selectedBrand", choose); // Lưu giá trị đã chọn

    request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
}

}
