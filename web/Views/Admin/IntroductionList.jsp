<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hướng dẫn đặt vé</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            function searchPolicy() {
                let input = document.getElementById("searchInput").value.toLowerCase();
                let rows = document.querySelectorAll("#policyTable tbody tr");

                rows.forEach(row => {
                    let content = row.getElementsByTagName("td")[1].innerText.toLowerCase();
                    row.style.display = content.includes(input) ? "" : "none";
                });
            }
        </script>
    </head>
    <body>
        <div class="container mt-4">
            <h2 class="text-center text-primary">Hướng dẫn đặt vé</h2>

            <!-- Thanh tìm kiếm -->
            <!-- Bảng danh sách chính sách -->
            <%
                        String successEdit = request.getParameter("success1");
                        if ("updated".equals(successEdit)) {
                    %>
                    <div style="color: green;">Cập nhật hướng dẫn thành công!</div>
                    <% }%>
            <table id="policyTable" class="table table-hover table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Nội dung</th>
                        <th>Thời gian thay đổi</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${introduction.content}</td>
                        <td>${introduction.create_at}</td>
                        <td>
                            <span class="badge ${introduction.status_introduction == 1 ? 'bg-success' : 'bg-danger'}">
                                ${introduction.status_introduction == 1 ? "Hoạt động" : "Không hoạt động"}
                            </span>
                        </td>
                        <td>
                            <a href="EditIntroduction?id=${introduction.id_introduction}" class="btn btn-warning btn-sm">
                                <i class="fas fa-edit"></i> Sửa
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
                                <a href="dashboard" class="btn btn-warning btn-sm">
                                <i class="fas fa-edit"></i> quay về
                            </a>
            <!-- Nút Thêm Chính Sách -->

        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </body>
</html>
