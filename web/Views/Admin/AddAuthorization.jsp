<%-- 
    Document   : AddAuthorization
    Created on : Mar 9, 2025, 11:20:02 AM
    Author     : Nguyen Ba Hien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Phân Quyền</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 50px;
            }
            form {
                width: 50%;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            }
            label {
                font-weight: bold;
            }
            input, select {
                width: 100%;
                padding: 8px;
                margin: 5px 0 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            button {
                width: 100%;
                padding: 10px;
                background-color: green;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            button:hover {
                background-color: darkgreen;
            }
            .back-link {
                display: block;
                text-align: center;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>
        <h2 style="text-align: center;">Thêm Phân Quyền</h2>
        <p id="messageBox">${message}</p>
        <form action="AddAuthorization" method="post">
            <!-- Chọn Role ID từ 1 - 4 -->
            <label for="role_id">Chọn Role:</label>
            <select name="role_id" id="role_id" required onchange="hideMessage()">
                <c:forEach var="role" items="${roleList}">
                    <option name="role_id" value="${role.id}">
                        <c:choose>
                            <c:when test="${role.role_name == 'admin'}">Admin</c:when>
                            <c:when test="${role.role_name == 'manager'}">Người quản lí</c:when>
                            <c:when test="${role.role_name == 'customer'}">Người dùng đã đăng nhập</c:when>
                            <c:when test="${role.role_name == 'guest'}">Người dùng chưa đăng nhập</c:when>
                            <c:otherwise>${role.role_name}</c:otherwise> 
                        </c:choose>
                    </option>
                </c:forEach>
            </select>

            <!-- Nhập URL Authorization -->
            <label for="url_authorization">Đường dẫn URL:</label>
            <input type="text" id="url_authorization" name="url_authorization" required oninput="hideMessage()">

            <!-- Nhập Feature Authorization -->
            <label for="feature_authorization">Mô tả về đường dẫn:</label>
            <input type="text" id="feature_authorization" name="feature_authorization" required oninput="hideMessage()">

            <!-- Submit Form -->
            <button type="submit">Thêm</button>
        </form>

        <!-- Quay lại danh sách -->
        <a href="AuthorizationManagement" class="back-link">⬅ Quay lại danh sách</a>
    </body>
    <script>
        function hideMessage() {
            var messageBox = document.getElementById("messageBox");
            if (messageBox) {
                messageBox.style.display = "none";
            }
        }
    </script>
</html>
