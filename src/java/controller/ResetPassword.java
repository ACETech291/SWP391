/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.TokenDAO;
import until.EmailService;
import until.EmailService;
import model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.TokenForgetPassword;
import until.Encoding;

/**
 *
 * @author Nguyen Ba Hien
 */
public class ResetPassword extends HttpServlet {

    TokenDAO DAOToken = new TokenDAO();
    CustomerDAO DAOUser = new CustomerDAO();

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
            out.println("<title>Servlet ResetPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetPassword at " + request.getContextPath() + "</h1>");
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
        String token = request.getParameter("token");
        HttpSession session = request.getSession();
        if (token != null) {
            TokenForgetPassword tokenForgetPassword = DAOToken.getTokenPassword(token);
            EmailService service = new EmailService();

            if (tokenForgetPassword == null) {
                request.setAttribute("err", "token không hợp lệ");
                request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
                return;
            }
            if (tokenForgetPassword.isIsUsed()) {
                request.setAttribute("err", "token đã được sử dụng");
                request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
                return;
            }
            if (service.isExpireTime(tokenForgetPassword.getExpiryTime())) {
                request.setAttribute("err", "token đã quá thời hạn");
                request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
                return;
            }
            Customer customer = DAOUser.getUserById(tokenForgetPassword.getUserId());
            request.setAttribute("email", customer.getEmail());
            session.setAttribute("token", tokenForgetPassword.getToken());
            request.getRequestDispatcher("Views/ResetPassword.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
        }
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
        String raw_password = request.getParameter("password");
        String password_encode = Encoding.toSHA1(raw_password);
        String confirmPassword = request.getParameter("confirm_password");
        //validate password...
        if (raw_password.length() < 6) {
            request.setAttribute("err", "Mật khẩu phải chứa ít nhất 6 kí tự");
            request.setAttribute("email", email);
            request.getRequestDispatcher("Views/ResetPassword.jsp").forward(request, response);
            return;
        }
        if (!raw_password.equals(confirmPassword)) {
            request.setAttribute("err", "Mật khẩu nhập lại không khớp");
            request.setAttribute("email", email);
            request.getRequestDispatcher("Views/ResetPassword.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        String tokenStr = (String) session.getAttribute("token");
        TokenForgetPassword tokenForgetPassword = DAOToken.getTokenPassword(tokenStr);
        //check token is valid, of time, of used
        EmailService service = new EmailService();
        if (tokenForgetPassword == null) {
            request.setAttribute("err", "token invalid");
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
            return;
        }
        if (tokenForgetPassword.isIsUsed()) {
            request.setAttribute("err", "token is used");
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
            return;
        }
        if (service.isExpireTime(tokenForgetPassword.getExpiryTime())) {
            request.setAttribute("err", "token is expiry time");
            request.getRequestDispatcher("Views/EmailPassword.jsp").forward(request, response);
            return;
        }

        //update is used of token
        tokenForgetPassword.setToken(tokenStr);
        tokenForgetPassword.setIsUsed(true);

        DAOUser.updatePassword(email, password_encode);
        DAOToken.updateStatus(tokenForgetPassword);

        //save user in session and redirect to home
        request.setAttribute("success", "Bạn đã xác nhận mật khẩu thành công");
        request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
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
