package controller.manager;

import dal.TrainCarriageDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.FileWriter;
import model.SQLInsert;
import model.TrainCarriage;

public class AddCarriage extends HttpServlet {

    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();
        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true);
             BufferedWriter bufferedWriter = new BufferedWriter(writer)) {
            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm Carriage vào file thành công!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name_train_carriage");
        String description = request.getParameter("description_train_carriage");
        int id_train = Integer.parseInt(request.getParameter("id_train"));
        int id_status = Integer.parseInt(request.getParameter("id_status"));
        int total_seat = Integer.parseInt(request.getParameter("total_seat"));
        
         // Danh sách lỗi
        StringBuilder errors = new StringBuilder();

        if (name.length() > 50) {
            errors.append("Tên khoang tàu không được vượt quá 50 ký tự. ");
        }

        if (description.length() > 255) {
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
                        
        
        
        TrainCarriage carriage = new TrainCarriage(name, description, id_train, id_status, total_seat);
        
        TrainCarriageDAO carriageDAO = new TrainCarriageDAO();

        carriageDAO.addTrainCarriage(carriage);
        
        //insertDatabase(carriage);
        request.getSession().setAttribute("successMessage", "Sửa tàu thành công!");
        response.sendRedirect("carriagemanagement");
    }

}
