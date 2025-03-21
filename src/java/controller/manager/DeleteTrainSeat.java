package controller.manager;

import dal.StatusDAO;
import dal.TrainCarriageDAO;
import dal.TrainDAO;
import dal.TrainSeatDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Status;
import model.Train;

/**
 *
 * @author dinhphu
 */
public class DeleteTrainSeat extends HttpServlet {
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
        int id_train_seat = Integer.parseInt(request.getParameter("id_train_seat"));

        TrainSeatDAO dao = new TrainSeatDAO();
        try {
            dao.deleteTrainSeatById(id_train_seat);
        } catch (SQLException ex) {
            Logger.getLogger(DeleteTrainSeat.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("seatmanagement");
    }

}
