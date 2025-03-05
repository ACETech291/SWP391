package controller.admin;

import dal.AdminDAO;
import dal.ManagerDAO;
import dal.TrainDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Manager;
import model.Train;

public class Dashboard extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }

        if (session.getAttribute("admin") == null) {
            response.sendRedirect("404");
            return;
        }

        response.setContentType("text/html;charset=UTF-8");

        ManagerDAO managerDAO = new ManagerDAO();
        TrainDAO trainDAO = new TrainDAO();
        AdminDAO adminDAO = new AdminDAO();

        List<Manager> managers = managerDAO.getManagerActive();
        List<Train> trains = trainDAO.getAllTrains();
        int sumManager = adminDAO.getSumManagerActive();
        int sumCustomer = adminDAO.getSumCustomerActive();
        int sumFinance = 0;

        request.setAttribute("managers", managers);
        request.setAttribute("trains", trains);
        request.setAttribute("sumManager", sumManager);
        request.setAttribute("sumCustomer", sumCustomer);
        request.setAttribute("sumFinance", sumFinance);
        request.getRequestDispatcher("Views/Admin/Dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }

        if (session.getAttribute("admin") == null) {
            response.sendRedirect("404");
            return;
        }

        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/Admin/Dashboard.jsp").forward(request, response);
    }
}
