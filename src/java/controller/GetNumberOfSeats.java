package controller;

import dal.TrainCarriageDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import dal.TrainSeatDAO;
import java.util.List;
import org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair;

public class GetNumberOfSeats extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String xtotalSeat = request.getParameter("totalSeat");
        String xid_train_carriage = request.getParameter("id");

        if (xtotalSeat == null || xid_train_carriage == null) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("{\"error\": \"Thiếu tham số totalseat hoặc id\"}");
            return;
        }

        try {
            int totalSeat = Integer.parseInt(xtotalSeat);
            int id_train_carriage = Integer.parseInt(xid_train_carriage);
            TrainSeatDAO tsd = new TrainSeatDAO();
            List<Pair<Integer,Integer> > status = tsd.getStatusByIdTrainCarriage(id_train_carriage);

            // Chuyển đổi List<Integer> thành JSON
            Gson gson = new Gson();
            String json = gson.toJson(status);

            // Gửi JSON về client
            response.getWriter().write(json);

        } catch (NumberFormatException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("{\"error\": \"ID hoặc totalseat không hợp lệ\"}");
            System.out.println("NumberFormatException: " + e.getMessage());
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"error\": \"Lỗi máy chủ\"}");
            System.out.println("Exception: " + e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet trả về số ghế trong khoang tàu";
    }
}
