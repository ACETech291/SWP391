/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Customer;
import model.GoogleAccount;
import until.Encoding;

/**
 *
 * @author Nguyen Ba Hien
 */
public class login extends HttpServlet {

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
            out.println("<title>Servlet login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
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
        String pw = request.getParameter("password");
        String password = Encoding.toSHA1(pw);
        String rem = request.getParameter("remember");
        
        Cookie cookieEmail = new Cookie("cookieEmail", email);
        Cookie cookiePassword =  new Cookie("cookiePassword", pw);
        Cookie cookieRemember = new Cookie("cookieRemember", rem);
        
        if(rem != null){
            cookieEmail.setMaxAge(60*60*24*180);
            cookiePassword.setMaxAge(60*60*24*180);
            cookieRemember.setMaxAge(60*60*24*180);
        }else{
            cookieEmail.setMaxAge(0);
            cookiePassword.setMaxAge(0);
            cookieRemember.setMaxAge(0);
        }
        
        response.addCookie(cookieEmail);
        response.addCookie(cookiePassword);
        response.addCookie(cookieRemember);
        
        CustomerDAO dao = new CustomerDAO();
        List<Customer> listCustomer = dao.getAllCustomer();
        HttpSession session = request.getSession();

        Customer acc = dao.getCustomer(email, password);
        if (acc == null) {
            request.setAttribute(email, "email");
            request.setAttribute("err", "Tài khoản hoặc mật khẩu không chính xác! Xin vui lòng nhập lại.");
            request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
        }else{
        if (acc.getRole().getId()== 1) {
            session.setAttribute("ADMIN", 1);
            session.setAttribute("account", acc);
            System.out.println("Acc " + acc);
            request.getRequestDispatcher("home").forward(request, response);
        }
         if (acc.getRole().getId() == 2) {
            session.setAttribute("Manager", 2);
            session.setAttribute("account", acc);
            System.out.println("Acc " + acc);
            request.getRequestDispatcher("home").forward(request, response);
        }
         if (acc.getRole().getId()== 3) {
            session.setAttribute("Customer", 3);
            session.setAttribute("account", acc);
            System.out.println("Acc " + acc);
            request.getRequestDispatcher("home").forward(request, response);
        }
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
