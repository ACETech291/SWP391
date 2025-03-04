package controller;

import dal.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Admin;
import model.Customer;
import model.Manager;
import model.TrainBrand;
import until.Encoding;

/**
 *
 * @author Nguyen Ba Hien
 */
public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String pw = request.getParameter("password");
        String password = Encoding.toSHA1(pw);
        String rem = request.getParameter("remember");

        Cookie cookieEmail = new Cookie("cookieEmail", email);
        Cookie cookiePassword = new Cookie("cookiePassword", pw);
        Cookie cookieRemember = new Cookie("cookieRemember", rem);

        if (rem != null) {
            cookieEmail.setMaxAge(60 * 60 * 24 * 30);
            cookiePassword.setMaxAge(60 * 60 * 24 * 30);
            cookieRemember.setMaxAge(60 * 60 * 24 * 30);
        } else {
            cookieEmail.setMaxAge(0);
            cookiePassword.setMaxAge(0);
            cookieRemember.setMaxAge(0);
        }

        response.addCookie(cookieEmail);
        response.addCookie(cookiePassword);
        response.addCookie(cookieRemember);

        CustomerDAO cusDao = new CustomerDAO();
        ManagerDAO manDao = new ManagerDAO();
        AdminDAO adminDAO = new AdminDAO();

        HttpSession session = request.getSession();

        Customer acc = cusDao.getCustomer(email, password);
        Manager manAcc = manDao.getManagerByEmailAndPassword(email, password);
        Admin adminAcc = adminDAO.getAdmin(email, password);

        if (acc == null && manAcc == null && adminAcc == null) {
            request.setAttribute(email, "email");
            request.setAttribute("err", "Tài khoản hoặc mật khẩu không chính xác! Xin vui lòng nhập lại.");
            request.getRequestDispatcher("Views/Login.jsp").forward(request, response);
        } else {
            if (adminAcc != null) {
                session.setAttribute("admin", 1);
                session.setAttribute("account", adminAcc);
                System.out.println("Acc " + adminAcc);
                response.sendRedirect("home");
            } else if (manAcc != null) {
                session.setAttribute("manager", 2);
                session.setAttribute("account", manAcc);
                System.out.println("Acc " + manAcc);
                response.sendRedirect("home");
            } else {
                session.setAttribute("customer", 3);
                session.setAttribute("account", acc);
                System.out.println("Acc " + acc);
                response.sendRedirect("home");
            }
        }
    }
}
