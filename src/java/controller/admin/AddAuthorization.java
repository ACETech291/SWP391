/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.AuthorizationDAO;
import dal.RoleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Role;

/**
 *
 * @author Nguyen Ba Hien
 */
public class AddAuthorization extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddAuthorization</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddAuthorization at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        RoleDAO roleDAO = new RoleDAO();
        List<Role> roleList = roleDAO.getAllRoles();

        request.setAttribute("roleList", roleList);
        request.getRequestDispatcher("Views/Admin/AddAuthorization.jsp").forward(request, response);
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
        AuthorizationDAO authorizationDAO = new AuthorizationDAO();
        int role_id = Integer.parseInt((String)request.getParameter("role_id"));
        String url_authorization = (String) request.getParameter("url_authorization");
        String feature_authorization = (String) request.getParameter("feature_authorization");
        System.out.println(role_id +" "+url_authorization+" "+feature_authorization);
        RoleDAO roleDAO = new RoleDAO();
        List<Role> roleList = roleDAO.getAllRoles();
        request.setAttribute("roleList", roleList);
        if(!authorizationDAO.authorizationCheck(role_id, url_authorization)){
            request.setAttribute("message", "Phân quyền đã được thành công");
            authorizationDAO.addAuthorization(role_id, url_authorization, feature_authorization, 1);      
            request.getRequestDispatcher("Views/Admin/AddAuthorization.jsp").forward(request, response);
            return;
        }else{
            request.setAttribute("message", "Phân quyền đã tồn tại");
            request.getRequestDispatcher("Views/Admin/AddAuthorization.jsp").forward(request, response);
            return;
        }

        
        
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
