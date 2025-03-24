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
        <title>Quản lý khách hàng</title>
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

                <!-- Navbar-->
                <jsp:include page="includes/navbar.jsp"></jsp:include>

                    <div class="content">
                        <!-- Header-->
                    <jsp:include page="includes/header.jsp"></jsp:include>

                        <div class="row g-0">
                            <div class="col-xxl-12 px-xxl-2">
                                <div class="card h-100">
                                    <div class="card-header bg-body-tertiary py-2">
                                        <div class="row flex-between-center">
                                            <div class="col-auto">
                                                <h6 class="mb-0">Phân quyền</h6>
                                            </div>
                                            <div class="col-auto">
                                                <a href="AddAuthorization" class="btn btn-sm btn-success">
                                                    <i class="fas fa-plus"></i> Thêm phân quyền
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                <c:if test="${not empty message}">
                                    <div class="card-body h-100">
                                        <div class="alert alert-success mt-2" role="alert">
                                            ${message}
                                        </div>
                                    </c:if>
                                    <c:if test="${not empty errorMessage}">
                                        <div class="alert alert-danger mt-2" role="alert">
                                            ${errorMessage}
                                        </div>
                                    </c:if>
                                    <div id="tableExample3" data-list='{"valueNames":["role","url", "description"],"page":10,"pagination":true}'>
                                        <div class="row justify-content-end g-0">
                                            <div class="col-auto col-sm-5 mb-3">
                                                <form>
                                                    <div class="input-group"><input class="form-control form-control-sm shadow-none search" type="search" placeholder="Search..." aria-label="search" />
                                                        <div class="input-group-text bg-transparent"><span class="fa fa-search fs-10 text-600"></span></div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="table-responsive scrollbar">
                                            <table class="table table-bordered table-striped fs-10 mb-0">
                                                <thead class="bg-200">
                                                    <tr>
                                                        <th class="text-900 sort" data-sort="role">Tên vai trò</th>
                                                        <th class="text-900 sort" data-sort="url">Đường dẫn URL</th>
                                                        <th class="text-900 sort" data-sort="description">Mô tả về đường dẫn</th>
                                                        <th>Hành động</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <c:forEach items="${authorizationList}" var="auth">
                                                        <tr>
                                                            <td class="role">
                                                                <c:choose>
                                                                    <c:when test="${auth.role_id == 1}">Admin</c:when>
                                                                    <c:when test="${auth.role_id == 2}">Người quản lý</c:when>
                                                                    <c:when test="${auth.role_id == 3}">Khách hàng</c:when>
                                                                    <c:otherwise>Khách vãng lai</c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td class="url">${auth.url_authorization}</td>
                                                            <td class="description">${auth.feature_authorization}</td>
                                                            <td>
                                                                <a href="EditAuthorization?id=${auth.id_authorization}" class="btn btn-sm btn-primary">
                                                                    <i class="fas fa-edit"></i> Chỉnh sửa
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <form action="DeleteAuthorization" method="post" style="display: inline;">
                                                                    <input type="hidden" name="id_authorization" value="${auth.id_authorization}">
                                                                    <button type="submit" class="btn btn-sm btn-outline-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">
                                                                        <i class="fas fa-trash-alt"></i> Xóa
                                                                    </button>
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="d-flex justify-content-center mt-3"><button class="btn btn-sm btn-falcon-default me-1" type="button" title="Previous" data-list-pagination="prev"><span class="fas fa-chevron-left"></span></button>
                                            <ul class="pagination mb-0"></ul><button class="btn btn-sm btn-falcon-default ms-1" type="button" title="Next" data-list-pagination="next"><span class="fas fa-chevron-right"> </span></button>
                                        </div>
                                    </div>
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
