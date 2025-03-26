/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdvertisingDAO;
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
public class LoadAdvertising extends HttpServlet {

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
            String contextPath = request.getContextPath();
            AdvertisingDAO advertisingDAO = new AdvertisingDAO();
            String xamount = request.getParameter("exists");
            int amount = Integer.parseInt(xamount);
            List<model.Advertising> listAdvertisings = advertisingDAO.get12Advertising(amount);
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            for (model.Advertising advertising : listAdvertisings) {
                out.println("<div class=\"advertising col-lg-4 col-md-6 col-sm-12 col-xs-12 mansonry-item mb-2\">\n"
                        + "                                <div class=\"blog-full text-center p-3\">\n"
                        + "                                    <img src=\""+contextPath+advertising.getImage_advertising()+"\" alt=\"\">\n"
                        + "                                    <div class=\"blog-content pb-0\">\n"
                        + "                                        <span class=\"h-date pink mb-1 font-weight-light d-block\"> 5-3-2025</span>\n"
                        + "                                        <h3 class=\"mb-2\"><a href=\"advertisingdetail?id="+advertising.getId_advertising()+"\" class=\"\">"+advertising.getDescription_advertising()+"</a></h3>\n"
                        + "                                        <p class=\"date-cats mb-0 border-t pt-2 pb-2\">\n"
                        + "                                            <a href=\"#\" class=\"\"><i class=\"fa fa-user\"></i> "+advertising.getManagerName()+"</a>\n"
                        + "                                        </p> \n"
                        + "                                        <a href=\"advertisingdetail?id="+advertising.getId_advertising()+"\" class=\"grey font-weight-light\">Chi tiết ở đây <i class=\"fa fa-long-arrow-alt-right\"></i></a>\n"
                        + "                                    </div>                        \n"
                        + "                                </div>\n"
                        + "                            </div>");
            }
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
