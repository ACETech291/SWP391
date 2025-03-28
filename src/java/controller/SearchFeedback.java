/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdvertisingDAO;
import dal.FeedbackDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Nguyen Ba Hien
 */
public class SearchFeedback extends HttpServlet {

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
            out.println("<title>Servlet SearchFeedback</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchFeedback at " + request.getContextPath() + "</h1>");
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
        FeedbackDAO feedbackDAO = new FeedbackDAO();
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        
        String rate = request.getParameter("rating");
        String id = request.getParameter("id_advertising_voting");
        List<model.Feedback> listAllFeedback = feedbackDAO.getAllFeedback(Integer.parseInt(id));
        List<model.Feedback> listFeedbacks = feedbackDAO.getAllFeedbackVoting(Integer.parseInt(id), Integer.parseInt(rate));
        model.Advertising advertising = advertisingDAO.getAdvertisingById(id);
        int rating=0;
        for (model.Feedback feedback : listAllFeedback) {
            rating += feedback.getVoting_feedback();
        }
        double result = Double.parseDouble(String.valueOf(rating));
        result = result/listAllFeedback.size();
        result = Math.round(result * 10.0) / 10.0;
        int vote1 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 1);
        int vote2 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 2);
        int vote3 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 3);
        int vote4 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 4);
        int vote5 = feedbackDAO.countFeedbackByVoting(Integer.parseInt(id), 5);
        request.setAttribute("vote1",vote1);
        request.setAttribute("vote2",vote2);
        request.setAttribute("vote3",vote3);
        request.setAttribute("vote4",vote4);
        request.setAttribute("vote5",vote5);
        request.setAttribute("result", result);
        request.setAttribute("advertising", advertising);
        request.setAttribute("listFeedbacks", listFeedbacks);
        request.getRequestDispatcher("Views/AdvertisingDetail.jsp").forward(request, response);
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
