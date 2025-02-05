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
import java.util.List;
import model.Customer;
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
            request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
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
////            String userName = request.getParameter("UserName");
////            String pw = request.getParameter("Password");
////            String password = Encoding.toSHA1(pw);
////            CustomerDAO ga = new CustomerDAO();
////            List<Customer> listCustomer = ga.getAllCustomer();
////            HttpSession session = request.getSession();
////            
////            
////            Customer a = ga.getCustomer(userName, password);
////            if(a == null){
////                request.setAttribute("err", "Tài khoản hoặc mật khẩu không chính xác! Xin vui lòng nhập lại.");
////                request.getRequestDispatcher("Views/LoginForm.jsp").forward(request, response);
////            }
////            if(a.getRole().getId()==1){ 
////                session.setAttribute("ADMIN", 1);
////                session.setAttribute("nameUser",a);        
////                 System.out.println("Acc " + a);
////                request.getRequestDispatcher("home").forward(request, response);
////            }
////            if(a.getRole().getId()==2){
////                session.setAttribute("nameUser", a);
////                session.setAttribute("checkUser", "1");
////                System.out.println("Acc " + a);
////                request.getRequestDispatcher("home").forward(request, response);
////            }
//                request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
            processRequest(request, response);
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
