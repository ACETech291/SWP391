package controller.admin;

import dal.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.*;

public class CreateAccount extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }

        if (session.getAttribute("admin") == null) {
            response.sendRedirect("404");
            return;
        }

        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("Views/Admin/CreateAccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("account") == null) {
            response.sendRedirect("login");
            return;
        }

        if (session.getAttribute("admin") == null) {
            response.sendRedirect("404");
            return;
        }

        // Đảm bảo xử lý UTF-8 cho dữ liệu gửi lên và trả về
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // Kiểm tra form submit: nếu có tham số "trainbrand" => Manager, nếu có "phone" => Customer
        if (request.getParameter("trainbrand") != null) {
            // Xử lý tạo tài khoản Manager
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String trainbrand = request.getParameter("trainbrand");

            // Khởi tạo đối tượng Manager
            Manager manager = new Manager();
            manager.setUsername_manager(name);
            manager.setEmail_manager(email);
            manager.setPassword_manager(password);
            // Theo yêu cầu: Manager có role id = 2
            Role role = new Role(2, "Manager");
            manager.setRole(role);
            manager.setStatus(1); // Kích hoạt tài khoản

            ManagerDAO managerDAO = new ManagerDAO();
            // Phương thức createManager phải được hiện thực trong ManagerDAO
            boolean isCreated = managerDAO.createManager(manager);

            if (isCreated) {
                // Lấy lại manager vừa tạo (để lấy được id_manager, v.v.)
                Manager createdManager = managerDAO.getManagerByEmailAndPassword(email, password);
                if (createdManager != null) {
                    // Sau khi tạo Manager thành công, tạo record cho TrainBrand
                    TrainBrand tb = new TrainBrand();
                    tb.setManager(createdManager);
                    tb.setName_train_brand(trainbrand);
                    tb.setImage_train_brand("");       // Thiết lập mặc định (hoặc lấy từ input nếu có)
                    tb.setDescription_train_brand(""); // Thiết lập mặc định

                    TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
                    // Phương thức createTrainBrand phải được hiện thực trong TrainBrandDAO
                    boolean tbCreated = trainBrandDAO.createTrainBrand(tb);
                    if (tbCreated) {
                        request.setAttribute("message", "Tài khoản Manager và Train Brand đã được tạo thành công!");
                    } else {
                        request.setAttribute("message", "Tài khoản Manager tạo thành công, nhưng Train Brand không được tạo!");
                    }
                } else {
                    request.setAttribute("message", "Tạo tài khoản Manager thất bại: không lấy được dữ liệu sau khi tạo.");
                }
            } else {
                request.setAttribute("message", "Tạo tài khoản Manager thất bại!");
            }
        } else if (request.getParameter("phone") != null) {
            // Xử lý tạo tài khoản Customer
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");

            Customer customer = new Customer();
            customer.setUserName(name);
            customer.setPhoneNumber(phone);
            customer.setEmail(email);
            customer.setPassword(password);
            customer.setStatus(1);
            // Theo yêu cầu: Customer có role id = 3
            Role role = new Role(3, "Customer");
            customer.setRole(role);

            CustomerDAO customerDAO = new CustomerDAO();
            customerDAO.createAccount(customer);
            request.setAttribute("message", "Tài khoản Customer đã được tạo thành công!");
        } else {
            request.setAttribute("message", "Dữ liệu không hợp lệ, vui lòng thử lại!");
        }

        // Forward về trang JSP để hiển thị thông báo (và các dữ liệu liên quan nếu cần)
        request.getRequestDispatcher("Views/Admin/CreateAccount.jsp").forward(request, response);
    }

}
