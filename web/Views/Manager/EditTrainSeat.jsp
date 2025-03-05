<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa ghế tàu</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Chỉnh sửa thông tin ghế</h2>
    <form action="EditTrainSeat" method="POST">
        <input type="hidden" name="id_train_seat" value="<%= trainSeat.getId_train_seat() %>">
        <input type="hidden" name="id_train_carriage" value="<%= trainSeat.getId_train_carriage() %>">

        <label for="code_train_seat">Mã ghế:</label>
        <input type="text" id="code_train_seat" name="code_train_seat" value="<%= trainSeat.getCode_train_seat() %>" required>
        <br>

        <label for="price_seat">Giá ghế:</label>
        <input type="number" id="price_seat" name="price_seat" value="<%= trainSeat.getPrice_seat() %>" required>
        <br>

        <!-- Chọn trạng thái -->
        <label for="id_status">Trạng thái:</label>
        <select id="id_status" name="id_status" required>
            <option value="">Chọn trạng thái</option>
            <c:forEach var="status" items="${status_carriage}">
                <option value="${status.id}" 
                        ${status.id == trainSeat.getId_status() ? "selected" : ""}>
                    ${status.statusName}
                </option>
            </c:forEach>
        </select>
        <br><br>

        <button type="submit" class="btn btn-success">Lưu thay đổi</button>
        <a href="Manager" class="btn btn-danger">Hủy</a>
    </form>
</body>
</html>
