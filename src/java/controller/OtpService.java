/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.OtpDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.FileWriter;
import model.Customer;
import model.OTP;
import model.SQLInsert;
import until.EmailService;
import until.OTPService;

/**
 *
 * @author Nguyen Ba Hien
 */
public class OtpService extends HttpServlet {

    public void insertDatabase(SQLInsert x) {
        String add = x.toSQLInsert();

        String filePath = "D:\\SWPFinal\\SWP391\\database\\Train_Buying_Ticket_Insert.ddl.sql";

        try (FileWriter writer = new FileWriter(filePath, true); BufferedWriter bufferedWriter = new BufferedWriter(writer)) {

            bufferedWriter.write(add);
            bufferedWriter.newLine();
            System.out.println("Đã ghi thêm dòng vào file thành công!");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OtpService</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OtpService at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session = request.getSession();
            CustomerDAO customerDAO = new CustomerDAO();
            OtpDAO otpDAO = new OtpDAO();
            String email = (String) request.getAttribute("email");
            String otp = (String) session.getAttribute("otpCode");
            System.out.println(otp);
            if (otp != null) {
                OTP myOtp = otpDAO.getOTP(otp);
                EmailService service = new EmailService();
                System.out.println(myOtp.toString());
                if (myOtp == null) {
                    request.setAttribute("err", "otp không hợp lệ");
                    request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
                    return;
                }
                if (myOtp.isIsUsed()) {
                    request.setAttribute("err", "otp đã được sử dụng");
                    request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
                    return;
                }
                if (service.isExpireTime(myOtp.getExpiryTime())) {
                    request.setAttribute("err", "otp đã quá thời hạn");
                    session.removeAttribute("otpCode");
                    request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
                    return;
                }
                request.setAttribute("email", email);
                session.setAttribute("otp", myOtp.getCode());
                System.out.println("last otp :" + myOtp.getCode());
                request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
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
        CustomerDAO customerDAO = new CustomerDAO();
        HttpSession session = request.getSession();
        Customer newCustomer = (Customer) session.getAttribute("newCustomer");
        OtpDAO otpDAO = new OtpDAO();
        String input_otp = request.getParameter("otp");
        String otpCode = (String) session.getAttribute("otpCode");

        if (!input_otp.equalsIgnoreCase(otpCode)) {
            request.setAttribute("err", "Mã otp không đúng, vui lòng nhập lại");
            request.setAttribute("email", newCustomer.getEmail());
            request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
            return;
        }

        OTP instance_otp = otpDAO.getOTP(otpCode);
        OTPService otpService = new OTPService();
        System.out.println("otp done :" + instance_otp.getCode());

        if (otpService.isExpireTime(instance_otp.getExpiryTime())) {
            request.setAttribute("err", "Mã otp đã hết thời hạn");
            request.setAttribute("email", newCustomer.getEmail());

            request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
            return;
        }

        instance_otp.setIsUsed(true);

        otpDAO.updateStatusOtp(instance_otp);

        System.out.println("user done :" + newCustomer.toString());
        customerDAO.createAccount(newCustomer);
        insertDatabase(newCustomer);
        session.removeAttribute("newCustomer");
        request.setAttribute("success", "Bạn đã đăng ký tài khoản thành công");
        request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        OtpDAO otpDAO = new OtpDAO();
        String old_otp = (String) session.getAttribute("otpCode");
        OTP otp_instance = otpDAO.getOTP(old_otp);
        otpDAO.updateStatusOtp(otp_instance);
        session.removeAttribute("otpCode");
        OTPService otpService = new OTPService();
        Customer newCustomer = (Customer) session.getAttribute("newCustomer");
        String otpCode = otpService.generateOtp();
        session.setAttribute("otpCode", otpCode);
        OTP otp = new OTP(newCustomer.getEmail(), false, otpCode, otpService.expireDateTime());
        otpDAO.insertOtp(otp);
        request.setAttribute("email", newCustomer.getEmail());
        System.out.println("Post, otp");
        EmailService.sendEmail2(newCustomer.getEmail(), "Verify email -" + System.currentTimeMillis(), otpCode);
        request.setAttribute("otpsend", "Gửi mã Opt thành công. Vui lòng kiểm tra hộp thư email của bạn");
        request.getRequestDispatcher("Views/VerifyEmail.jsp").forward(request, response);
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
