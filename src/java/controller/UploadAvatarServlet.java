/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Paths;
import model.Customer;

/**
 *
 * @author Nguyen Ba Hien
 */
@WebServlet("/uploadAvatar")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class UploadAvatarServlet extends HttpServlet {

    private static final String UPLOAD_DIR = "images/avatar";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("avatar");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        CustomerDAO customerDAO = new CustomerDAO();
        HttpSession session = request.getSession();
        if (fileName == null || fileName.isEmpty()) {
            Customer customer = (Customer) session.getAttribute("account");
            session.setAttribute("account", customer);
            request.setAttribute("err2", "Tải ảnh lên không thành công");
            request.setAttribute("img", customer.getImage_url());
            request.setAttribute("email", customer.getEmail());
            request.setAttribute("name", customer.getUserName());
            request.setAttribute("phone", customer.getPhoneNumber());
            request.setAttribute("img", customer.getImage_url());
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        } else {
            System.out.println(fileName);
            // Lưu ảnh vào thư mục
            String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\avatar";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);

            // Lưu đường dẫn ảnh vào database (giả sử có userId)
            Customer customer = (Customer) session.getAttribute("account");
            customerDAO.updateAvatarPath(customer.getEmail(), "/images/avatar/" + fileName);

            customer.setImage_url("/images/avatar/" + fileName);
            customerDAO.updateAvatarPath(String.valueOf(customer.getEmail()), "/images/avatar/" + fileName);
            request.setAttribute("success2", "Tải ảnh lên thành công");
            request.setAttribute("img", customer.getImage_url());
            request.setAttribute("email", customer.getEmail());
            request.setAttribute("name", customer.getUserName());
            request.setAttribute("phone", customer.getPhoneNumber());
            request.setAttribute("img", customer.getImage_url());
            // Chuyển hướng về trang profile
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
        }
    }

}
