/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.TrainBrandDAO;
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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TrainBrand;

/**
 *
 * @author Nguyen Ba Hien
 */
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class EditBrand extends HttpServlet {

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
            out.println("<title>Servlet EditBrand</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditBrand at " + request.getContextPath() + "</h1>");
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
        TrainBrandDAO advertisingDAO = new TrainBrandDAO();
        TrainBrand trainBrand = null;
        try {
            trainBrand = advertisingDAO.getTrainBrandById(id);
        } catch (SQLException ex) {
            Logger.getLogger(EditBrand.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (trainBrand != null) {
            request.setAttribute("trainBrand", trainBrand);
            request.getRequestDispatcher("Views/Manager/EditBrand.jsp").forward(request, response);
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
        int id = Integer.parseInt(request.getParameter("id_brand"));
        String name_brand = request.getParameter("name_brand");
        String content = request.getParameter("content");

        
        TrainBrandDAO trainBrandDAO = new TrainBrandDAO();
        TrainBrand trainBrand = null;
        try {
            trainBrand = trainBrandDAO.getTrainBrandById(id);
        } catch (SQLException ex) {
            Logger.getLogger(EditBrand.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (trainBrand == null) {
            response.sendRedirect("BrandManagement?error=notfound");
            return;
        }
        // Xử lý upload ảnh (nếu có file mới)
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String imagePath = trainBrand.getImage_train_brand(); // Ảnh cũ

        if (fileName != null && !fileName.isEmpty()) {
            //String uploadPath = getServletContext().getRealPath("/") + "images/advertising";
            String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\brands";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs(); // Tạo thư mục nếu chưa có

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);

            imagePath = "/images/brands/" + fileName; // Cập nhật ảnh mới
        }
        trainBrand.setName_train_brand(name_brand);
        trainBrand.setImage_train_brand(imagePath);
        trainBrand.setDescription_train_brand(content);

        // Cập nhật database
        boolean success=false;
        try {
            success = trainBrandDAO.updateTrainBrand(trainBrand);
        } catch (SQLException ex) {
            Logger.getLogger(EditBrand.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        if (success) {
            response.sendRedirect("BrandManagement?success1=updated");
        } else {
            request.setAttribute("error", "Cập nhật thất bại!");
            request.setAttribute("trainBrand", trainBrand);
            request.getRequestDispatcher("Views/Manager/EditBrand.jsp").forward(request, response);
        }
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
