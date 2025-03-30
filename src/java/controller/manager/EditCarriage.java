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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_train_carriage = Integer.parseInt(request.getParameter("id_train_carriage"));
        String name_train_carriage = request.getParameter("name_train_carriage");
        String description_train_carriage = request.getParameter("description_train_carriage");
        int id_status = Integer.parseInt(request.getParameter("id_status"));
        int total_seat = Integer.parseInt(request.getParameter("total_seat"));

        // Danh sách lỗi
        StringBuilder errors = new StringBuilder();

        if (name_train_carriage.length() > 50) {
            errors.append("Tên khoang tàu không được vượt quá 50 ký tự. ");
        }

        if (description_train_carriage.length() > 255) {
            errors.append("Mô tả không được vượt quá 255 ký tự. ");
        }

        if (total_seat <= 0) {
            errors.append("Tổng số ghế phải lớn hơn 0. ");
        }

        // Nếu có lỗi, lưu vào session và chuyển hướng về trang quản lý khoang tàu
        if (errors.length() > 0) {
            request.getSession().setAttribute("errorMessage", errors.toString());
            response.sendRedirect("carriagemanagement");
            return;
        }
        
        TrainCarriage traincarriage = new TrainCarriage(id_train_carriage, name_train_carriage, 
                description_train_carriage, id_status, total_seat);
        
        TrainCarriageDAO dao = new TrainCarriageDAO();
        dao.updateTrainCarriage(traincarriage);

        request.getSession().setAttribute("successMessage", "Sửa khoang tàu thành công!");
        response.sendRedirect("carriagemanagement");
    }

}
