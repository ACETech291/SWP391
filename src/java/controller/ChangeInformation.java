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
public class ChangeInformation extends HttpServlet {

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
        String name = (String) request.getParameter("name");
        String phone = (String) request.getParameter("phone");
        request.setAttribute("name", name);
        request.setAttribute("phone", phone);
        request.setAttribute("email", email);
        request.setAttribute("email", email);
        request.setAttribute("name", name);
        request.setAttribute("phone", phone);
        request.getRequestDispatcher("Views/ChangeInformation.jsp").forward(request, response);
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
    CustomerDAO customerDAO = new CustomerDAO();
    HttpSession session = request.getSession();
    
    // Lấy thông tin khách hàng từ session
    Customer customer = (Customer) session.getAttribute("account");
    if (customer == null) {
        response.sendRedirect("login.jsp"); // Nếu chưa đăng nhập, chuyển hướng
        return;
    }

    // Lấy thông tin từ form
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = customer.getEmail(); // Lấy email từ session vì form không có trường email
    
    // Cập nhật thông tin vào database
    customerDAO.updatePhone(email, phone);
    customerDAO.updateName(email, name);

    // Cập nhật đối tượng `cus`
    customer.setUserName(name);
    customer.setPhoneNumber(phone);
    session.setAttribute("account", customer); // Cập nhật session với dữ liệu mới

    // Trả về dữ liệu mới lên form
    request.setAttribute("email", email);
    request.setAttribute("name", name);
    request.setAttribute("phone", phone);
    request.setAttribute("img", customer.getImage_url());
    request.setAttribute("success", "Cập nhật thông tin thành công");

    // Chuyển hướng đến trang Profile
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
