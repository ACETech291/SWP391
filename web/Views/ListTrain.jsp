<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <li class="breadcrumb-item active" aria-current="page">Tàu</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->  


        <!-- blog starts -->
        <section class="blog destination-b pb-6">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-xs-12 mb-4">
                        <div class="trend-box">
                            <div class="list-results d-flex align-items-center justify-content-between">
                                <div class="click-menu d-flex align-items-center justify-content-between">
                                    <div class="change-list f-active mr-2"><a href="#"><i class="fa fa-bars"></i></a></div>
                                    <div class="sortby d-flex align-items-center justify-content-between ml-2">
                                        <form action="SortServlet" method="POST">
                                            <select name="order" class="niceSelect" onchange="this.form.submit()">
                                                <option value="1">Sắp xếp theo</option>
                                                <option value="2">A->Z</option>
                                                <option value="3">Z->A</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${not empty trains}">
                                    <c:forEach var="train" items="${trains}">
                                        <div class="blog-full d-flex justify-content-around mb-4">
                                            <div class="row w-100">
                                                <div class="col-lg-5 col-md-4 col-xs-12 blog-height">
                                                    <div class="blog-image">
                                                        <c:choose>
                                                            <c:when test="${not empty train.image_train}">
                                                                <a href="traindetail?id=${train.id_train}" style="background-image: url('${pageContext.request.contextPath}/${train.image_train}');"></a>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <a href="traindetail?id=${train.id_train}" style="background-image: url('${pageContext.request.contextPath}/libs/images/trains/6.jpg');"></a>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div> 
                                                </div>
                                                <div class="col-lg-7 col-md-8 col-xs-12">
                                                    <div class="trend-content-main">
                                                        <div class="trend-content pt-2 pb-2">
                                                            <h3 class="mb-2"><a href="traindetail?id=${train.id_train}">${train.name_train}</a></h3>
                                                            <div class="rating border-b pb-1 mb-1">
                                                                <p class="mb-0"><span class="pink">Hãng tàu ${train.id_train_brand}</span></p>
                                                            </div>
                                                            <p>
                                                                ${train.description_train}
                                                            </p>
                                                            <a href="traindetail?id=${train.id_train}" class="grey">Xem chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <div class="text-center">
                                        <a href="#" class="nir-btn">Xem thêm <i class="fa fa-long-arrow-alt-right"></i></a>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <p class="text-center text-danger">Dữ liệu hiện không khả dụng. Vui lòng thử lại sau.</p>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>

                    <div class="col-lg-4 col-xs-12 mb-4">
                        <div class="form-navtab text-center">
                            <ul class="nav nav-tabs">
                                <li class="active mr-1">
                                    <div class="form-group mb-0">
                                        <a href="#tour-1" class="nir-btn w-100" data-toggle="tab"><i class="fa fa-train"></i> Một chiều</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="sidebar-sticky">
                            <div class="sidebar-item mb-4">
                                <form class="form-content">
                                    <h4 class="title white">Đặt vé</h4>
                                    <div class="tab-content">
                                        <div id="tour-1" class="row tab-pane in active">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label class="white">Điểm đi</label>
                                                    <div class="input-box">
                                                        <i class="flaticon-placeholder"></i>
                                                        <select class="niceSelect">
                                                            <option value="1">Hà Nội</option>
                                                            <option value="2">Đà Nẵng</option>
                                                            <option value="3">TP.HCM</option>
                                                        </select>
                                                    </div>                            
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label class="white">Điểm đến</label>
                                                    <div class="input-box">
                                                        <i class="flaticon-placeholder"></i>
                                                        <select class="niceSelect">
                                                            <option value="1">Hà Nội</option>
                                                            <option value="2">Đà Nẵng</option>
                                                            <option value="3">TP.HCM</option>
                                                        </select>
                                                    </div>                            
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label class="white">Ngày đi</label>
                                                    <div class="input-box">
                                                        <i class="flaticon-calendar"></i>
                                                        <input id="date-range0" type="text" placeholder="yyyy-mmm-dd">
                                                    </div>                            
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label class="white">Hãng tàu</label>
                                                    <div class="input-box">
                                                        <i class="flaticon-add-user"></i>
                                                        <select class="niceSelect">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                        </select>
                                                    </div>                             
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group mb-0">
                                                    <a href="#" class="nir-btn w-100"><i class="fa fa-search"></i> Tìm kiếm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
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
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-accordian.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-navscroll.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-date.js"></script>
    <script>
                                                (function () {
                                                    function c() {
                                                        var b = a.contentDocument || a.contentWindow.document;
                                                        if (b) {
                                                            var d = b.createElement('script');
                                                            d.innerHTML = "window.__CF$cv$params={r:'90d1e23ad85384ab',t:'MTczODc0Nzg0Ny4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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
                                                <script>
                                function submitForm(page) {
                                                        document.getElementById('form-page-' + page).submit();
                                    }
                                                
                                    
                                    
                                        
                                        </script>
</script>
</html>
