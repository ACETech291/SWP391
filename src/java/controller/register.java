/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.OtpDAO;
import model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.List;
import model.Role;
import model.OTP;
import until.EmailService;
import until.Encoding;
<<<<<<< HEAD
import model.SQLInsert;
import java.io.*;
=======
import until.OTPService;
>>>>>>> 8aacc370867458d8012d7e85444b2cd1c6cd28e7

/**
 *
 * @author Nguyen Ba Hien
 */
public class register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();

        
        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Create.ddl.sql";


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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        request.getRequestDispatcher("Views/Register.jsp").forward(request, response);

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
        int customer_id_fake = 1;
        HttpSession session = request.getSession();
        OtpDAO otpDAO = new OtpDAO();
        OTPService otpService = new OTPService();
        CustomerDAO customerDAO = new CustomerDAO();
        List<Customer> listCustomer = customerDAO.getAllCustomer();
        String userName = request.getParameter("Name");
        String phone = request.getParameter("phoneNumber");
        String email = request.getParameter("emailAddress");
        String raw_password = request.getParameter("password");
        String password = Encoding.toSHA1(raw_password);
        String cf = request.getParameter("confirmpassword");
        String confirmpassword = Encoding.toSHA1(cf);

        int check = 1;

        if (raw_password.length() < 6) {
            check = 2;
            request.setAttribute(email, "email");
            request.setAttribute(userName, "name");
            request.setAttribute(phone, "phone");
            request.setAttribute("error1", "Mật khẩu phải chứa ít nhất 6 kí tự");
            request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
            return;
        }
        if (!password.equals(confirmpassword)) {
            check = 2;
            request.setAttribute(email, "email");
            request.setAttribute(userName, "name");
            request.setAttribute(phone, "phone");
            request.setAttribute("error1", "Đăng Kí Thất Bại");
            request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
            return;
        }

        Role role = customerDAO.getRoleById(3);
        for (Customer customer : listCustomer) {
            System.out.println(customer.toString());
        }
        for (Customer customer : listCustomer) {
            System.out.println(customer.toString());
            System.out.println(role.toString());
            if (customer.getEmail().equalsIgnoreCase(email)) {
                check = 3;
            }

        }

        if (check == 1) {
            Customer newCustomer = new Customer(userName, phone, email, password, 1, role);
            session.setAttribute("newCustomer", newCustomer);
            System.out.println(newCustomer.toString());
<<<<<<< HEAD
            insertDatabase(newCustomer);
            cu.createAccount(newCustomer);
            request.setAttribute("Success", "Tạo tài khoản thành công!!!");
=======
            request.setAttribute("email", newCustomer.getEmail());
            String otpCode = otpService.generateOtp();
            session.setAttribute("otpCode", otpCode);
            customer_id_fake +=1;
            OTP otp = new OTP(0, false, otpCode, otpService.expireDateTime());
            otpDAO.insertOtp(otp);
            EmailService.sendEmail2(newCustomer.getEmail(),"Verify email -"+System.currentTimeMillis(), otpCode );
            request.getRequestDispatcher("OtpService").forward(request, response);
            return;

>>>>>>> 8aacc370867458d8012d7e85444b2cd1c6cd28e7
        } else if (check == 3) {
            request.setAttribute("error1", "Email đã có người sử dụng!!!");
        }
        request.getRequestDispatcher("Views/Register.jsp").forward(request, response);
        return;
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
