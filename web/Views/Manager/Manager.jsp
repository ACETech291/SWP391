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

        <style>
            .add-form {
                display: none;
            }
        </style>

    </head>

    <body>
        <!-- ===============================================--><!--    Main Content--><!-- ===============================================-->
        <main class="main" id="top">
            <div class="container" data-layout="container">
                <!-- Navbar-->
                <jsp:include page="lib/navbar.jsp"></jsp:include>
                    <div class="content">
                        <!-- Header-->
                    <jsp:include page="lib/header.jsp"></jsp:include>
                        <!-- Content -->

                        <!-- Doanh thu và số lượng vé -->
                        <div class="row g-3 mb-3">
                            <!-- Doanh thu hàng tháng -->
                            <div class="col-md-6 col-xxl-6">
                                <div class="card h-md-100 ecommerce-card-min-width">
                                    <div class="card-header pb-0">
                                        <h6 class="mb-0 mt-2 d-flex align-items-center">Doanh thu trung bình</h6>
                                    </div>
                                    <div class="card-body d-flex flex-column justify-content-end">
                                        <div class="row">
                                            <div class="col">
                                                <!-- Hiển thị doanh thu trung bình (averageRevenue) -->
                                                <p class="font-sans-serif lh-1 mb-1 fs-5">
                                                <fmt:formatNumber value="${averageRevenue}" type="currency" currencyCode="VND" />
                                            </p>
                                            <span class="badge rounded-pill fs-11 bg-200 text-primary">
                                                <span class="fas fa-caret-up me-1"></span>0%
                                            </span>
                                        </div>
                                        <div class="col-auto ps-0">
                                            <!-- Biểu đồ doanh thu theo tháng, sử dụng dữ liệu JSON động -->
                                            <div class="echart-default-total-order" 
                                                 data-echarts='{
                                                 "tooltip": {"trigger": "axis", "formatter": "{b0} : {c0}"},
                                                 "xAxis": {"data": ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"]},
                                                 "series": [{
                                                 "type": "line",
                                                 "data": ${revenueJson},
                                                 "smooth": true,
                                                 "lineStyle": {"width": 3}
                                                 }],
                                                 "grid": {"bottom": "2%", "top": "2%", "right": "0", "left": "10px"}
                                                 }' 
                                                 data-echart-responsive="true">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tổng số vé bán ra -->
                        <div class="col-md-6 col-xxl-4">
                            <div class="card h-md-100">
                                <div class="card-header pb-0">
                                    <h6 class="mb-0 mt-2">Tổng số vé bán ra</h6>
                                </div>
                                <div class="card-body d-flex flex-column justify-content-end">
                                    <div class="row justify-content-between">
                                        <div class="col-auto align-self-end">
                                            <!-- Hiển thị tổng số vé bán ra của cả năm -->
                                            <div class="fs-5 fw-normal font-sans-serif text-700 lh-1 mb-1">${totalTicketsYear}</div>
                                            <span class="badge rounded-pill fs-11 bg-200 text-primary">
                                                <span class="fas fa-caret-up me-1"></span>0%
                                            </span>
                                        </div>
                                        <div class="col-auto ps-0 mt-n4">
                                            <!-- Biểu đồ số vé bán ra theo tháng, sử dụng dữ liệu JSON động -->
                                            <div class="echart-default-total-order" 
                                                 data-echarts='{
                                                 "tooltip": {"trigger": "axis", "formatter": "{b0} : {c0}"},
                                                 "xAxis": {"data": ["Tháng 1","Tháng 2","Tháng 3","Tháng 4","Tháng 5","Tháng 6","Tháng 7","Tháng 8","Tháng 9","Tháng 10","Tháng 11","Tháng 12"]},
                                                 "series": [{
                                                 "type": "line",
                                                 "data": ${ticketsJson},
                                                 "smooth": true,
                                                 "lineStyle": {"width": 3}
                                                 }],
                                                 "grid": {"bottom": "2%", "top": "2%", "right": "0", "left": "10px"}
                                                 }' 
                                                 data-echart-responsive="true">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Tỷ lệ huỷ vé -->
                        <div class="col-md-6 col-xxl-2">
                            <div class="card h-md-100">
                                <div class="card-header pb-0">
                                    <h6 class="mb-0 mt-2">Tỉ lệ huỷ vé</h6>
                                </div>
                                <div class="card-body d-flex flex-column justify-content-end">
                                    <div class="row">
                                        <div class="col">
                                            <p class="font-sans-serif lh-1 mb-1 fs-5">${cancellationRate}%</p>
                                            <span class="badge rounded-pill fs-11 bg-200 text-primary"><span class="fas fa-caret-up me-1"></span>0%</span>
                                        </div>
                                        <div class="col-auto ps-0">
                                            <div class="echart-pie-average-fill h-100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row g-0 mb-3">
                        <!-- Chuyến tàu đang hoạt động -->
                        <div class="col-lg-7 pe-lg-2">
                            <div class="card h-lg-100 overflow-hidden">
                                <div class="card-header bg-body-tertiary">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h6 class="mb-0">Chuyến tàu đang hoạt động</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="tableExample3" data-list='{"valueNames":["station_from","station_to","time_start", "time_end", "train_id", "price"],"page":10,"pagination":true}'>
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
                                                        <th class="text-900 sort" data-sort="station_from">Ga đi</th>
                                                        <th class="text-900 sort" data-sort="station_to">Ga đến</th>
                                                        <th class="text-900 sort" data-sort="time_start">Giờ khởi hành</th>
                                                        <th class="text-900 sort" data-sort="time_end">Giờ đến dự kiến</th>
                                                        <th class="text-900 sort" data-sort="train_id">Mã tàu</th>
                                                        <th class="text-900 sort" data-sort="price">Giá vé</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="list">
                                                    <c:forEach var="trip" items="${trips}">
                                                        <tr>
                                                            <td class="station_from">${trip.start_station}</td>
                                                            <td class="station_to">${trip.end_station}</td>
                                                            <td class="time_start">${trip.start_time}</td>
                                                            <td class="time_end">${trip.end_time}</td>
                                                            <td class="train_id">${trip.name_train}</td>
                                                            <td class="price"><fmt:formatNumber value="${trip.price_trip}" type="currency" currencyCode="VND"/></td>
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

                        <div class="col-lg-5 ps-lg-2">
                            <div class="card h-lg-100">
                                <div class="card-header">
                                    <div class="row flex-between-center">
                                        <div class="col-auto">
                                            <h6 class="mb-0">Danh sách nhân viên</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="tableExample4" data-list='{"valueNames":["name","country","email","payment"]}'>
                                        <div class="row justify-content-end justify-content-end gx-3 gy-0 px-3">
                                            <div class="col-sm-auto"><select class="form-select form-select-sm mb-3" data-list-filter="payment">
                                                    <option selected="" value="">Trạng thái hoạt động</option>
                                                    <option value="Success">Hoạt động</option>
                                                    <option value="Blocked">Ngừng hoạt động</option>
                                                </select></div>
                                        </div>
                                        <div class="table-responsive scrollbar">
                                            <table class="table table-sm table-striped fs-10 mb-0 overflow-hidden">
                                                <thead class="bg-200">
                                                    <tr>
                                                        <th class="text-900 sort pe-1 align-middle white-space-nowrap" data-sort="name">Tên nhân viên</th>
                                                        <th class="text-900 sort pe-1 align-middle white-space-nowrap" data-sort="email">Email</th>
                                                        <th class="text-900 sort align-middle white-space-nowrap text-end pe-4" data-sort="payment">Trạng thái hoạt động</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="list" id="table-purchase-body">
                                                    <c:forEach var="manager" items="${managers}">
                                                        <tr class="btn-reveal-trigger">
                                                            <th class="align-middle white-space-nowrap name">${manager.username_manager}</th>
                                                            <td class="align-middle white-space-nowrap email">${manager.email_manager}</td>
                                                            <td class="align-middle text-end fs-9 white-space-nowrap payment">
                                                                <c:choose>
                                                                    <c:when test="${manager.status == 1}">
                                                                        <span class="badge badge rounded-pill badge-subtle-success">
                                                                            Hoạt động
                                                                            <span class="ms-1 fas fa-check" data-fa-transform="shrink-2"></span>
                                                                        </span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="badge badge rounded-pill badge-subtle-secondary">
                                                                            Ngừng hoạt động
                                                                            <span class="ms-1 fas fa-ban" data-fa-transform="shrink-2"></span>
                                                                        </span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Phản hồi khách hàng và dự báo doanh thu -->
                    <div class="row g-0">
                        <!-- Phản hồi khách hàng -->
                        <div class="col-md-6 col-xxl-3 pe-md-2">
                            <div class="card h-md-100">
                                <div class="card-header d-flex flex-between-center pb-0">
                                    <h6 class="mb-0">Phản hồi khách hàng</h6>
                                </div>
                                <div class="card-body pt-2">
                                    <div class="row g-0 h-100 align-items-center">
                                        <div class="col">
                                            <h6 class="mb-2">Đánh giá: 4.5/5</h6>
                                            <div class="fs-10 fw-semi-bold">
                                                <div class="text-warning">Khiếu nại: 5</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Dự báo doanh thu -->
                        <div class="col-md-6 col-xxl-9 ps-md-2">
                            <div class="card h-lg-100">
                                <div class="card-header bg-body-tertiary">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h6 class="mb-0">Dự báo doanh thu</h6>
                                        </div>
                                        <div class="col-auto text-center pe-x1">
                                            <select class="form-select form-select-sm">
                                                <option>Tháng tới</option>
                                                <option>Quý tới</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body h-100 pe-0">
                                    <div class="echart-line-total-sales h-100" data-echart-responsive="true"></div>
                                </div>
                            </div>
                        </div>
                    </div>      
                </div>
            </div>
        </main>
        <!-- ===============================================--><!--    End of Main Content--><!-- ===============================================-->
    </body>

    <script>
        function toggleAddTrainForm() {
            const form = document.getElementById("addTrain");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
    </script>

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
