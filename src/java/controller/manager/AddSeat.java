/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.manager;

import dal.StatusDAO;
import dal.TrainDAO;
import dal.TrainSeatDAO;
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
import model.Status;
import model.Train;
import model.TrainCarriage;
import model.TrainSeat;

/**
 *
 * @author dinhphu
 */
public class AddSeat extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                StatusDAO sDAO = new StatusDAO();
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        TrainDAO tDAO = new TrainDAO();
        List<Train> topTrains = tDAO.getTopTrains(10);
        request.setAttribute("topTrains", topTrains);

        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String code = request.getParameter("code_train_seat");
        int price_seat = Integer.parseInt(request.getParameter("price_seat"));
        int id_train_carriage = Integer.parseInt(request.getParameter("id_train_carriage"));
        int id_status = Integer.parseInt(request.getParameter("id_status"));

        // Danh sách lỗi
        StringBuilder errors = new StringBuilder();

        if (price_seat <= 0) {
            errors.append("Giá ghế phải lớn hơn 0. ");
        }

        // Nếu có lỗi, lưu vào session và chuyển hướng về trang quản lý khoang tàu
        if (errors.length() > 0) {
            request.getSession().setAttribute("errorMessage", errors.toString());
            response.sendRedirect("seatmanagement");
            return;
        }
        
        TrainSeat seat = new TrainSeat(code, price_seat, id_train_carriage, id_status);
        
        TrainSeatDAO dao = new TrainSeatDAO();
        try {
            dao.addTrainSeat(seat);
        } catch (SQLException ex) {
            Logger.getLogger(AddSeat.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        request.getSession().setAttribute("successMessage", "Thêm ghế tàu thành công!");
        response.sendRedirect("seatmanagement");
    }


}
