/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.IntroductionDAO;
import dal.PolicyDAO;
import dal.TrainBrandDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import model.TrainBrand;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyen Ba Hien
 */
public class ListBrand extends HttpServlet {

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
            out.println("<title>Servlet ListBrand</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListBrand at " + request.getContextPath() + "</h1>");
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
                PolicyDAO policyDAO = new PolicyDAO();
        IntroductionDAO introductionDAO = new IntroductionDAO();
        request.setAttribute("policy",policyDAO.getLastPolicy().getContent());
        request.setAttribute("introduction", introductionDAO.getLastIntroduction().getContent());
        try {
            List<TrainBrand> listBrand = trainBrandDAO.getAllTrainBrands();
            request.setAttribute("listBrand", listBrand);
        request.getRequestDispatcher("Views/ListBrand.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ListBrand.class.getName()).log(Level.SEVERE, null, ex);
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
        String order = request.getParameter("order");
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        if(order.equalsIgnoreCase("2")){
            try {
                List<TrainBrand> listBrand = trainBrandDAO.getAllTrainBrandsAZ();
                request.setAttribute("order", order);
                request.setAttribute("listBrand", listBrand);
                request.getRequestDispatcher("Views/ListBrand.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ListBrand.class.getName()).log(Level.SEVERE, null, ex);
            }            
        }else if (order.equalsIgnoreCase("3")){
            try {
                List<TrainBrand> listBrand = trainBrandDAO.getAllTrainBrandsZA();
                request.setAttribute("order", order);
                request.setAttribute("listBrand", listBrand);
                request.getRequestDispatcher("Views/ListBrand.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ListBrand.class.getName()).log(Level.SEVERE, null, ex);
            }        
        }else{
            try {
                List<TrainBrand> listBrand = trainBrandDAO.getAllTrainBrands();
                request.setAttribute("order", order);
                request.setAttribute("listBrand", listBrand);
                request.getRequestDispatcher("Views/ListBrand.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(ListBrand.class.getName()).log(Level.SEVERE, null, ex);
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
