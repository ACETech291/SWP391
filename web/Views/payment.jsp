<%-- 
    Document   : payment.jsp
    Created on : 6 Mar 2025, 4:28:59 pm
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán Đơn Hàng</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: center; }
        th { background-color: #f4f4f4; }
        .total { font-weight: bold; }
        button { padding: 10px 15px; background-color: #28a745; color: white; border: none; cursor: pointer; margin-top: 20px; }
        button:hover { background-color: #218838; }
    </style>
</head>
<body>
    <h2>Danh Sách Sản Phẩm Thanh Toán</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên Sách</th>
                <th>Tác Giả</th>
                <th>Giá</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Clean Code</td>
                <td>Robert C. Martin</td>
                <td>299900 vnd</td>
            </tr>
            <tr>
                <td>2</td>
                <td>The Pragmatic Programmer</td>
                <td>Andrew Hunt</td>
                <td>355000 vnd</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Design Patterns</td>
                <td>Erich Gamma</td>
                <td>120000 vnd</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3" class="total">Tổng Tiền:</td>
                <td class="total">1174900 vnd</td>
            </tr>
        </tfoot>
    </table>

    <form action="payment" method="post">
        <input type="hidden" name="totalBill" value="1074900">
        <button type="submit">Đặt Mua</button>
    </form>
</body>
</html>
    <jsp:include page="includes/footer.jsp"></jsp:include>
    <jsp:include page="includes/rule.jsp"></jsp:include>
    <jsp:include page="includes/support.jsp"></jsp:include>
