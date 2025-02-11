/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.TokenDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import until.EmailService;
import model.Customer;
import model.TokenForgetPassword;

/**
 *
 * @author Nguyen Ba Hien
 */
public class SendEmail extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-16");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SendEmail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SendEmail at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        TokenDAO tokenDao = new TokenDAO();
        CustomerDAO customerDAO = new CustomerDAO();
        Customer customer = customerDAO.getCustomerByEmail(email);
        if (customer != null) {
            EmailService emailService = new EmailService();
            String token = emailService.generateToken();
            String linkResetPassword = "http://localhost:8080/SWP391/ResetPassword?token=" + token;
            System.out.println("token:" + token);
            System.out.println("customer:" + customer);
            TokenForgetPassword newTokenForgetPassword = new TokenForgetPassword(customer.getId_customer(), false, token, emailService.expireDateTime());
            boolean isInsert = tokenDao.insertTokenForget(newTokenForgetPassword);

            if (!isInsert) {
                request.setAttribute("err", "Have error in server");
                request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
                return;
            }
            String content = "<a href=" + linkResetPassword + ">Bấm vào đây</a></p>";

            EmailService.sendEmail(email, "Reset password -" + System.currentTimeMillis(), content);

            request.setAttribute("success", "Gửi email thành công,vui lòng kiểm tra email");
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
        } else {
            request.setAttribute("err", "Tài khoản email không tồn tại");
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
        }
        request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
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
