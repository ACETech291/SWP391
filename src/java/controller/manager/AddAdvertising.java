/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.AdvertisingDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import model.Advertising;
import model.Manager;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class AddAdvertising extends HttpServlet {
    
    private static final String UPLOAD_DIR = "images";  // Thư mục lưu ảnh

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Lấy thông tin từ form
        String description = request.getParameter("description");
        String content = request.getParameter("content");

        // Lấy thông tin user đang đăng nhập
        HttpSession session = request.getSession();
        Manager manager = (Manager) session.getAttribute("account");
        if (manager == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        int managerId = manager.getId_manager();

        // Xử lý upload ảnh
        Part filePart = request.getPart("image");
        String fileName = extractFileName(filePart);
        String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\advertising";
        System.out.println(uploadPath);
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Lưu vào database
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        boolean success = advertisingDAO.insertAdvertising("/images/advertising/" + fileName, description, managerId, content);
        
        if (success) {
        List<Advertising> listAdvertising = advertisingDAO.getAdvertisingByManagerId(manager.getId_manager());
        request.setAttribute("listAdvertising", listAdvertising);
        request.setAttribute("sucessAdded", "Thêm mới bản tin thành công");
        response.sendRedirect("AdvertisingManagement?success3=added"); // Quay lại trang quản lý
        } else {
            request.setAttribute("error", "Thêm bản tin thất bại!");
            request.getRequestDispatcher("Views/Manager/AdvertisingManagement.jsp").forward(request, response);
        }
    }

    // Lấy tên file ảnh
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "default.jpg";
    }
}
