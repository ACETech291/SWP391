<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lỗi 404 - Không tìm thấy trang</title>
</head>
<body>
    <h1>Oops! Trang không tồn tại.</h1>
    <p>Mã lỗi: <%= request.getAttribute("javax.servlet.error.status_code") %></p>
    <p>Thông báo lỗi: <%= request.getAttribute("javax.servlet.error.message") %></p>
    <p>URL yêu cầu: <%= request.getAttribute("javax.servlet.error.request_uri") %></p>
</body>
</html>
