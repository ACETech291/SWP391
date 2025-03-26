/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import until.Encoding;

/**
 *
 * @author Nguyen Ba Hien
 */
public class ChangePassword extends HttpServlet {

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
            out.println("<title>Servlet ChangePassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassword at " + request.getContextPath() + "</h1>");
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
        String email = (String) request.getParameter("email");
        request.setAttribute("email", email);
        request.getRequestDispatcher("Views/ChangePassword.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        CustomerDAO customerDAO = new CustomerDAO();

        // Kiểm tra đăng nhập
        Customer customer = (Customer) session.getAttribute("account");
        if (customer == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String email = customer.getEmail();
        String currentPassword = request.getParameter("current_password");
        String newPassword = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");

        // Kiểm tra mật khẩu hiện tại có đúng không
        String hashedCurrentPassword = Encoding.toSHA1(currentPassword);
        if (!hashedCurrentPassword.equals(customer.getPassword())) {
            request.setAttribute("err1", "Mật khẩu hiện tại không đúng");
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        }

        // Kiểm tra độ dài mật khẩu mới
        if (newPassword.length() < 6) {
            request.setAttribute("err1", "Mật khẩu mới phải chứa ít nhất 6 kí tự");
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        }

        // Kiểm tra nhập lại mật khẩu mới
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("err1", "Mật khẩu nhập lại không khớp");
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        }

        // Mã hóa mật khẩu mới
        String newPasswordHashed = Encoding.toSHA1(newPassword);
        customerDAO.updatePassword(email, newPasswordHashed);

        // Cập nhật session
        customer.setPassword(newPasswordHashed);
        session.setAttribute("account", customer);

        request.setAttribute("success1", "Đổi mật khẩu thành công");
        request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
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
