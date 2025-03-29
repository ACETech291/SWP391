/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.manager;

import dal.StationDAO;
import dal.StatusDAO;
import dal.TrainCarriageDAO;
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
import java.util.List;
import java.util.UUID;
import model.Station;
import model.Status;
import model.TrainCarriage;

/**
 *
 * @author dinhphu
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class EditStation extends HttpServlet {

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
        int id_station = Integer.parseInt(request.getParameter("id"));

        // Lấy thông tin tàu từ database
        StationDAO dao = new StationDAO();
        Station station = dao.getStationById(id_station);

        // Kiểm tra nếu tàu không tồn tại
        if (station == null) {
            response.sendRedirect("Manager?message=station_not_found");
            return;
        }

        // Truyền dữ liệu sang trang JSP
        request.setAttribute("station", station);
        request.getRequestDispatcher("Views/Manager/EditStation.jsp").forward(request, response);
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

        int id = Integer.parseInt(request.getParameter("id_station"));
        String description = request.getParameter("description_station");
        String content = request.getParameter("content");

        StationDAO stationDAO = new StationDAO();
        Station station = stationDAO.getStationById(id);

        if (station == null) {
            response.sendRedirect("StationManagement?error=notfound");
            return;
        }

        // Xử lý upload ảnh (nếu có file mới)
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String imagePath = station.getImage_station(); // Giữ ảnh cũ nếu không upload mới

        if (fileName != null && !fileName.isEmpty()) {
            String uploadPath = "D:\\SWPFinal\\SWP391\\web\\images\\stations";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs(); // Tạo thư mục nếu chưa có
            }

            // Xóa ảnh cũ nếu có
            String oldImage = station.getImage_station();
            if (oldImage != null && !oldImage.equals("/images/avatar/default.png")) {
                File oldFile = new File(uploadPath + File.separator + Paths.get(oldImage).getFileName());
                if (oldFile.exists()) {
                    oldFile.delete();
                }
            }

            // Tạo file mới kèm UUID
            String uuid = UUID.randomUUID().toString();
            String extension = fileName.substring(fileName.lastIndexOf("."));
            String newFileName = uuid + extension;

            // Ghi file mới
            String filePath = uploadPath + File.separator + newFileName;
            filePart.write(filePath);

            // Update đường dẫn ảnh mới
            imagePath = "/images/stations/" + newFileName;
        }

        // Cập nhật database
        boolean success = stationDAO.updateStation(id, imagePath, description, content);

        if (success) {
            response.sendRedirect("stationmanagement?success=updated");
        } else {
            request.setAttribute("error", "Cập nhật thất bại!");
            request.setAttribute("station", station);
            request.getRequestDispatcher("Views/Manager/EditStation.jsp").forward(request, response);
        }
    }
}
