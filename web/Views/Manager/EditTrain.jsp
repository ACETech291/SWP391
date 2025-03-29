<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.Train" %>

<%
    Train train = (Train) request.getAttribute("train");
    if (train == null) {
        response.sendRedirect("Manager?message=train_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Thông Tin Tàu</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        .container {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #f8f9fa;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            border-radius: 8px;
            font-size: 16px;
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            padding: 10px;
            width: 100%;
        }
        .btn-custom:hover {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Chỉnh Sửa Thông Tin Tàu</h2>

    <form action="EditTrain" method="POST">
        <input type="hidden" name="id_train" value="<%= train.getId_train() %>">

        <!-- Tên tàu -->
        <div class="mb-3">
            <label class="form-label">Tên tàu:</label>
            <input type="text" class="form-control" name="name_train" value="<%= train.getName_train() %>" required>
        </div>

        <!-- Mô tả -->
        <div class="mb-3">
            <label class="form-label">Mô tả:</label>
            <textarea class="form-control" name="description_train" rows="2" required><%= train.getDescription_train() %></textarea>
        </div>

        <!-- Trạng thái -->
        <div class="mb-3">
            <label class="form-label">Trạng thái:</label>
            <select name="id_status" class="form-select" required>
                <option value="">-- Chọn trạng thái --</option>
                <c:forEach var="status" items="${status_train}">
                    <option value="${status.id}" 
                        <c:if test="${status.id == train.id_status}">selected</c:if>>
                        ${status.statusName}
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-custom">Lưu</button>
            <a href="Manager" class="btn btn-outline-secondary">Huỷ</a>
        </div>
    </form>
</div>

</body>
</html>
