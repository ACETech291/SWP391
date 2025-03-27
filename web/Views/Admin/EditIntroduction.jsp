<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Policy, dal.PolicyDAO" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa hướng dẫn đặt vé</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center text-warning">Chỉnh sửa hướng dẫn đặt vé</h2>

    <form action="EditIntroduction" method="post">
        <input type="hidden" name="id_introduction" value="${introduction.id_introduction}">
        <div class="mb-3">
            <label class="form-label">Nội dung</label>
            <textarea class="form-control" name="content" required>${introduction.content}</textarea>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="IntroductionList" class="btn btn-secondary">Quay lại</a>
    </form>
</div>
</body>
</html>
