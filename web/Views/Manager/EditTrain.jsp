<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.Train" %>
<%@page import="java.util.List" %>

<%
    Train train = (Train) request.getAttribute("train");
    if (train == null) {
        response.sendRedirect("Manager?message=train_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chỉnh sửa tàu</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h2>Chỉnh sửa thông tin tàu</h2>
        <form action="EditTrain" method="POST">
            <input type="hidden" name="id_train" value="<%= train.getId_train() %>">

            <label for="name_train">Tên tàu:</label>
            <input type="text" id="name_train" name="name_train" value="<%= train.getName_train() %>" required>
            <br>

            <label for="description_train">Mô tả:</label>
            <textarea id="description_train" name="description_train" required><%= train.getDescription_train() %></textarea>
            <br>

            <!-- Chọn trạng thái -->
            <label for="id_status">Trạng thái:</label>
            <select id="id_status" name="id_status" required>
                <option value="">X
                </option>
                <c:forEach var="status" items="${status_train}">
                    <option value="${status.id}">${status.statusName}</option>
                </c:forEach>
            </select>
            <br><br>

            <button type="submit" class="btn btn-success">Lưu thay đổi</button>
            <a href="Manager" class="btn btn-danger">Hủy</a>
        </form>
    </body>
</html>
