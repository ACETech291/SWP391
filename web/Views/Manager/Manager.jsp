<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Train"%>
<%@page import="dal.TrainDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý tàu</title>
        <style>
            /* CSS cho thanh navbar */
            .navbar {
                overflow: hidden;
                background-color: #333;
            }

            .navbar a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 20px;
                text-decoration: none;
            }

            .navbar a:hover {
                background-color: #ddd;
                color: black;
            }

            /* CSS cho section quản lý tàu */
            .train-management {
                margin: 20px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
            }

            .train-management h2 {
                margin-bottom: 20px;
            }

            .add-button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .add-button:hover {
                background-color: #45a049;
            }

            .train-list {
                margin-top: 20px;
            }

            .train-list table {
                width: 100%;
                border-collapse: collapse;
            }

            .train-list th, .train-list td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            .train-list th {
                background-color: #f2f2f2;
            }

            .train-list tr:hover {
                background-color: #f1f1f1;
            }

            /* CSS cho form thêm tàu */
            .add-train-form {
                display: none; /* Ẩn form ban đầu */
                margin-top: 20px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            .add-train-form input[type="text"],
            .add-train-form input[type="number"] {
                width: 100%;
                padding: 8px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .add-train-form button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .add-train-form button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <!-- Thanh navbar -->
        <div class="navbar">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#services">Services</a>
            <a href="#contact">Contact</a>
        </div>

        <!-- Section quản lý tàu -->
        <div class="train-management">
            <h2>Quản lý tàu</h2>
            <!-- Nút thêm mới -->
            <button class="add-button" onclick="toggleAddTrainForm()">Thêm mới</button>

            <!-- Form thêm tàu -->
            <div id="addTrain" class="add-train-form">
                <h3>Thêm tàu mới</h3>
                <form id="trainForm" action="AddTrain" method="POST">
                    <label for="name_train">Tên tàu:</label>
                    <input type="text" id="name_train" name="name_train" required>

                    <label for="description_train">Mô tả:</label>
                    <input type="text" id="description_train" name="description_train" required>

                    <label for="id_train_brand">ID thương hiệu:</label>
                    <input type="number" id="id_train_brand" name="id_train_brand" required>

                    <label for="id_status">ID trạng thái:</label>
                    <input type="number" id="id_status" name="id_status" required>

                    <button type="submit">Lưu</button>
                    <button type="button" onclick="toggleAddTrainForm()">Hủy</button>
                </form>
            </div>

            <!-- Danh sách tàu -->
            <div class="train-list">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên tàu</th>
                            <th>Mô tả</th>
                            <th>Mã tàu</th>
                            <th>ID thương hiệu</th>
                            <th>ID trạng thái</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody id="trainTableBody">

                    </tbody>
                </table>
            </div>
        </div>

        <script>
            // Hàm hiển thị/ẩn form thêm tàu
            function toggleAddTrainForm() {
                const form = document.getElementById("addTrain");
                if (form.style.display === "none" || form.style.display === "") {
                    form.style.display = "block"; // Hiển thị form
                } else {
                    form.style.display = "none"; // Ẩn form
                }
            }

            // Hàm sửa tàu
            function editTrain(trainId) {
                alert("Sửa tàu có ID: " + trainId);
                // Có thể chuyển hướng đến trang sửa tàu với ID tương ứng
                // window.location.href = "EditTrain.jsp?id=" + trainId;
            }

            // Hàm xóa tàu
            function deleteTrain(trainId) {
                if (confirm("Bạn có chắc chắn muốn xóa tàu này?")) {
                    // Gửi yêu cầu xóa tàu đến servlet
                    window.location.href = "DeleteTrainServlet?id=" + trainId;
                }
            }
        </script>
    </body>
</html>