package controller;

import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Train;
import model.TripDTO;

public class ListTrain extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        TrainDAO trainDAO = new TrainDAO();
        
        List<Train> list1 = trainDAO.getAllTrains();
        int size = list1.size();
        int page;
        int numberPerPage = 3;
        int num = (size%numberPerPage == 0?size/numberPerPage:size/numberPerPage+1);
        String xPage = request.getParameter("page");
        if(xPage == null){
            page = 1;
        }else{
            page = Integer.parseInt(xPage);
        }
        int start = (page-1)*numberPerPage;
        int end = Math.min(page*numberPerPage, size);
        List<Train> trains = trainDAO.getListByPage(list1, start, end);
        request.setAttribute("trains", trains);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/ListTrain.jsp").forward(request, response);
    }

}
