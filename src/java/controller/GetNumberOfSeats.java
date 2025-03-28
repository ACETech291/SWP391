package controller;

import dal.TrainCarriageDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import dal.TicketDAO;
import dal.TrainSeatDAO;
import dal.TripDAO;
import java.util.ArrayList;
import java.util.List;
import org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair;

public class GetNumberOfSeats extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String start_time = request.getParameter("start_time");
        String end_time = request.getParameter("end_time");
        String xid_trip = request.getParameter("id_trip");
        String xtotalSeat = request.getParameter("totalSeat");
        String xid_train_carriage = request.getParameter("id");
        int id_train_carriage = Integer.parseInt(xid_train_carriage);
        TripDAO tripdao = new TripDAO();
        int id_train = tripdao.getIdTrainByIdTrip(Integer.parseInt(xid_trip));
        TicketDAO td = new TicketDAO();
        List<Integer> code_train_seat = td.getCodeTrainSeat(id_train, id_train_carriage);
        List<String> st = td.getStartDate(id_train, id_train_carriage);
        List<String> et = td.getEndDate(id_train, id_train_carriage);
        List<Integer> res = new ArrayList<>();
        for(int i = 0 ; i < st.size(); ++i){
            if(st.get(i).compareTo(end_time) >= 0 || et.get(i).compareTo(start_time) <= 0){
                
            }
            else{
                res.add(code_train_seat.get(i));
            }
        }
        Gson gson = new Gson();
        String json = gson.toJson(res);

        // Gửi JSON về client
        response.getWriter().write(json);

    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("application/json");
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        String xid_trip = request.getParameter("id_trip");
//        String xtotalSeat = request.getParameter("totalSeat");
//        String xid_train_carriage = request.getParameter("id");
//        int id_train_carriage = Integer.parseInt(xid_train_carriage);
//        TripDAO tripdao = new TripDAO();
//        int id_train = tripdao.getIdTrainByIdTrip(Integer.parseInt(xid_trip));
//        TicketDAO td = new TicketDAO();
//        List<String> code_train_seat = td.getCodeTrainSeat(id_train, id_train_carriage);
//        Gson gson = new Gson();
//        String json = gson.toJson(code_train_seat);
//
//            // Gửi JSON về client
//            response.getWriter().write(json);
//
//    }
    @Override
    public String getServletInfo() {
        return "Servlet trả về số ghế trong khoang tàu";
    }
}
