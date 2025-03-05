/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.StatusDAO;
import dal.TrainCarriageDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Status;
import model.Train;
import model.TrainCarriage;

/**
 *
 * @author dinhphu
 */
public class EditCarriage extends HttpServlet {

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
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        int id_train_carriage = Integer.parseInt(request.getParameter("id"));

        // Lấy thông tin tàu từ database
        TrainCarriageDAO dao = new TrainCarriageDAO();
        TrainCarriage traincarriage = dao.getTrainCarriageById(id_train_carriage);

        // Kiểm tra nếu tàu không tồn tại
        if (traincarriage == null) {
            response.sendRedirect("Manager?message=traincarriage_not_found");
            return;
        }

        // Truyền dữ liệu sang trang JSP
        request.setAttribute("trainCarriage", traincarriage);
        request.getRequestDispatcher("Views/Manager/EditCarriage.jsp").forward(request, response);
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
        int id_train_carriage = Integer.parseInt(request.getParameter("id_train_carriage"));
        String name_train_carriage = request.getParameter("name_train_carriage");
        String description_train_carriage = request.getParameter("description_train_carriage");
        int id_status = Integer.parseInt(request.getParameter("id_status"));
        int total_seat = Integer.parseInt(request.getParameter("total_seat"));

        TrainCarriage traincarriage = new TrainCarriage(id_train_carriage, name_train_carriage, 
                description_train_carriage, id_status, total_seat);
        
        TrainCarriageDAO dao = new TrainCarriageDAO();
        dao.updateTrainCarriage(traincarriage);

        response.sendRedirect("Manager");
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
