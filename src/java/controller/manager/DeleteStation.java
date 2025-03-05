package controller.manager;

import dal.StationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author dinhphu
 */
public class DeleteStation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id_station = Integer.parseInt(request.getParameter("id_station"));
        System.out.println("Delete Station");
        System.out.println(id_station+"=========");
        StationDAO dao = new StationDAO();
        dao.deleteStation(id_station);
        
        response.sendRedirect("Manager");
    }

}
