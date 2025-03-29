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
import java.util.UUID;
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
            request.setAttribute("err2", "Tải ảnh lên không thành công");
            request.setAttribute("img", customer.getImage_url());
            request.setAttribute("email", customer.getEmail());
            request.setAttribute("name", customer.getUserName());
            request.setAttribute("phone", customer.getPhoneNumber());
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
            return;
        } else {
            // --- Tạo tên file mới ---
            String uuid = UUID.randomUUID().toString();
            String extension = fileName.substring(fileName.lastIndexOf(".")); // lấy đuôi ảnh .jpg .png
            String newFileName = uuid + extension;

            // --- Tạo thư mục upload ---
            String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\avatar";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            // --- XÓA ẢNH CŨ ---
            Customer customer = (Customer) session.getAttribute("account");
            String oldImage = customer.getImage_url();
            if (oldImage != null && !oldImage.equals("/images/avatar/default.png")) {
                File oldFile = new File(uploadPath + File.separator + Paths.get(oldImage).getFileName());
                if (oldFile.exists()) {
                    oldFile.delete();
                }
            }

            // --- Ghi file vào đúng thư mục ---
            filePart.write(uploadPath + File.separator + newFileName);

            // --- Update DB ---
            String relativePath = "/images/avatar/" + newFileName;
            customer.setImage_url(relativePath);
            customerDAO.updateAvatarPath(customer.getEmail(), relativePath);

            // --- Truyền dữ liệu về JSP ---
            request.setAttribute("success2", "Tải ảnh lên thành công, vui lòng chờ trong chốc lát rồi tải lại trang!");
            request.setAttribute("img", customer.getImage_url());
            request.setAttribute("email", customer.getEmail());
            request.setAttribute("name", customer.getUserName());
            request.setAttribute("phone", customer.getPhoneNumber());
            request.getRequestDispatcher("Views/Profile.jsp").forward(request, response);
        }
    }

}
