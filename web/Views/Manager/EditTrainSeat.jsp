<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.TrainSeat" %>

<%
    TrainSeat trainSeat = (TrainSeat) request.getAttribute("trainSeat");
    if (trainSeat == null) {
        response.sendRedirect("Manager?message=seat_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Ghế Tàu</title>
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
            background-color: #17a2b8;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            padding: 10px;
            width: 100%;
        }
        .btn-custom:hover {
            background-color: #117a8b;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Chỉnh Sửa Ghế Tàu</h2>

    <form action="EditTrainSeat" method="POST">
        <input type="hidden" name="id_train_seat" value="<%= trainSeat.getId_train_seat() %>">
        <input type="hidden" name="id_train_carriage" value="<%= trainSeat.getId_train_carriage() %>">

        <!-- Mã ghế -->
        <div class="mb-3">
            <label class="form-label">Mã ghế:</label>
            <input type="text" class="form-control" name="code_train_seat" value="<%= trainSeat.getCode_train_seat() %>" required>
        </div>

        <!-- Giá ghế -->
        <div class="mb-3">
            <label class="form-label">Giá ghế:</label>
            <input type="number" class="form-control" name="price_seat" value="<%= trainSeat.getPrice_seat() %>" required>
        </div>

        <!-- Trạng thái -->
        <div class="mb-3">
            <label class="form-label">Trạng thái:</label>
            <select name="id_status" class="form-select" required>
                <option value="">Chọn trạng thái</option>
                <c:forEach var="status" items="${status_carriage}">
                    <option value="${status.id}" <c:if test="${status.id == trainSeat.getId_status()}">selected</c:if>>
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
