package controller.admin;

import dal.ManagerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Manager;

public class ManagerList extends HttpServlet {

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

        List<Manager> managers = managerDAO.getAllManager();

        request.setAttribute("managers", managers);

        request.getRequestDispatcher("Views/Admin/ManagerList.jsp").forward(request, response);
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

        request.getRequestDispatcher("Views/Admin/ManagerList.jsp").forward(request, response);
    }

}
