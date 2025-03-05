package controller.manager;

import dal.TrainCarriageDAO;
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
public class DeleteCarriage extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id_train_carriage = Integer.parseInt(request.getParameter("id_train_carriage"));
        
        TrainCarriageDAO dao = new TrainCarriageDAO();
        dao.deleteTrainCarriage(id_train_carriage);
        
        response.sendRedirect("Manager");
    }

}
