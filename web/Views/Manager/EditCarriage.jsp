<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa khoang tàu</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Chỉnh sửa khoang tàu</h2>
    <form action="EditCarriage" method="POST">
        <input type="hidden" name="id_train_carriage" value="<%= carriage.getId_train_carriage() %>">

        <label for="name_train_carriage">Tên khoang:</label>
        <input type="text" id="name_train_carriage" name="name_train_carriage" value="<%= carriage.getName_train_carriage() %>" required>
        <br>

        <label for="description_train_carriage">Mô tả:</label>
        <textarea id="description_train_carriage" name="description_train_carriage" required><%= carriage.getDescription_train_carriage() %></textarea>
        <br>

        <!-- Chọn trạng thái -->
        <label for="id_status">Trạng thái:</label>
        <select id="id_status" name="id_status" required>
            <c:forEach var="status" items="${status_carriage}">
                <option value="${status.id}" ${status.id == carriage.id_status ? 'selected' : ''}>${status.statusName}</option>
            </c:forEach>
        </select>
        <br>

        <label for="total_seat">Tổng số ghế:</label>
        <input type="number" id="total_seat" name="total_seat" value="<%= carriage.getTotal_seat() %>" required>
        <br><br>

        <button type="submit" class="btn btn-success">Lưu thay đổi</button>
        <a href="Manager" class="btn btn-danger">Hủy</a>
    </form>
</body>
</html>
