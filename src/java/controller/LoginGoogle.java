package controller;

import dal.CustomerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.FileWriter;
import model.GoogleAccount;
import model.Customer;
import model.Role;
import model.SQLInsert;
import until.GoogleLogin;
import until.Encoding;
import until.PasswordUtil;

/**
 *
 * @author hiepg
 */
public class LoginGoogle extends HttpServlet {

    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();

        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_InsertCustomer.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true); BufferedWriter bufferedWriter = new BufferedWriter(writer)) {

            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm dòng vào file thành công!");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();

        String code = request.getParameter("code");
        GoogleLogin googleLogin = new GoogleLogin();
        String accessToken = googleLogin.getToken(code);
        GoogleAccount account = googleLogin.getUserInfo(accessToken);

        CustomerDAO customerDAO = new CustomerDAO();
        Customer customerCheck = customerDAO.getCustomerByEmail(account.getEmail());

        if (customerCheck == null) {
            String passwordRandom = PasswordUtil.generateRandomPassword(8);
            String passwordEncode = Encoding.toSHA1(passwordRandom);
            Role role = customerDAO.getRoleById(3);
            Customer customer = new Customer(account.getName(), "0123456", account.getEmail(), passwordEncode, 1, role);
            customerDAO.createAccount(customer);
            insertDatabase(customer);
            session.setAttribute("Customer", 3);
            session.setAttribute("account", customer);
            response.sendRedirect("home");
        } else {
            if (customerCheck.getRole().getId() == 1) {
                session.setAttribute("admin", 1);
                session.setAttribute("account", customerCheck);
                request.getRequestDispatcher("home").forward(request, response);
            }
            if (customerCheck.getRole().getId() == 2) {
                session.setAttribute("manager", 2);
                session.setAttribute("account", customerCheck);
                request.getRequestDispatcher("home").forward(request, response);
            }
            if (customerCheck.getRole().getId() == 3) {
                session.setAttribute("customer", 3);
                session.setAttribute("account", customerCheck);
                request.getRequestDispatcher("home").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
