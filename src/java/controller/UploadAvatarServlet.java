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
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class UploadAvatarServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "images/avatar";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Part filePart = request.getPart("avatar");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        CustomerDAO customerDAO = new CustomerDAO();
        if (fileName == null || fileName.isEmpty()) {
            request.setAttribute("err2", "Tải ảnh lên thành công thất bại");
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        }
        System.out.println(fileName);
        // Lưu ảnh vào thư mục
        String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\avatar";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Lưu đường dẫn ảnh vào database (giả sử có userId)
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("account");
        System.out.println(customer);
        System.out.println(customer.getId_customer());
        customerDAO.updateAvatarPath(String.valueOf(customer.getEmail()), "/images/avatar/" + fileName);
        request.setAttribute("success2", "Tải ảnh lên thành công");
        // Chuyển hướng về trang profile
        request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
    }

}

