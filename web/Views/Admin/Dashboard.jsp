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
        <title>Thống kê</title>
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

                        <!-- Dashboard -->
                        <div class="row g-3 mb-3">
                            <div class="col-md-6 col-xxl-6">
                                <div class="card h-md-100">
                                    <div class="card-header pb-0">
                                        <h6 class="mb-0 mt-2">Tổng số hãng tàu</h6>
                                    </div>
                                    <div class="card-body d-flex flex-column justify-content-end">
                                        <div class="row justify-content-between">
                                            <div class="col-auto align-self-end">
                                                <div class="fs-5 fw-normal font-sans-serif text-700 lh-1 mb-1">${sumManager}</div><span class="badge rounded-pill fs-11 bg-200 text-primary"><span class="fas fa-caret-up me-1"></span>0%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xxl-6">
                            <div class="card h-md-100">
                                <div class="card-header pb-0">
                                    <h6 class="mb-0 mt-2">Tổng số người dùng trong hệ thống</h6>
                                </div>
                                <div class="card-body d-flex flex-column justify-content-end">
                                    <div class="row justify-content-between">
                                        <div class="col-auto align-self-end">
                                            <div class="fs-5 fw-normal font-sans-serif text-700 lh-1 mb-1">${sumCustomer}</div><span class="badge rounded-pill fs-11 bg-200 text-primary"><span class="fas fa-caret-up me-1"></span>0%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Dashboard -->

                    <div class="row g-0">

                        <!-- Active user -->
                        <div class="col-md-6 col-xxl-4 pe-md-2 mb-3 mb-xxl-0">
                            <div class="card">
                                <div class="card-header d-flex flex-between-center bg-body-tertiary py-2">
                                    <h6 class="mb-0">Các hãng đang hoạt động</h6>
                                </div>

                                <c:forEach items="${managers}" var="manager">
                                    <div class="card-body py-2">
                                        <div class="d-flex align-items-center position-relative mb-3">
                                            <div class="avatar avatar-2xl status-online">
                                                <c:choose>
                                                    <c:when test="${empty manager.image_manager}">
                                                        <img class="rounded-circle" src="${pageContext.request.contextPath}/images/avatar-manager.png" alt=""/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img class="rounded-circle" src="${manager.image_manager}" alt=""/>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <div class="flex-1 ms-3">
                                                <h6 class="mb-0 fw-semi-bold"><a class="stretched-link text-900" href="managerdetail?id=${manager.id_manager}">${manager.username_manager}</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                                <div class="card-footer bg-body-tertiary p-0"><a class="btn btn-sm btn-link d-block w-100 py-2" href="app/social/followers.html">Xem tất cả<span class="fas fa-chevron-right ms-1 fs-11"></span></a></div>
                            </div>
                        </div>
                        <!-- End Active user -->

                        <div class="col-xxl-8 px-xxl-2">
                            <div class="card h-100">
                                <div class="card-header bg-body-tertiary py-2">
                                    <div class="row flex-between-center">
                                        <div class="col-auto">
                                            <h6 class="mb-0">Các đoàn tàu trong hệ thống</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body h-100">
                                    <div id="tableExample3" data-list='{"valueNames":["id","name"],"page":5,"pagination":true}'>
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
                                                        <th class="text-900 sort" data-sort="id">Mã tàu</th>
                                                        <th class="text-900 sort" data-sort="name">Tên tàu</th>
                                                        <th class="text-900 sort" >Hình ảnh</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <c:forEach items="${trains}" var="train">
                                                        <tr>
                                                            <td class="id">${train.id_train}</td>
                                                            <td class="name">${train.name_train}</td>
                                                            <td><img src="${train.image_train}" alt="Hình ảnh tàu" style="width: 20px; height: auto;"></td>
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
