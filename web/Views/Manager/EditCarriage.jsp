<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.TrainCarriage" %>

<%
    TrainCarriage carriage = (TrainCarriage) request.getAttribute("trainCarriage");
    if (carriage == null) {
        response.sendRedirect("Manager?message=carriage_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Khoang Tàu</title>
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
    <h2 class="text-center mb-4">Chỉnh Sửa Khoang Tàu</h2>

    <form action="EditCarriage" method="POST">
        <input type="hidden" name="id_train_carriage" value="<%= carriage.getId_train_carriage() %>">

        <!-- Tên khoang -->
        <div class="mb-3">
            <label class="form-label">Tên khoang:</label>
            <input type="text" class="form-control" name="name_train_carriage" value="<%= carriage.getName_train_carriage() %>" required>
        </div>

        <!-- Mô tả -->
        <div class="mb-3">
            <label class="form-label">Mô tả:</label>
            <textarea class="form-control" name="description_train_carriage" rows="2" required><%= carriage.getDescription_train_carriage() %></textarea>
        </div>

        <!-- Trạng thái -->
        <div class="mb-3">
            <label class="form-label">Trạng thái:</label>
            <select name="id_status" class="form-select" required>
                <c:forEach var="status" items="${status_carriage}">
                    <option value="${status.id}" <c:if test="${status.id == carriage.id_status}">selected</c:if>>${status.statusName}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Tổng số ghế -->
        <div class="mb-3">
            <label class="form-label">Tổng số ghế:</label>
            <input type="number" class="form-control" name="total_seat" value="<%= carriage.getTotal_seat() %>" required>
        </div>

        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-custom">Lưu</button>
            <a href="Manager" class="btn btn-outline-secondary">Huỷ</a>
        </div>
    </form>
</div>

</body>
</html>
