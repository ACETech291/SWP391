package controller.manager;

import dal.RevenueDAO;
import dal.StatusDAO;
import dal.TrainCarriageDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Revenue;
import model.Status;
import model.Train;
import model.TrainBrand;
import model.TrainCarriage;

/**
 *
 * @author dinhphu
 */
public class Manager extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RevenueDAO revenueDAO = new RevenueDAO();
        List<Revenue> revenueList = revenueDAO.getRevenueDayAll();

        request.setAttribute("revenueList", revenueList);

        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RevenueDAO revenueDAO = new RevenueDAO();
        List<Revenue> revenueList = revenueDAO.getRevenueDayAll();

        request.setAttribute("revenueList", revenueList);

        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    }
}
