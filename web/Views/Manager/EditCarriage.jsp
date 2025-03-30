<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.TrainCarriage" %>

<%
    TrainCarriage carriage = (TrainCarriage) request.getAttribute("trainCarriage");
    if (carriage == null) {
        response.sendRedirect("Manager?message=carriage_not_found");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- ===============================================--><!--    Document Title--><!-- ===============================================-->
        <title>Quản lý</title>
        <jsp:include page="../includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet">
        <!-- ===============================================--><!--    Stylesheets--><!-- ===============================================-->
        <link rel="preconnect" href="https://fonts.gstatic.com/">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700%7cPoppins:300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/Views/Admin/vendors/simplebar/simplebar.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/theme-rtl.min.css" rel="stylesheet" id="style-rtl">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/theme.min.css" rel="stylesheet" id="style-default">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/user-rtl.min.css" rel="stylesheet" id="user-style-rtl">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/user.min.css" rel="stylesheet" id="user-style-default">
    </head>
    <body>
        <main class="main" id="top">
            <div class="container" data-layout="container">
                <!-- Navbar-->
                <jsp:include page="lib/navbar.jsp"></jsp:include>
                    <div class="content">
                        <!-- Header-->
                    <jsp:include page="lib/header.jsp"></jsp:include>

                        <h2>Chỉnh sửa khoang tàu</h2>
                        <form action="EditCarriage" method="POST">
                            <input type="hidden" name="id_train_carriage" value="<%= carriage.getId_train_carriage() %>">

                        <label for="name_train_carriage">Tên khoang:</label>
                        <input type="text" id="name_train_carriage" name="name_train_carriage" value="<%= carriage.getName_train_carriage() %>" required>
                        <br>

                        <label for="description_train_carriage">Mô tả:</label>
                        <textarea id="description_train_carriage" name="description_train_carriage" required><%= carriage.getDescription_train_carriage() %></textarea>
                        <br>

                        <!-- Chọn trạng thái -->
                        <label for="id_status">Trạng thái:</label>
                        <select id="id_status" name="id_status" required>
                            <c:forEach var="status" items="${status_carriage}">
                                <option value="${status.id}" ${status.id == carriage.id_status ? 'selected' : ''}>${status.statusName}</option>
                            </c:forEach>
                        </select>
                        <br>

                        <label for="total_seat">Tổng số ghế:</label>
                        <input type="number" id="total_seat" name="total_seat" value="<%= carriage.getTotal_seat() %>" required>
                        <br><br>

                        <button type="submit" class="btn btn-success">Lưu thay đổi</button>
                        <a href="Manager" class="btn btn-danger">Hủy</a>
                    </form>
                    </main>

                    </body>



                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/popper/popper.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/bootstrap/bootstrap.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/anchorjs/anchor.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/is/is.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/echarts/echarts.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/fontawesome/all.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/lodash/lodash.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/list.js/list.min.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/assets/js/theme.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/assets/js/config.js"></script>
                    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/simplebar/simplebar.min.js"></script>

                    <script>
                        var isFluid = JSON.parse(localStorage.getItem('isFluid'));
                        if (isFluid) {
                            var container = document.querySelector('[data-layout]');
                            container.classList.remove('container');
                            container.classList.add('container-fluid');
                        }
                    </script>

                    <script>
                        var navbarStyle = localStorage.getItem("navbarStyle");
                        if (navbarStyle && navbarStyle !== 'transparent') {
                            document.querySelector('.navbar-vertical').classList.add(`navbar-${navbarStyle}`);
                        }
                    </script>

                    <script>
                        var navbarPosition = localStorage.getItem('navbarPosition');
                        var navbarVertical = document.querySelector('.navbar-vertical');
                        var navbarTopVertical = document.querySelector('.content .navbar-top');
                        var navbarTop = document.querySelector('[data-layout] .navbar-top:not([data-double-top-nav');
                        var navbarDoubleTop = document.querySelector('[data-double-top-nav]');
                        var navbarTopCombo = document.querySelector('.content [data-navbar-top="combo"]');

                        if (localStorage.getItem('navbarPosition') === 'double-top') {
                            document.documentElement.classList.toggle('double-top-nav-layout');
                        }

                        if (navbarPosition === 'top') {
                            navbarTop.removeAttribute('style');
                            navbarTopVertical.remove(navbarTopVertical);
                            navbarVertical.remove(navbarVertical);
                            navbarTopCombo.remove(navbarTopCombo);
                            navbarDoubleTop.remove(navbarDoubleTop);
                        } else if (navbarPosition === 'combo') {
                            navbarVertical.removeAttribute('style');
                            navbarTopCombo.removeAttribute('style');
                            navbarTop.remove(navbarTop);
                            navbarTopVertical.remove(navbarTopVertical);
                            navbarDoubleTop.remove(navbarDoubleTop);
                        } else if (navbarPosition === 'double-top') {
                            navbarDoubleTop.removeAttribute('style');
                            navbarTopVertical.remove(navbarTopVertical);
                            navbarVertical.remove(navbarVertical);
                            navbarTop.remove(navbarTop);
                            navbarTopCombo.remove(navbarTopCombo);
                        } else {
                            navbarVertical.removeAttribute('style');
                            navbarTopVertical.removeAttribute('style');
                            navbarTop.remove(navbarTop);
                            navbarDoubleTop.remove(navbarDoubleTop);
                            navbarTopCombo.remove(navbarTopCombo);
                        }
                    </script>

                    <script>
                        var isRTL = JSON.parse(localStorage.getItem('isRTL'));
                        if (isRTL) {
                            var linkDefault = document.getElementById('style-default');
                            var userLinkDefault = document.getElementById('user-style-default');
                            linkDefault.setAttribute('disabled', true);
                            userLinkDefault.setAttribute('disabled', true);
                            document.querySelector('html').setAttribute('dir', 'rtl');
                        } else {
                            var linkRTL = document.getElementById('style-rtl');
                            var userLinkRTL = document.getElementById('user-style-rtl');
                            linkRTL.setAttribute('disabled', true);
                            userLinkRTL.setAttribute('disabled', true);
                        }
                    </script>
                    </html>
