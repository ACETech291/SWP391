package controller.manager;

import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.SQLInsert;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class AddTrain extends HttpServlet {

    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();

        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true); BufferedWriter bufferedWriter = new BufferedWriter(writer)) {
            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm Train vào file thành công! " + x.toString());

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("trainmanagement");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name_train");
        String des = request.getParameter("description_train");
        String idTrainBrandStr = request.getParameter("id_train_brand");
        String idStatusStr = request.getParameter("id_status");
        int id_train_brand = Integer.parseInt(idTrainBrandStr);
        int id_status = Integer.parseInt(idStatusStr);

        // Danh sách lỗi
        StringBuilder errors = new StringBuilder();

        // Kiểm tra tên tàu (Tên tàu: 1-50 ký tự, không chứa ký tự đặc biệt)
        if (name == null || name.trim().isEmpty()) {
            errors.append("Tên tàu không được để trống");
        } else if (name.length() > 50) {
            errors.append("Tên tàu không được vượt quá 50 ký tự");
        } 

        // Kiểm tra mô tả (Mô tả: 1-255 ký tự, không chứa URL)
        if (des == null || des.trim().isEmpty()) {
            errors.append("Mô tả không được để trống");
        } else if (des.length() > 255) {
            errors.append("Mô tả không được vượt quá 255 ký tự");
        } 

        // Nếu có lỗi, quay lại trang và hiển thị thông báo
        if (errors.length() > 0) {
            request.getSession().setAttribute("errorMessage", errors.toString());
            response.sendRedirect("trainmanagement");
            return;
        }

        // Nếu hợp lệ, thêm tàu vào DB
        Train train = new Train(name, des, id_train_brand, id_status);
        TrainDAO trainDAO = new TrainDAO();
        boolean success = false;
        
        try {
            trainDAO.addTrain(train);
        } catch (SQLException ex) {
            Logger.getLogger(AddTrain.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.getSession().setAttribute("successMessage", "Thêm tàu thành công!");
        response.sendRedirect("trainmanagement");
    }

}
