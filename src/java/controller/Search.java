/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AdvertisingDAO;
import dal.StationDAO;
import dal.TrainDAO;
import model.Train;
import dal.TripDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import model.Station;
import model.TripDTO;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Search extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Search</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Search at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StationDAO stationDAO = new StationDAO();
        TripDAO tripDAO = new TripDAO();
        TrainDAO trainDAO = new TrainDAO();
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        HttpSession session = request.getSession();
        String dateStr = (String)session.getAttribute("dateStr");
        if(dateStr == null){
            session.removeAttribute("dateStr");
        }

        List<TripDTO> list1 = (List<TripDTO>) session.getAttribute("list1");

        int size = list1.size();
        int page;
        int numberPerPage = 10;
        int num = (size % numberPerPage == 0 ? size / numberPerPage : size / numberPerPage + 1);
        String xPage = request.getParameter("page");
        if (xPage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xPage);
        }
        int start = (page - 1) * numberPerPage;
        int end = Math.min(page * numberPerPage, size);
        List<TripDTO> listTripDTO = tripDAO.getListByPage(list1, start, end);

        Date currentDate = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = sdf.format(currentDate);
        request.setAttribute("formattedDate", formattedDate);
        request.setAttribute("listTripDTO", listTripDTO);

        List<Station> listStation = stationDAO.getAllStations();
        List<model.Advertising> listAdvertisings = advertisingDAO.getAllAdvertising();
        request.setAttribute("date", dateStr);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.setAttribute("listStation", listStation);
        request.setAttribute("listAdvertisings", listAdvertisings);
        request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StationDAO stationDAO = new StationDAO();
        TripDAO tripDAO = new TripDAO();
        TrainDAO trainDAO = new TrainDAO();
        HttpSession session = request.getSession();
        List<Train> trains = trainDAO.getAllTrains();
        request.setAttribute("trains", trains);
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();

        String station_from = request.getParameter("station_from");
        String station_end = request.getParameter("station_end");
        String dateStr = request.getParameter("date");

        if (dateStr != null && !dateStr.isEmpty()) {
            try {
                // Parse từ chuỗi dateStr với định dạng đầu vào "yyyy-MM-dd"
                SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date inputDate = inputFormat.parse(dateStr);

                // Chuyển đổi sang định dạng "dd-MM-yyyy"
                SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy");
                dateStr = outputFormat.format(inputDate);

                // Lấy ngày hiện tại
                Calendar calendar = Calendar.getInstance();
                Date currentDate = calendar.getTime();

                // Cộng thêm 30 ngày vào ngày hiện tại
                calendar.add(Calendar.DAY_OF_MONTH, 30);
                Date maxDate = calendar.getTime();

                // So sánh inputDate với maxDate
                if (inputDate.after(maxDate)) {
                    request.setAttribute("message", "Không có chuyến đi trong khoảng thời gian này.");
                } else {
                    session.setAttribute("dateStr", dateStr);
                    request.setAttribute("date", dateStr); // Định dạng chuẩn dd-MM-yyyy
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("message", "Ngày nhập vào không hợp lệ.");
            }
        }
        String train_brand = request.getParameter("train_brand");
        session.setAttribute("dateStr", dateStr);
        if ((!station_from.isEmpty()) && (station_from.equalsIgnoreCase(station_end))) {
            request.setAttribute("err", "Không thể có chuyến tàu nào cho 2 ga trùng nhau");
            List<Station> listStation = stationDAO.getAllStations();
            request.setAttribute("listStation", listStation);
            request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
            return;
        }

        List<TripDTO> list1 = tripDAO.searchTrips(station_from, station_end, train_brand);

        int size = list1.size();
        int page;
        int numberPerPage = 10;
        int num = (size % numberPerPage == 0 ? size / numberPerPage : size / numberPerPage + 1);
        String xPage = request.getParameter("page");
        if (xPage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xPage);
        }
        int start = (page - 1) * numberPerPage;
        int end = Math.min(page * numberPerPage, size);
        List<TripDTO> listTripDTO = tripDAO.getListByPage(list1, start, end);

        Date currentDate = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String formattedDate = sdf.format(currentDate);
        request.setAttribute("formattedDate", formattedDate);
        request.setAttribute("listTripDTO", listTripDTO);

        List<Station> listStation = stationDAO.getAllStations();
        List<model.Advertising> listAdvertisings = advertisingDAO.getAllAdvertising();
        session.setAttribute("list1", list1);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.setAttribute("listStation", listStation);
        request.setAttribute("listAdvertisings", listAdvertisings);
        request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
