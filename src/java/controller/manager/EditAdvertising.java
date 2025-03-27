/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.AdvertisingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Paths;
import model.Advertising;

/**
 *
 * @author Nguyen Ba Hien
 */
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class EditAdvertising extends HttpServlet {
    private static final String UPLOAD_DIR = "images/advertising";

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
            out.println("<title>Servlet EditAdvertising</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditAdvertising at " + request.getContextPath() + "</h1>");
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
        
        int id = Integer.parseInt(request.getParameter("id"));
        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        Advertising ad = advertisingDAO.getAdvertisingById(request.getParameter("id"));

        if (ad != null) {
            request.setAttribute("advertising", ad);
            request.getRequestDispatcher("Views/Manager/EditAdvertising.jsp").forward(request, response);
        } else {
            response.sendRedirect("ManagerAdvertising?error=notfound");
        }
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
        
        int id = Integer.parseInt(request.getParameter("id_advertising"));
        String description = request.getParameter("description");
        String content = request.getParameter("content");

        AdvertisingDAO advertisingDAO = new AdvertisingDAO();
        Advertising ad = advertisingDAO.getAdvertisingById(request.getParameter("id_advertising"));

        if (ad == null) {
            response.sendRedirect("ManagerAdvertising?error=notfound");
            return;
        }

        // Xử lý upload ảnh (nếu có file mới)
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String imagePath = ad.getImage_advertising(); // Ảnh cũ

        if (fileName != null && !fileName.isEmpty()) {
            //String uploadPath = getServletContext().getRealPath("/") + "images/advertising";
            String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\advertising";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs(); // Tạo thư mục nếu chưa có

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);

            imagePath = "/images/advertising/" + fileName; // Cập nhật ảnh mới
        }

        // Cập nhật database
        boolean success = advertisingDAO.updateAdvertising(id, imagePath, description, content);
        
        if (success) {
            response.sendRedirect("AdvertisingManagement?success1=updated");
        } else {
            request.setAttribute("error", "Cập nhật thất bại!");
            request.setAttribute("advertising", ad);
            request.getRequestDispatcher("Views/Manager/EditAdvertising.jsp").forward(request, response);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
