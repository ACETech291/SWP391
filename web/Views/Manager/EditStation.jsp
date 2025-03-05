<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.Station" %>

<%
    Station station = (Station) request.getAttribute("station");
    if (station == null) {
        response.sendRedirect("ManagerStation?message=station_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chỉnh sửa nhà ga</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h2>Chỉnh sửa thông tin nhà ga</h2>
        <form action="EditStation" method="POST">
            <input type="hidden" name="id_station" value="<%= station.getId_station() %>">

            <label for="name_station">Tên nhà ga:</label>
            <input type="text" id="name_station" name="name_station" value="<%= station.getName_station() %>" required>
            <br>

            <label for="description_station">Mô tả:</label>
            <textarea id="description_station" name="description_station" required><%= station.getDescription_station() %></textarea>
            <br>

            <button type="submit" class="btn btn-success">Lưu thay đổi</button>
            <a href="Manager" class="btn btn-danger">Hủy</a>
        </form>
    </body>
</html>
