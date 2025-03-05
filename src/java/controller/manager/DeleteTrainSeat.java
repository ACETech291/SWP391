package controller.manager;

import dal.TrainCarriageDAO;
import dal.TrainSeatDAO;
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
public class DeleteTrainSeat extends HttpServlet {

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

        response.sendRedirect("Manager");
    }

}
