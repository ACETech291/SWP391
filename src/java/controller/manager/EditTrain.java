/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.StatusDAO;
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

/**
 *
 * @author dinhphu
 */
public class EditTrain extends HttpServlet {


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
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        // Lấy ID tàu từ request
        int id_train = Integer.parseInt(request.getParameter("id"));

        // Lấy thông tin tàu từ database
        TrainDAO trainDAO = new TrainDAO();
        Train train = trainDAO.getTrainById(id_train);

        // Kiểm tra nếu tàu không tồn tại
        if (train == null) {
            response.sendRedirect("Manager?message=train_not_found");
            return;
        }

        // Truyền dữ liệu sang trang JSP
        request.setAttribute("train", train);
        request.getRequestDispatcher("Views/Manager/EditTrain.jsp").forward(request, response);
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
        int id_train = Integer.parseInt(request.getParameter("id_train"));
        String name_train = request.getParameter("name_train");
        String description_train = request.getParameter("description_train");
        int id_status = Integer.parseInt(request.getParameter("id_status"));
        
        Train train = new Train(id_train,name_train, description_train, id_status);
        
        TrainDAO dao = new TrainDAO();
        dao.updateTrain(train);
       
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
