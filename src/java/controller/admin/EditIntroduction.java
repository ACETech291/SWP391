/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.IntroductionDAO;
import dal.PolicyDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.security.Timestamp;
import java.time.LocalDateTime;
import model.Introduction;
import model.Policy;

/**
 *
 * @author Nguyen Ba Hien
 */
public class EditIntroduction extends HttpServlet {

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
            out.println("<title>Servlet EditPolicy</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditPolicy at " + request.getContextPath() + "</h1>");
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
       String id = request.getParameter("id");
        IntroductionDAO introductionDAO = new IntroductionDAO();
        Introduction introduction = introductionDAO.getIntroductionById(Integer.parseInt(id));
        request.setAttribute("introduction", introduction);
       request.getRequestDispatcher("Views/Admin/EditIntroduction.jsp").forward(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id_introduction = Integer.parseInt(request.getParameter("id_introduction"));
        String content = request.getParameter("content");
        LocalDateTime create_at = LocalDateTime.now();
        

        IntroductionDAO introductionDAO = new IntroductionDAO();
        boolean isUpdated = introductionDAO.updateIntroduction(id_introduction, content, create_at, 1);

        if (isUpdated) {
            response.sendRedirect("IntroductionList?success1=updated");
        } else {
            response.getWriter().write("Cập nhật chính sách thất bại!");
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
