package controller.manager;

import dal.StatusDAO;
import dal.TrainCarriageDAO;
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
import model.TrainCarriage;
import model.TrainSeat;

/**
 *
 * @author dinhphu
 */
public class EditTrainSeat extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        int id_train_seat = Integer.parseInt(request.getParameter("id"));

        // Lấy thông tin tàu từ database
        TrainSeatDAO dao = new TrainSeatDAO();
        TrainSeat trainSeat = dao.getTrainSeatById(id_train_seat);

        // Kiểm tra nếu tàu không tồn tại
        if (trainSeat == null) {
            response.sendRedirect("Manager?message=trainseat_not_found");
            return;
        }

        // Truyền dữ liệu sang trang JSP
        request.setAttribute("trainSeat", trainSeat);
        request.getRequestDispatcher("Views/Manager/EditTrainSeat.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id_train_seat = Integer.parseInt(request.getParameter("id_train_seat"));
        String code_train_seat  = request.getParameter("code_train_seat");
        int price_seat = Integer.parseInt(request.getParameter("price_seat"));
        int id_train_carriage = Integer.parseInt(request.getParameter("id_train_carriage"));
        int id_status = Integer.parseInt(request.getParameter("id_status"));

        TrainSeat trainSeat = new TrainSeat(id_train_seat, code_train_seat, price_seat, id_train_carriage, id_status);
        
        TrainSeatDAO dao = new TrainSeatDAO();
        try {
            dao.updateTrainSeat(trainSeat);
        } catch (SQLException ex) {
            Logger.getLogger(EditTrainSeat.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("Manager");
    }
}
