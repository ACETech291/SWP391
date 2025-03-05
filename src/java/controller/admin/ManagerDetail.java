package controller.admin;

import dal.ManagerDAO;
import dal.TrainBrandDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.Manager;
import model.TrainBrand;

public class ManagerDetail extends HttpServlet {

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
        String idParam = request.getParameter("id");
        ManagerDAO managerDAO = new ManagerDAO();
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();

        Manager manager = managerDAO.getManagerById(Integer.parseInt(idParam));
        TrainBrand trainBrand = trainBrandDAO.getTrainBrandsByManager(Integer.parseInt(idParam));

        request.setAttribute("manager", manager);
        request.setAttribute("trainBrand", trainBrand);

        request.getRequestDispatcher("Views/Admin/ManagerDetail.jsp").forward(request, response);
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

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        // Lấy đối tượng manager theo id
        ManagerDAO managerDAO = new ManagerDAO();
        Manager manager = managerDAO.getManagerById(id);

        if (manager != null) {
            // Nếu hành động là "block" thì cập nhật trạng thái thành 0 (bị block)
            if ("block".equals(action)) {
                manager.setStatus(0);
            } // Nếu hành động là "unblock" thì cập nhật trạng thái thành 1 (active)
            else if ("unblock".equals(action)) {
                manager.setStatus(1);
            }

            // Gọi hàm cập nhật thông tin manager
            boolean updated = managerDAO.updateManager(manager);
            if (updated) {
                // Sau khi cập nhật thành công, chuyển hướng về trang danh sách manager (hoặc trang chi tiết)
                response.sendRedirect("managerlist");
            } else {
                request.setAttribute("err", "Cập nhật trạng thái không thành công.");
                request.setAttribute("manager", manager);
                request.getRequestDispatcher("Views/Admin/ManagerDetail.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("err", "Không tìm thấy manager cần cập nhật.");
            request.getRequestDispatcher("Views/Admin/ManagerDetail.jsp").forward(request, response);
        }
    }

}
