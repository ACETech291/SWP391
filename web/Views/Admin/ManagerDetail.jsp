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
        <title>Quản lý các hãng tàu</title>
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
                                                <h6 class="mb-0">Hãng tàu</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body h-100">
                                        <div class="card mb-3">
                                            <div class="card-header position-relative min-vh-25 mb-7">
                                                <div class="bg-holder rounded-3 rounded-bottom-0" style="background-image:url(${pageContext.request.contextPath}/Views/Admin/assets/img/generic/4.jpg);"></div><!--/.bg-holder-->
                                            <div class="avatar avatar-5xl avatar-profile shadow-sm img-thumbnail rounded-circle">
                                                <div class="h-100 w-100 rounded-circle overflow-hidden position-relative"> 
                                                    <c:choose>
                                                        <c:when test="${empty manager.image_manager}">
                                                            <img class="rounded-circle" src="${pageContext.request.contextPath}/images/avatar-manager.png" alt=""/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img class="rounded-circle" src="${manager.image_manager}" alt=""/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <h4 class="mb-1"> ${manager.username_manager}<span data-bs-toggle="tooltip" data-bs-placement="right" title="Verified"><small class="fa fa-check-circle text-primary" data-fa-transform="shrink-4 down-2"></small></span></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row g-0">
                                        <div class="col-lg-8 pe-lg-2">
                                            <div class="card mb-3">
                                                <div class="card-header">
                                                    <h5 class="mb-0">Thông tin cá nhân</h5>
                                                </div>
                                                <div class="card-body bg-body-tertiary">
                                                    <form class="row g-3" action="managerdetail" method="POST">
                                                        <input type="hidden" name="id" value="${manager.id_manager}" />
                                                        <div class="col-lg-12"> <label class="form-label" for="first-name">Tên quản lý</label><input class="form-control" type="text" value="${manager.username_manager}" readonly/></div>
                                                        <div class="col-lg-12"> <label class="form-label" for="email1">Địa chỉ Email</label><input class="form-control" type="text" value="${manager.email_manager}" readonly/></div>
                                                            <c:choose>
                                                                <c:when test="${manager.status == 1}">
                                                                <div class="col-12 d-flex justify-content-end"><button class="btn btn-danger" type="submit" name="action" value="block">Block</button></div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class="col-12 d-flex justify-content-end"><button class="btn btn-primary" type="submit" name="action" value="unblock">Active</button></div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 ps-lg-2">
                                            <div class="sticky-sidebar">
                                                <div class="card mb-3">
                                                    <div class="card-header">
                                                        <h5 class="mb-0">Thông tin hãng tàu</h5>
                                                    </div>
                                                    <div class="card-body bg-body-tertiary">
                                                        <img src="${trainBrand.image_train_brand}" width="200" alt="Hình ảnh hãng tàu" data-dz-thumbnail="data-dz-thumbnail" />
                                                        <div class="mb-3"><label class="form-label">Tên hãng tàu</label><input class="form-control" type="text" value="${trainBrand.name_train_brand}" readonly/></div>
                                                        <div class="mb-3"><label class="form-label">Giới thiệu</label><input class="form-control" type="text" value="${trainBrand.description_train_brand}" readonly/></div>
                                                    </div>
                                                </div>
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