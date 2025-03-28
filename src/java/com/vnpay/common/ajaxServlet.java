/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vnpay.common;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import dal.CustomerDAO;
import dal.DateOfTripDAO;
import dal.DateTripDAO;
import dal.TicketDAO;
import dal.TrainSeatDAO;
import dal.TripDAO;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import model.Customer;
import model.DateTrip;
import model.Ticket;

/**
 *
 * @author CTT VNPAY
 */
public class ajaxServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String xid_trip = req.getParameter("id_trip");
        int id_trip = Integer.parseInt(xid_trip);
        String bankCode = req.getParameter("bankCode");
        double amountDouble = Double.parseDouble(req.getParameter("total_bill"));
        HttpSession session = req.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        CustomerDAO cd = new CustomerDAO();
        int id_user = cd.getCustomerByEmail(customer.getEmail()).getId_customer();
        Ticket newTicket = new Ticket();
        newTicket.setId_customer(id_user);
        TicketDAO td = new TicketDAO();
        TripDAO tripdao = new TripDAO();
        String date = req.getParameter("date");
        String name_ticket = customer.getUserName() + " - " + date;
        newTicket.setName_ticket(name_ticket);
        String bookingTime = req.getParameter("booking_time");

        if (bookingTime != null && !bookingTime.isEmpty()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime bookingDateTime = LocalDateTime.parse(bookingTime, formatter);
            //System.out.println("BOOKING DATE TIME " + bookingDateTime);
            // Gán vào đối tượng newTicket
            newTicket.setBooking_time_ticket(bookingDateTime);
        } else {
            // Nếu không có giá trị, lấy thời gian hiện tại
            newTicket.setBooking_time_ticket(LocalDateTime.now());
        }
        //newTicket.setTotal_bill(amountDouble);
        DateOfTripDAO dotd = new DateOfTripDAO();
        int id_date_of_trip = dotd.getIdDateOfTrip(date);
        DateTripDAO dtd = new DateTripDAO();
        System.out.println("ID_TRIP: " + id_trip + " " + "ID_DATE_OF_TRIP: " + id_date_of_trip + " DATE: " + date);
        if (dtd.getIdDateTrip(id_trip, id_date_of_trip) == -1) {
            dtd.insertDateTrip(id_trip, id_date_of_trip);
        }
        int id_date_trip = dtd.getIdDateTrip(id_trip, id_date_of_trip);
        newTicket.setId_date_trip(id_date_trip);
        String selectedSeatsJson = req.getParameter("selectedSeats");
        Gson gson = new Gson();
        Type type = new TypeToken<HashMap<String, List<Integer>>>() {
        }.getType();
        HashMap<String, List<Integer>> selectedSeatByCoach = gson.fromJson(selectedSeatsJson, type);
        int start = -1, end = -1;
        newTicket.setStatus("Processing");
        start = td.getNumberOfTicket() + 1;
        int id_train = tripdao.getIdTrainByIdTrip(id_trip);
        TrainSeatDAO tsd = new TrainSeatDAO();
        
        int price_trip = tripdao.getPriceTripFromTripID(id_trip);
        for (Map.Entry<String, List<Integer>> entry : selectedSeatByCoach.entrySet()) {
            String xid_train_carriage = entry.getKey();
            
            List<Integer> list = entry.getValue();
            int sum = list.size();
            double price = tsd.getTotalPrice(Integer.parseInt(xid_train_carriage), list);
            newTicket.setTotal_bill(price + price_trip * sum);
            for (int i = 0; i < list.size(); ++i) {
                String find = id_train + " - " + xid_train_carriage + " - " + list.get(i);
                int id_train_seat = tsd.searchIdTrainSeatByCodeTrainSeat(find);
                System.out.println("FIND:" + find +  " ID_TRAIN_SEAT:" + id_train_seat );
                newTicket.setId_train_seat(id_train_seat);
                td.insertTicketToDataBase(newTicket);
            }

            //System.out.println("INSERT OK?");
        }
        end = td.getNumberOfTicket();

        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String orderType = "other";

        long amount = (long) (amountDouble * 100);

        String vnp_TxnRef = start + "-" + end + "";//dky ma rieng
        String vnp_IpAddr = Config.getIpAddress(req);

        String vnp_TmnCode = Config.vnp_TmnCode;

        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");

        if (bankCode != null && !bankCode.isEmpty()) {
            vnp_Params.put("vnp_BankCode", bankCode);
        }
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang:" + vnp_TxnRef);
        vnp_Params.put("vnp_OrderType", orderType);

        String locate = req.getParameter("language");
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        vnp_Params.put("vnp_ReturnUrl", Config.vnp_ReturnUrl);
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
        resp.sendRedirect(paymentUrl);
    }
}
