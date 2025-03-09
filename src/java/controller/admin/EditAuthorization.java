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
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Authorization;
import model.Role;

/**
 *
 * @author Nguyen Ba Hien
 */
public class EditAuthorization extends HttpServlet {

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
            out.println("<title>Servlet DeleteAuthorization</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteAuthorization at " + request.getContextPath() + "</h1>");
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
        AuthorizationDAO authorizationDAO = new AuthorizationDAO();
        RoleDAO roleDAO = new RoleDAO();
        List<Role> roleList = roleDAO.getAllRoles();
        
        String idParam = request.getParameter("id");
        if (idParam == null || idParam.isEmpty()) {
            response.sendRedirect("AuthorizationManagement");
            return;
        }

        int id;
        try {
            id = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            response.sendRedirect("AuthorizationManagement");
            return;
        }

        // Lấy thông tin phân quyền từ DB
        Authorization authorization = authorizationDAO.getAuthorizationById(id);
        if (authorization == null) {
            response.sendRedirect("AuthorizationManagement");
            return;
        }

        // Gửi dữ liệu đến trang JSP


        request.setAttribute("roleList", roleList);
        request.setAttribute("authorization", authorization);
        request.getRequestDispatcher("Views/Admin/EditAuthorization.jsp").forward(request, response);
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
        AuthorizationDAO authDAO = new AuthorizationDAO();
        int id_authorization = Integer.parseInt(request.getParameter("id_authorization"));
        int role_id = Integer.parseInt(request.getParameter("role_id"));
        String url_authorization = request.getParameter("url_authorization");
        String feature_authorization = request.getParameter("feature_authorization");
        boolean updateSuccess = false;
        // Tạo đối tượng Authorization với dữ liệu mới
        Authorization updatedAuth = new Authorization(id_authorization, role_id, url_authorization, feature_authorization,1);

        // Gọi DAO để cập nhật vào database
        if(!authDAO.authorizationCheck(role_id, url_authorization)){
         updateSuccess = authDAO.updateAuthorization(id_authorization, role_id, url_authorization, feature_authorization);
        }
        if (updateSuccess) {
            // Nếu cập nhật thành công, quay về trang danh sách
            HttpSession session = request.getSession();
            session.setAttribute("hihi", "Cập nhật thành công");
            request.getRequestDispatcher("AuthorizationManagement").forward(request, response);
        } else {
            // Nếu có lỗi, quay lại trang sửa với thông báo lỗi
            request.setAttribute("errorMessage", "Phân quyền đã tồn tại!");
            request.setAttribute("authorization", updatedAuth); // Giữ lại dữ liệu để hiển thị lại
            RoleDAO roleDAO = new RoleDAO();
            List<Role> roleList = roleDAO.getAllRoles();
            request.setAttribute("roleList", roleList);
            request.getRequestDispatcher("Views/Admin/EditAuthorization.jsp").forward(request, response);
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
