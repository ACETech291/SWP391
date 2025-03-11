/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.AuthorizationDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
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

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AuthorizationDAO authorizationDAO = new AuthorizationDAO();
        HttpSession session = request.getSession();
        List<Authorization> list2 = authorizationDAO.getAllAuthorizations();
        String errorMessage = (String)session.getAttribute("hihi");
        int size = list2.size();
        int page;
        int numberPerPage = 20;
        int num = (size % numberPerPage == 0 ? size / numberPerPage : size / numberPerPage + 1);
        String xPage = request.getParameter("page");
        if (xPage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xPage);
        }
        int start = (page - 1) * numberPerPage;
        int end = Math.min(page * numberPerPage, size);
        List<Authorization> authorizationList = authorizationDAO.getListByPage1(list2, start, end);
        request.setAttribute("authorizationList", authorizationList);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.setAttribute("errorMessage", errorMessage);
        session.setAttribute("list2", list2);
        request.getRequestDispatcher("Views/Admin/AuthorizationManagement.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AuthorizationDAO authorizationDAO = new AuthorizationDAO();
        HttpSession session = request.getSession();
        List<Authorization> list2 = authorizationDAO.getAllAuthorizations();

        int size = list2.size();
        int page;
        int numberPerPage = 20;
        int num = (size % numberPerPage == 0 ? size / numberPerPage : size / numberPerPage + 1);
        String xPage = request.getParameter("page");
        if (xPage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xPage);
        }
        int start = (page - 1) * numberPerPage;
        int end = Math.min(page * numberPerPage, size);
        List<Authorization> authorizationList = authorizationDAO.getListByPage1(list2, start, end);
        request.setAttribute("authorizationList", authorizationList);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        session.setAttribute("list2", list2);
        request.getRequestDispatcher("Views/Admin/AuthorizationManagement.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
