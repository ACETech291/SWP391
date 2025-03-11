<%-- 
    Document   : EditAuthorization
    Created on : Mar 9, 2025, 4:52:19 PM
    Author     : Nguyen Ba Hien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Authorization" %>  <%-- Import model Authorization nếu có --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chỉnh sửa Phân quyền</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                text-align: center;
            }
            form {
                width: 40%;
                margin: auto;
                padding: 20px;
                border-radius: 8px;
                background: #f9f9f9;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            label {
                font-weight: bold;
                display: block;
                margin: 10px 0 5px;
                text-align: left;
            }
            input, textarea {
                width: 100%;
                padding: 8px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }
            .btn-container {
                display: flex;
                justify-content: space-between;
            }
            .btn {
                width: 48%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                font-weight: bold;
            }
            .btn-save {
                background-color: #007bff;
                color: white;
            }
            .btn-save:hover {
                background-color: #0056b3;
            }
            .btn-cancel {
                background-color: #ccc;
                color: black;
            }
            .btn-cancel:hover {
                background-color: #999;
            }
        </style>
    </head>
    <body>

        <h2>Chỉnh sửa Phân quyền</h2>
        <p id="errorMessage" style="color: red; ${empty errorMessage ? 'display: none;' : ''}">${errorMessage}</p>
        <form action="EditAuthorization" method="post">
            <%-- Lấy dữ liệu từ requestScope để hiển thị thông tin cũ --%>
            <input type="hidden" name="id_authorization" value="${authorization.id_authorization}">

            <label for="role_id">Role ID:</label>
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

            <label for="url_authorization">Đường dẫn URL:</label>
            <input type="text" id="url_authorization" name="url_authorization" value="${authorization.url_authorization}" required oninput="hideMessage()">

            <label for="feature_authorization">Mô tả về đường dẫn:</label>
            <textarea id="feature_authorization" name="feature_authorization" rows="4" required oninput="hideMessage()">${authorization.feature_authorization}</textarea>

            <div class="btn-container">
                <button type="submit" class="btn btn-save">Lưu thay đổi</button>
                <a href="AuthorizationManagement" class="btn btn-cancel">Hủy</a>
            </div>
        </form>

    </body>
    <script>
        function hideMessage() {
            let errorMessage = document.getElementById("errorMessage");
            if (errorMessage) {
                errorMessage.style.display = "none";
            }
        }
    </script>
</html>
