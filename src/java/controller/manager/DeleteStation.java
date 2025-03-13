package controller.manager;

import dal.StationDAO;
import dal.StatusDAO;
import dal.TrainDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class DeleteStation extends HttpServlet {
       @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        StatusDAO sDAO = new StatusDAO();
        List<Status> statusTrain = sDAO.getStatusTrain();
        request.setAttribute("status_train", statusTrain);

        List<Status> statusCarriage = sDAO.getStatusSeat();
        request.setAttribute("status_carriage", statusCarriage);

        TrainDAO tDAO = new TrainDAO();
        List<Train> topTrains = tDAO.getTopTrains(10);
        request.setAttribute("topTrains", topTrains);

        request.getRequestDispatcher("Views/Manager/Manager.jsp").forward(request, response);
    
    }
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
