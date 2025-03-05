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
                        <div class="alert alert-info">
                            ${message}
                        </div>
                    </c:if>

                    <div class="card">
                        <div class="card-header">
                            <!-- Sử dụng nav-tabs của Bootstrap để tách phần -->
                            <ul class="nav nav-tabs card-header-tabs" id="accountTabs" role="tablist">
                                <li class="nav-item">
                                    <button class="nav-link active" id="manager-tab" data-bs-toggle="tab" data-bs-target="#manager" type="button" role="tab" aria-controls="manager" aria-selected="true">
                                        Tạo tài khoản Manager
                                    </button>
                                </li>
                                <li class="nav-item">
                                    <button class="nav-link" id="admin-tab" data-bs-toggle="tab" data-bs-target="#customer" type="button" role="tab" aria-controls="admin" aria-selected="false">
                                        Tạo tài khoản Customer
                                    </button>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="accountTabsContent">

                                <!-- Phần tạo tài khoản cho Manager -->
                                <div class="tab-pane fade show active" id="manager" role="tabpanel" aria-labelledby="manager-tab">
                                    <form class="row g-3" method="post" action="createaccount">
                                        <div class="col-lg-12">
                                            <label class="form-label" for="manager-name">Họ và Tên</label>
                                            <input class="form-control" id="manager-name" name="name" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="manager-email">Địa chỉ Email</label>
                                            <input class="form-control" id="manager-email" name="email" type="email" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="manager-pass">Mật khẩu</label>
                                            <input class="form-control" id="manager-pass" name="pass" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="manager-trainbrand">Tên hãng</label>
                                            <input class="form-control" id="manager-trainbrand" name="trainbrand" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-12 d-flex justify-content-end">
                                            <button class="btn btn-primary" type="submit">Tạo tài khoản</button>
                                        </div>
                                    </form>
                                </div>

                                <!-- Phần tạo tài khoản cho Customer -->
                                <div class="tab-pane fade" id="customer" role="tabpanel" aria-labelledby="admin-tab">
                                    <form class="row g-3" method="post" action="createaccount">
                                        <div class="col-lg-12">
                                            <label class="form-label" for="customer-name">Họ và Tên</label>
                                            <input class="form-control" id="customer-name" name="name" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="customer-phone">Số điện thoại</label>
                                            <input class="form-control" id="customer-phone" name="phone" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="customer-email">Địa chỉ Email</label>
                                            <input class="form-control" id="customer-email" name="email" type="email" placeholder="" required/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label class="form-label" for="customer-pass">Mật khẩu</label>
                                            <input class="form-control" id="customer-pass" name="pass" type="text" placeholder="" required/>
                                        </div>
                                        <div class="col-12 d-flex justify-content-end">
                                            <button class="btn btn-primary" type="submit">Tạo tài khoản</button>
                                        </div>
                                    </form>
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
