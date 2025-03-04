/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Profile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();

        Object account = session.getAttribute("account");

        if (account instanceof Admin) {
            Admin admin = (Admin) account;
            request.setAttribute("name", admin.getUsername_admin());
            request.setAttribute("email", admin.getEmail_admin());
            request.setAttribute("account", account);
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
        } else if (account instanceof Manager) {
            Manager manager = (Manager) account;
            request.setAttribute("name", manager.getUsername_manager());
            request.setAttribute("email", manager.getEmail_manager());
            request.setAttribute("account", account);
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
        } else if (account instanceof Customer) {
            Customer user = (Customer) account;
            request.setAttribute("name", user.getUserName());
            request.setAttribute("email", user.getEmail());
            request.setAttribute("phone", user.getPhoneNumber());
            request.setAttribute("account", account);
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
    }

}
