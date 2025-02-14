package controller;

import com.google.gson.Gson;
import dal.TripDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import model.Trip;

public class GetTripServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Thiết lập phản hồi JSON
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Lấy ngày từ request
        String dateParam = request.getParameter("date");
        if (dateParam == null || dateParam.trim().isEmpty()) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            out.print("{\"error\": \"Thiếu ngày cần tìm kiếm!\"}");
            return;
        }

        // Chuyển đổi ngày từ String sang Date
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date selectedDate;
        try {
            selectedDate = sdf.parse(dateParam);
        } catch (ParseException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            out.print("{\"error\": \"Định dạng ngày không hợp lệ!\"}");
            return;
        }

        // Lấy danh sách chuyến đi từ database theo ngày
        TripDAO td = new TripDAO();
        List<Trip> filteredTrips = td.getTripsByDate(selectedDate); // Dùng phương thức mới

        // Nếu không có chuyến nào, trả về JSON rỗng
        if (filteredTrips.isEmpty()) {
            response.setStatus(HttpServletResponse.SC_NO_CONTENT);
            out.print("{\"message\": \"Không có chuyến đi nào trong ngày này.\"}");
            return;
        }

        // Chuyển danh sách thành JSON và trả về phản hồi
        String json = new Gson().toJson(filteredTrips);
        out.print(json);
    }

    @Override
    public String getServletInfo() {
        return "GetTripsServlet - Lấy danh sách chuyến đi theo ngày";
    }
}
