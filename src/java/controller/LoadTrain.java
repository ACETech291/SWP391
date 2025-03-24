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
import dal.TrainDAO;
import java.util.List;
import model.Train;

/**
 *
 * @author Nguyen Ba Hien
 */
public class LoadTrain extends HttpServlet {

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
            TrainDAO trainDAO = new TrainDAO();
            String xamount = request.getParameter("exists");
            int amount = Integer.parseInt(xamount);
            List<Train> listTrain = trainDAO.getNext4Stations(amount);
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            for (Train train : listTrain) {
                out.println("<div class=\"train blog-full d-flex justify-content-around mb-4 col-md-8\">\n"
                        + "                                            <div class=\"row w-100\">\n"
                        + "                                                <div class=\"col-lg-5 col-md-4 col-xs-12 blog-height\">\n"
                        + "                                                    <div class=\"blog-image\">\n"
                        + "                                                        <c:choose>\n"
                        + "                                                            <c:when test=\"${not empty " + train.getImage_train() + "\">\n"
                        + "                                                                <a href=\"traindetail?id="+train.getId_train()+"\">\n"
                        + "                                                                    <img src=\""+train.getImage_train()+"\" alt=\"image\" class=\"half-image\">\n"
                        + "                                                                </a>"
                        + "                                                            </c:when>\n"
                        + "                                                            <c:otherwise>\n"
                        + "                                                                <a href=\"traindetail?id=" + train.getId_train() + "\" style=\"background-image: url('${pageContext.request.contextPath}/libs/images/trains/6.jpg');\"></a>\n"
                        + "                                                            </c:otherwise>\n"
                        + "                                                        </c:choose>\n"
                        + "                                                    </div> \n"
                        + "                                                </div>\n"
                        + "                                                <div class=\"col-lg-7 col-md-8 col-xs-12\">\n"
                        + "                                                    <div class=\"trend-content-main\">\n"
                        + "                                                        <div class=\"trend-content pt-2 pb-2\">\n"
                        + "                                                            <h3 class=\"mb-2\"><a href=\"traindetail?" + train.getId_train() + "\">" + train.getName_train() + "</a></h3>\n"
                        + "                                                            <div class=\"rating border-b pb-1 mb-1\">\n"
                        + "                                                                <p class=\"mb-0\"><span class=\"pink\">Hãng tàu " + train.getId_train_brand() + "</span></p>\n"
                        + "                                                            </div>\n"
                        + "                                                            <p>\n"
                        + "                                                                " + train.getDescription_train() + "\n"
                        + "                                                            </p>\n"
                        + "                                                            <a href=\"traindetail?id=" + train.getId_train() + "\" class=\"grey\">Xem chi tiết <i class=\"fa fa-angle-double-right\"></i></a>\n"
                        + "                                                        </div>\n"
                        + "                                                    </div>\n"
                        + "                                                </div>\n"
                        + "                                            </div>\n"
                        + "                                        </div>");
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
