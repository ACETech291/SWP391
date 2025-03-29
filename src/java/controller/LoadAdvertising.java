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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String contextPath = request.getContextPath();
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        String xamount = request.getParameter("exists");
        int amount = Integer.parseInt(xamount);
        List<model.Advertising> listAdvertisings = advertisingDAO.get12Advertising(amount);
        response.setCharacterEncoding("UTF-8");
        System.out.println("contextPath: " + contextPath);
        for (model.Advertising advertising : listAdvertisings) {
            out.println("<div class=\"advertising col-lg-4 col-md-6 col-sm-12 col-xs-12 mansonry-item mb-2\">\n"
                    + "    <div class=\"blog-full text-center p-3\">\n"
                    + "        <img src=\"" + contextPath + advertising.getImage_advertising() + "\" alt=\"\">\n"
                    + "        <div class=\"blog-content pb-0\">\n"
                    + "            <span class=\"h-date pink mb-1 font-weight-light d-block\"> "+advertising.getCreate_at()+"</span>\n"
                    + "            <h3 class=\"mb-2\"><a href=\"advertisingdetail?id=" + advertising.getId_advertising() + "\" class=\"\">" + advertising.getDescription_advertising() + "</a></h3>\n"
                    + "            <p class=\"date-cats mb-0 border-t pt-2 pb-2\">\n"
                    + "                <a href=\"#\" class=\"\"><i class=\"fa fa-user\"></i> " + advertising.getManagerName() + "</a>\n"
                    + "            </p> \n"
                    + "            <a href=\"advertisingdetail?id=" + advertising.getId_advertising() + "\" class=\"grey font-weight-light\">Chi tiết ở đây <i class=\"fa fa-long-arrow-alt-right\"></i></a>\n"
                    + "        </div>                        \n"
                    + "    </div>\n"
                    + "</div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
