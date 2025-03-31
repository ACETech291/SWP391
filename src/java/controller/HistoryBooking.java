/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.TicketDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import model.InformationBooking;

/**
 *
 * @author HieuPham
 */
public class HistoryBooking extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        TicketDAO td = new TicketDAO();
        CustomerDAO cd = new CustomerDAO();
        TrainDAO traindao = new TrainDAO();
        List<InformationBooking> list = td.getAllInformationBooking(cd.getIdCustomerByEmail(customer.getEmail()));
        List<String> code_train_seat = new ArrayList<>();
        for(int i = 0 ; i < list.size(); ++i){
            code_train_seat.add(td.getCodeTrainSeatAllInformation(list.get(i).getId_ticket()));
        }
        List<String> name_train = new ArrayList<>();
        for(int i = 0 ; i < code_train_seat.size(); ++i){
            String[] token = code_train_seat.get(i).split(" - ");
            name_train.add(traindao.getNameTrainById(Integer.parseInt(token[0])));
        }
        request.setAttribute("HistoryBooking", list);
        request.setAttribute("code_train_seat", code_train_seat);
        request.setAttribute("name_train", name_train);
        request.getRequestDispatcher("Views/HistoryBooking.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


}
