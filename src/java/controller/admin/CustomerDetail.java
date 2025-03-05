package controller.admin;

import dal.CustomerDAO;
import dal.ManagerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;
import model.Manager;

public class CustomerDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String idParam = request.getParameter("id");
        CustomerDAO customerDAO = new CustomerDAO();

        Customer customer = customerDAO.getUserById(Integer.parseInt(idParam));

        request.setAttribute("customer", customer);
        request.getRequestDispatcher("Views/Admin/CustomerDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        // Lấy đối tượng customer theo id
        CustomerDAO customerDAO = new CustomerDAO();
        Customer customer = customerDAO.getUserById(id);

        if (customer != null) {
            // Nếu hành động là "block" thì cập nhật trạng thái thành 0 (bị block)
            if ("block".equals(action)) {
                customer.setStatus(0);
            } // Nếu hành động là "unblock" thì cập nhật trạng thái thành 1 (active)
            else if ("unblock".equals(action)) {
                customer.setStatus(1);
            }

            // Gọi hàm cập nhật thông tin manager
            boolean updated = customerDAO.updateCustomer(customer);
            if (updated) {
                // Sau khi cập nhật thành công, chuyển hướng về trang danh sách manager (hoặc trang chi tiết)
                response.sendRedirect("customerlist");
            } else {
                request.setAttribute("err", "Cập nhật trạng thái không thành công.");
                request.setAttribute("customer", customer);
                request.getRequestDispatcher("Views/Admin/CustomerDetail.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("err", "Không tìm thấy customer cần cập nhật.");
            request.getRequestDispatcher("Views/Admin/CustomerDetail.jsp").forward(request, response);
        }
    }

}
