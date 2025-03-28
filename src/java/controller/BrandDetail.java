/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CommentDAO;
import dal.TrainBrandDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TrainBrand;

/**
 *
 * @author Nguyen Ba Hien
 */
public class BrandDetail extends HttpServlet {

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
            out.println("<title>Servlet BrandDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BrandDetail at " + request.getContextPath() + "</h1>");
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
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        CommentDAO commentDAO = new CommentDAO();
        
        String id = request.getParameter("id"); 
        try {
            TrainBrand trainBrand = trainBrandDAO.getTrainBrandById(Integer.parseInt(id));
            List<model.Comment> listAllComment = commentDAO.getAllComments(Integer.parseInt(id));
            List<model.Comment> listComment = commentDAO.getAllCommentsByVoting(Integer.parseInt(id),5);
            int rating=0;
        for (model.Comment comment : listAllComment) {
            rating+= comment.getVoting_comment();
        }
        int vote1 = commentDAO.countCommentsByVoting(Integer.parseInt(id), 1);
        int vote2 = commentDAO.countCommentsByVoting(Integer.parseInt(id), 2);
        int vote3 = commentDAO.countCommentsByVoting(Integer.parseInt(id), 3);
        int vote4 = commentDAO.countCommentsByVoting(Integer.parseInt(id), 4);
        int vote5 = commentDAO.countCommentsByVoting(Integer.parseInt(id), 5);
        double result = Double.parseDouble(String.valueOf(rating));
        result = result/listAllComment.size();
        result = Math.round(result * 10.0) / 10.0;
        request.setAttribute("vote1",vote1);
        request.setAttribute("vote2",vote2);
        request.setAttribute("vote3",vote3);
        request.setAttribute("vote4",vote4);
        request.setAttribute("vote5",vote5);
        request.setAttribute("result", result);
            request.setAttribute("trainBrand",trainBrand);
            request.setAttribute("listComment", listComment);
            request.getRequestDispatcher("Views/BrandDetail.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BrandDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
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
