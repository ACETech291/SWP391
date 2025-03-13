<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tàu</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
    </head>
    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!-- Preloader Ends -->

        <!-- header starts -->
        <jsp:include page="includes/header.jsp"></jsp:include>
            <!-- header ends -->

            <!-- BreadCrumb Starts -->  
            <section class="breadcrumb-main pb-0" style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg);">
            <div class="breadcrumb-outer pt-10">
                <div class="container">
                    <div class="breadcrumb-content d-md-flex align-items-center pt-10">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item" aria-current="page"><a href="listtrain">Tàu</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Tàu ${train.name_train}</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->  

        <!-- blog starts -->
        <section class="blog trending destination-b pb-6">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-xs-12 mb-4">
                        <div class="single-content">

                            <div class="description" id="description">
                                <div class="single-full-title border-b mb-2 pb-2">
                                    <div class="single-title">
                                        <div class="d-flex align-items-center justify-content-between border-b pb-2 mb-2">
                                            <h3 class="mb-0">Tàu ${train.name_train}</h3>
                                        </div>
                                    </div>
                                </div>

                                <div class="single-slider">
                                    <div class="slider-1 slider-store">
                                        <div class="detail-slider-item">
                                            <c:choose>
                                                <c:when test="${not empty train.image_train}">
                                                    <img src="${pageContext.request.contextPath}/${train.image_train}" alt="image">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="description-inner mb-2 mt-1">
                                    <h1>Tàu Cao Tốc <strong>${train.name_train}</strong>: Cột Mốc Mới</h1>
                                    <p>
                                       ${train.content}
                                    </p>               
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-xs-12 mb-4">
                        <div class="sidebar-sticky">
                            <div class="list-sidebar">
                                <div class="sidebar-item">
                                    <h3>Các đoàn tàu cùng hãng</h3>
                                    <div class="about-slider">
                                        <c:forEach var="train1" items="${trains}">
                                            <div class="trend-item mb-0">
                                                <div class="trend-image">
                                                    <c:choose>
                                                        <c:when test="${not empty train1.image_train}">
                                                            <img src="${pageContext.request.contextPath}/${train1.image_train}" alt="image">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <div class="trend-content-main  shadow-none">
                                                    <div class="trend-last-main">
                                                    </div>
                                                    <div class="trend-content pb-0">
                                                        <h4 class="bordernone pb-0 mb-1"><a href="traindetail?id=${train1.id_train}">Tàu ${train1.name_train}</a></h4>
                                                        <a href="traindetail?id=${train1.id_train}">Xem chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- blog Ends -->  

        <!-- footer starts -->
        <jsp:include page="includes/footer.jsp"></jsp:include>
        <jsp:include page="includes/rule.jsp"></jsp:include>
        <jsp:include page="includes/support.jsp"></jsp:include>
            <!-- footer ends -->

            <!-- Back to top start -->
            <div id="back-to-top">
                <a href="#"></a>
            </div>
            <!-- Back to top ends -->
        </body>
        <script data-cfasync="false" src="${pageContext.request.contextPath}/libs/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-swiper3.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-navscroll.js"></script>
    <script>
        (function () {
            function c() {
                var b = a.contentDocument || a.contentWindow.document;
                if (b) {
                    var d = b.createElement('script');
                    d.innerHTML = "window.__CF$cv$params={r:'90d1e153093984ab',t:'MTczODc0NzgxMC4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
                    b.getElementsByTagName('head')[0].appendChild(d)
                }
            }
            if (document.body) {
                var a = document.createElement('iframe');
                a.height = 1;
                a.width = 1;
                a.style.position = 'absolute';
                a.style.top = 0;
                a.style.left = 0;
                a.style.border = 'none';
                a.style.visibility = 'hidden';
                document.body.appendChild(a);
                if ('loading' !== document.readyState)
                    c();
                else if (window.addEventListener)
                    document.addEventListener('DOMContentLoaded', c);
                else {
                    var e = document.onreadystatechange || function () {};
                    document.onreadystatechange = function (b) {
                        e(b);
                        'loading' !== document.readyState && (document.onreadystatechange = e, c())
                    }
                }
            }
        })();
    </script>
</html>
