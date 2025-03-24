/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.AuthorizationDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Authorization;

/**
 *
 * @author Nguyen Ba Hien
 */
public class AuthorizationManagement extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AuthorizationDAO authorizationDAO = new AuthorizationDAO();
        HttpSession session = request.getSession();
        List<Authorization> authorizationList = authorizationDAO.getAllAuthorizations();
        String errorMessage = (String) session.getAttribute("hihi");
        
        request.setAttribute("errorMessage", errorMessage);
        session.setAttribute("authorizationList", authorizationList);
        request.getRequestDispatcher("Views/Admin/AuthorizationManagement.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
}
