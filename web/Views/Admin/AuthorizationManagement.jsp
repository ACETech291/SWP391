<%-- 
    Document   : AuthorizationManagement
    Created on : Mar 9, 2025, 11:09:29 AM
    Author     : Nguyen Ba Hien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <style>
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination a {
            margin: 5px;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            border: 1px solid #007bff;
            color: #007bff;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }

        .pagination a:hover {
            background-color: #007bff;
            color: white;
        }

        .pagination .btn-primary {
            background-color: #007bff;
            color: white;
            border: 1px solid #0056b3;
            font-weight: bold;
            transform: scale(1.1);
            transition: all 0.3s ease-in-out;
        }

    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authorization List</title>
        <style>
            table {
                width: 80%;
                border-collapse: collapse;
                margin: 20px auto;
            }
            th, td {
                border: 1px solid black;
                padding: 10px;
                text-align: center;
            }
            th {
                background-color: #f2f2f2;
            }
            .btn {
                padding: 5px 10px;
                text-decoration: none;
                border-radius: 5px;
                color: white;
                border: none;
                cursor: pointer;
            }
            .btn-add {
                background-color: green;
                margin: 20px auto;
                display: block;
                width: fit-content;
            }
            .btn-edit, .btn-delete {
                display: inline-block;
                width: 100px; /* Tăng kích thước nút */
                height: 40px; /* Đảm bảo chiều cao đồng đều */
                line-height: 40px; /* Căn giữa chữ theo chiều dọc */
                text-align: center;
                border-radius: 5px;
                text-decoration: none;
                border: none;
                cursor: pointer;
                font-weight: bold;
                font-size: 14px;
            }

            .btn-edit {
                background-color: orange;
                color: white;
            }

            .btn-delete {
                background-color: red;
                color: white;
            }

            .btn-edit:hover {
                background-color: darkorange;
            }

            .btn-delete:hover {
                background-color: darkred;
            }

            /* Đảm bảo nút xóa hiển thị như nút sửa khi là button */
            .btn-delete button {
                all: unset;
                display: block;
                width: 100%;
                height: 100%;
                text-align: center;
                line-height: 40px;
                cursor: pointer;
            }

        </style>
    </head>
    <body>
        <h2 style="text-align: center;">Authorization List</h2>
        <p>${errorMessage}</p>
        <!-- Button thêm phân quyền -->
        <a href="AddAuthorization" class="btn btn-add">+ Thêm phân quyền</a>
        <p>${errorMessage}</p>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Role ID</th>
                    <th>Đường dẫn URL</th>
                    <th>Mô tả về đường dẫn</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="auth" items="${authorizationList}">
                    <tr>
                        <td>${auth.id_authorization}</td>
                        <td>${auth.role_id}</td>
                        <td>${auth.url_authorization}</td>
                        <td>${auth.feature_authorization}</td>
                        <td>
                            <a href="EditAuthorization?id=${auth.id_authorization}" class="btn btn-edit">
                                Sửa
                            </a>

                            <form action="DeleteAuthorization" method="post" style="display: inline;">
                                <input type="hidden" name="id_authorization" value="${auth.id_authorization}">
                                <button type="submit" class="btn btn-delete" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">
                                    Xóa
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="pagination">
            <c:set var ="page" value="${requestScope.page}"/>
            <c:forEach begin="1" end="${num > 10 ? 10 : num}" var="i">
                <a href="AuthorizationManagement?page=${i}" 
                   class="btn ${i == page ? 'btn-primary' : 'btn-light'}">
                    ${i}
                </a>
            </c:forEach>
        </div>

    </body>
</html>
