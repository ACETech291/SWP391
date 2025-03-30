/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.Gson;
import dal.CustomerDAO;
import dal.PurchaseHistoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.InformationBooking;
import model.PurchaseHistory;

/**
 *
 * @author HieuPham
 */
public class RefundTicket extends HttpServlet {

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
            out.println("<title>Servlet RefundTicket</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RefundTicket at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        response.setContentType("text/html;charset=UTF-8");
        String accountName = request.getParameter("accountName");
        String name_banking = request.getParameter("nameBanking");
        String accountNumber = request.getParameter("accountNumber");
        //String name_customer = request.getParameter("name_customer");
        
        
        String xcustomerRequire = request.getParameter("cusomter_require");
        
        int customer_require = Integer.parseInt(xcustomerRequire);  
        
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        CustomerDAO cd = new CustomerDAO();
        int id_customer = cd.getIdCustomerByEmail(customer.getEmail());
        String xid_ticket = request.getParameter("id_ticket");
        
        int id_ticket = Integer.parseInt(xid_ticket);
        
        PurchaseHistory purchaseHistory = new PurchaseHistory(id_ticket, name_banking, Integer.parseInt(accountNumber), id_customer, 1, accountName,customer_require);
        PurchaseHistoryDAO phd = new PurchaseHistoryDAO();
        phd.insertPurchaseHistory(purchaseHistory);
        request.setAttribute("message", "True");
        request.getRequestDispatcher("Views/Refund.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        String code_train_seat = request.getParameter("code_train_seat");
        String name_train = request.getParameter("name_train");
        String bookingJson = request.getParameter("booking");
        int cusomter_require = Integer.parseInt(request.getParameter("cusomter_require"));
        Gson gson = new Gson();
        InformationBooking booking = gson.fromJson(bookingJson, InformationBooking.class);
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        request.setAttribute("customer", customer);
        request.setAttribute("code_train_seat", code_train_seat);
        request.setAttribute("name_train", name_train);
        request.setAttribute("booking", booking);
        request.setAttribute("cusomter_require", cusomter_require);
        request.getRequestDispatcher("Views/Refund.jsp").forward(request, response);
    }


}
