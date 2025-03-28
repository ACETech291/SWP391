<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Policy, dal.PolicyDAO" %>
<%
    int id_policy = Integer.parseInt(request.getParameter("id"));
    PolicyDAO policyDAO = new PolicyDAO();
    Policy policy = policyDAO.getPolicyById(id_policy);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Chính Sách</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2 class="text-center text-warning">Chỉnh Sửa Chính Sách</h2>

    <form action="EditPolicy" method="post">
        <input type="hidden" name="id_policy" value="<%= policy.getId_policy() %>">
        <div class="mb-3">
            <label class="form-label">Nội dung</label>
            <textarea class="form-control" name="content" required><%= policy.getContent() %></textarea>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="PolicyList" class="btn btn-secondary">Quay lại</a>
    </form>
</div>
</body>
</html>
