package controller.admin;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ProfileAdmin extends HttpServlet {

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

        request.getRequestDispatcher("Views/Admin/Profile.jsp").forward(request, response);
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

        request.getRequestDispatcher("Views/Admin/Profile.jsp").forward(request, response);
    }

}
