/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.reflect.TypeToken;
import java.util.HashMap;
import com.google.gson.Gson;
import dal.TrainCarriageDAO;
import dal.TripDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Customer;

/**
 *
 * @author HieuPham
 */
public class ConfirmBooking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConfirmBooking</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfirmBooking at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String bookingDataJson = request.getParameter("bookingData");

        if (bookingDataJson == null || bookingDataJson.isEmpty()) {
            response.getWriter().write("Dữ liệu đặt chỗ không hợp lệ!");
            return;
        }

        
        Gson gson = new Gson();
        Type type = new TypeToken<Map<String, Object>>() {
        }.getType();
        Map<String, Object> bookingData = gson.fromJson(bookingDataJson, type);

        
        int id_trip = ((Double) bookingData.get("id_trip")).intValue();
        Map<String, List<Double>> tempSeatsMap = (Map<String, List<Double>>) bookingData.get("selectedSeats");
        String date = (String) bookingData.get("date");
        
        HashMap<String, List<Integer>> selectedSeatsByCoach = new HashMap<>();
        for (Map.Entry<String, List<Double>> entry : tempSeatsMap.entrySet()) {
            selectedSeatsByCoach.put(entry.getKey(), entry.getValue().stream().map(Double::intValue).toList());
        }
        TripDAO td = new TripDAO();
        ArrayList<String> name = td.getNameTrainAndBrand(id_trip);
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
       
        
        request.setAttribute("name_user", customer.getUserName());
        request.setAttribute("email", customer.getEmail());
        request.setAttribute("phone", customer.getPhoneNumber());
        request.setAttribute("name_train", name.get(0));
        request.setAttribute("name_train_brand", name.get(1));
        request.setAttribute("id_trip", id_trip);
        request.setAttribute("selectedSeatByCoach", selectedSeatsByCoach);
        request.setAttribute("date", date);
        request.getRequestDispatcher("Views/ConfirmBooking.jsp").forward(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
