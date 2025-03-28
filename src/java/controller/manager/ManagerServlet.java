package controller.manager;

import dal.DashboardManagerDAO;
import dal.ManagerDAO;
import dal.TripDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Calendar;
import java.util.List;
import model.Manager;
import model.TripDTO;

public class ManagerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        TripDAO tripDAO = new TripDAO();
        ManagerDAO managerDAO = new ManagerDAO();
        DashboardManagerDAO dashboardManagerDAO = new DashboardManagerDAO();

        // Lấy đối tượng manager đăng nhập từ session (đã được lưu khi login)
        Manager currentManager = (Manager) request.getSession().getAttribute("account");
        List<TripDTO> trips = tripDAO.getTripsByTrainBrand(currentManager.getId_manager());

        // Lấy id_train_brand từ session (đã được lưu trong quá trình login)
        Integer trainBrandId = (Integer) request.getSession().getAttribute("id_train_brand");
        List<Manager> managers = managerDAO.getManagersByTrainBrand(trainBrandId);

        Calendar cal = Calendar.getInstance();
        int month = cal.get(Calendar.MONTH) + 1;
        int year = cal.get(Calendar.YEAR);

        // Lấy doanh thu, vé bán ra và vé huỷ của tháng hiện tại theo hãng
        double revenue = dashboardManagerDAO.getMonthlyRevenueByBrand(month, year, trainBrandId);
        int totalTickets = dashboardManagerDAO.getTotalTicketsSoldByBrand(month, year, trainBrandId);
        int canceledTickets = dashboardManagerDAO.getCanceledTicketsByBrand(month, year, trainBrandId);
        double cancellationRate = totalTickets > 0 ? ((double) canceledTickets / totalTickets * 100) : 0;

        // Lấy danh sách doanh thu và số vé bán ra cho cả năm theo hãng
        List<Double> monthlyRevenues = dashboardManagerDAO.getMonthlyRevenuesByBrand(year, trainBrandId);
        List<Integer> monthlyTickets = dashboardManagerDAO.getMonthlyTicketsByBrand(year, trainBrandId);

        // Tính tổng doanh thu và tổng vé bán ra của cả năm
        double totalRevenueYear = 0;
        int totalTicketsYear = 0;
        for (Double rev : monthlyRevenues) {
            totalRevenueYear += rev;
        }
        for (Integer tkt : monthlyTickets) {
            totalTicketsYear += tkt;
        }

        // Chuyển danh sách dữ liệu thành JSON để dùng cho biểu đồ (dùng Gson)
        String revenueJson = new com.google.gson.Gson().toJson(monthlyRevenues);
        String ticketsJson = new com.google.gson.Gson().toJson(monthlyTickets);

        // Set các attribute để sử dụng trong JSP
        request.setAttribute("averageRevenue", totalRevenueYear);
        request.setAttribute("totalTicketsYear", totalTicketsYear);
        request.setAttribute("monthlyRevenues", monthlyRevenues);
        request.setAttribute("monthlyTickets", monthlyTickets);
        request.setAttribute("revenueJson", revenueJson);
        request.setAttribute("ticketsJson", ticketsJson);
        request.setAttribute("trips", trips);
        request.setAttribute("managers", managers);
        request.setAttribute("revenue", revenue);
        request.setAttribute("totalTickets", totalTickets);
        request.setAttribute("cancellationRate", cancellationRate);
        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
