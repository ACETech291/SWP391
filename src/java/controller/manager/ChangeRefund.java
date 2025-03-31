package controller.manager;

import dal.PurchaseHistoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dinhphu
 */
public class ChangeRefund extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect("Views/Manager/CustomerManagement.jsp");
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int idStr = Integer.parseInt( request.getParameter("id_purchase_history"));
        PurchaseHistoryDAO dao = new PurchaseHistoryDAO();
        try {
            dao.change(idStr);
        } catch (SQLException ex) {
            Logger.getLogger(ChangeRefund.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("Views/Manager/CustomerManagement.jsp").forward(request, response);
    }
}
