/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import model.InformationBooking;

/**
 *
 * @author HieuPham
 */
public class ViewTicketDetail extends HttpServlet {

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
            out.println("<title>Servlet ViewTicketDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewTicketDetail at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
//        <input type = "hidden" name = "booking" value = "<%= currentBooking %>"
//                > <input type = "hidden" name = "code_train_seat" value = "<%= code_train_seat.get(i) %>"
//                > <input type = "hidden" name = "name_train" value = "<%= name_train.get(i) %>" >
        String code_train_seat = request.getParameter("code_train_seat");
        String name_train = request.getParameter("name_train");
        String bookingJson = request.getParameter("booking");
        Gson gson = new Gson();
        InformationBooking booking = gson.fromJson(bookingJson, InformationBooking.class);
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        request.setAttribute("customer", customer);
        request.setAttribute("code_train_seat", code_train_seat);
        request.setAttribute("name_train", name_train);
        request.setAttribute("booking", booking);
        request.getRequestDispatcher("Views/MoreDetailsBookingHistory.jsp").forward(request, response);
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
