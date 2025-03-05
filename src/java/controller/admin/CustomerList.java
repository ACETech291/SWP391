package controller.admin;

import dal.CustomerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Customer;

public class CustomerList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        CustomerDAO customerDAO = new CustomerDAO();

        List<Customer> customers = customerDAO.getAllCustomer();

        request.setAttribute("customers", customers);
        request.getRequestDispatcher("Views/Admin/CustomerList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.getRequestDispatcher("Views/Admin/CustomerList.jsp").forward(request, response);
    }

}
