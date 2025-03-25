<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html data-bs-theme="light" lang="en-US" dir="ltr">

    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- ===============================================--><!--    Document Title--><!-- ===============================================-->
        <title>Tạo tài khoản</title>
        <jsp:include page="../includes/icon.jsp"></jsp:include>
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
        <!-- ===============================================--><!--    Main Content--><!-- ===============================================-->
        <main class="main" id="top">
            <div class="container" data-layout="container">
                <jsp:include page="includes/navbar.jsp"></jsp:include>
                    <div class="content">
                    <jsp:include page="includes/header.jsp"></jsp:include>
                    <c:if test="${not empty message}">
                        <div class="alert alert-success">
                            ${message}
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            ${error}
                        </div>
                    </c:if>
                    <div class="row g-0">
                        <div class="col-xxl-12 px-xxl-2">
                            <div class="card h-100">
                                <div class="card-header bg-body-tertiary py-2">
                                    <div class="row flex-between-center">
                                        <div class="col-auto">
                                            <h6 class="mb-0">Thêm phân quyền</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body h-100">
                                    <div class="card-body">
                                        <div class="tab-content" id="accountTabsContent">
                                            <div class="tab-pane fade show active" id="manager" role="tabpanel" aria-labelledby="manager-tab">
                                                <form class="row g-3" method="post" action="AddAuthorization">
                                                    <div class="col-lg-12">
                                                        <label class="form-label" for="role_id">Chọn Role:</label>
                                                        <select class="form-control" name="role_id" id="role_id" required onchange="hideMessage()">
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
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <label class="form-label" for="url_authorization">Đường dẫn URL:</label>
                                                        <input class="form-control" id="url_authorization" name="url_authorization" type="text" required/>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <label class="form-label" for="feature_authorization">Mô tả về đường dẫn:</label>
                                                        <input class="form-control" id="feature_authorization" name="feature_authorization" type="text" required/>
                                                    </div>
                                                    <div class="col-12 d-flex justify-content-end">
                                                        <button class="btn btn-primary" type="submit">Thêm</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <a href="AuthorizationManagement" class="back-link">⬅ Quay lại danh sách</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- ===============================================--><!--    End of Main Content--><!-- ===============================================-->
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
