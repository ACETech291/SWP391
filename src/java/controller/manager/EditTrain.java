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


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_train = Integer.parseInt(request.getParameter("id_train"));
        String name = request.getParameter("name_train");
        String des = request.getParameter("description_train");
        int id_status = Integer.parseInt(request.getParameter("id_status"));
        
        // Danh sách lỗi
        StringBuilder errors = new StringBuilder();

        if (name.length() > 50) {
            errors.append("Tên tàu không được vượt quá 50 ký tự");
        }
        
        if (des == null || des.trim().isEmpty()) {
            errors.append("Mô tả không được để trống");
        } else if (des.length() > 255) {
            errors.append("Mô tả không được vượt quá 255 ký tự");
        }

        
        if (errors.length() > 0) {
            request.getSession().setAttribute("errorMessage", errors.toString());
            response.sendRedirect("trainmanagement");
            return;
        }
        
        Train train = new Train(id_train,name, des, id_status);
        
        TrainDAO dao = new TrainDAO();
        dao.updateTrain1(train);
       
        request.getSession().setAttribute("successMessage", "Sửa tàu thành công!");
        response.sendRedirect("trainmanagement");
    }
}
