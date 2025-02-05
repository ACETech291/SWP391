/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Role;
import until.Encoding;

/**
 *
 * @author Nguyen Ba Hien
 */
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
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
//        CustomerDAO cu = new CustomerDAO();
//        List<Customer> listCustomer = cu.getAllCustomer();
//        String Name = request.getParameter("Name");
//        String userName = request.getParameter("account");
//        String raw_password = request.getParameter("password");
//        String password = Encoding.toSHA1(raw_password);
//        String cf = request.getParameter("confirmpassword");
//        String confirmpassword = Encoding.toSHA1(cf);
//        String email = request.getParameter("emailAddress");
//        String phone = request.getParameter("phoneNumber");
//         int check = 1;
//       
//        if(!password.equals(confirmpassword)){
//            check = 2;
//            request.setAttribute("error1", "Đăng Kí Thất Bại");
//            request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
//        }
//       
//        Role role = cu.getRoleById(2);     
//        
//        for (Customer customer : listCustomer) {
//            System.out.println(customer.toString());
//            if(customer.getUserName().equalsIgnoreCase(userName) ){
//                check = 3;
//            }
//            if(customer.getEmail().equalsIgnoreCase(email)){
//                check = 4;
//            }
//               
//        }
//        
//        if(check==1){
//            cu.createAcc(new Customer(userName, password, phone, email, 1, role));
//                request.setAttribute("Success", "Tạo tài khoản thành công!!!");
//        }else if(check ==3){
//            request.setAttribute("Success", "Tài khoản đã có người sử dụng!!!");
//        }else if(check ==4){
//            request.setAttribute("Success", "Email đã có người sử dụng!!!");
//        }
//        request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
        
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
