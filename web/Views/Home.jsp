<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Trang chủ</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
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

            <!-- banner starts -->
            <section class="banner overflow-hidden">
                <div class="slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="slide-inner">
                                    <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/4.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-inner">
                                <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/6.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-inner">
                                <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/7.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
        <!-- banner ends -->

        <!-- form starts -->
        <div class="form-main">
            <div class="container">
                <div class="form-content form-content1 w-100 transparent p-0 shadow-none position-relative">
                    <div class="form-navtab text-center">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tour-1"><i class="fa fa-train"></i> Một chiều</a></li>
                        </ul>
                    </div>    

                    <div class="tab-content">
                        <div id="tour-1" class="tab-pane in active">
                            <div class="row d-flex align-items-center justify-content-between">
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đi</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đến</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Ngày đi</label>
                                        <div class="input-box">
                                            <i class="flaticon-calendar"></i>
                                            <input id="date-range0" type="text" placeholder="yyyy-mm-dd">
                                        </div>                            
                                    </div>
                                </div>
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Hãng tàu</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0 mt-3">
                                        <a href="#" class="nir-btn w-100"><i class="fa fa-search mr-2"></i> Tìm kiếm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- form ends -->

        <!-- list train starts -->
        <section class="top-deals bg-grey pt-9">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0">Danh sách <span>Tàu</span></h2>
                    <p class="mb-0">Danh sách những đoàn tàu đang hoạt động của chúng tôi</p>
                </div> 


                <div class="row team-slider">
                    <c:choose>
                        <c:when test="${not empty trains}">
                            <c:forEach var="train" items="${trains}">
                                <div class="col-lg-4 slider-item">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <c:choose>
                                                <c:when test="${not empty train.image_train}">
                                                    <img src="${pageContext.request.contextPath}/${train.image_train}" alt="image">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Hãng tàu ${train.id_train_brand}</h6>
                                                <h4><a href="traindetail?id=${train.id_train}">Tàu ${train.name_train}</a></h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <p class="text-center text-danger">Dữ liệu hiện không khả dụng. Vui lòng thử lại sau.</p>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </section>
        <!-- list train ends -->

        <!-- List train trip Starts -->
        <section class="trending pb-6 pt-5">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0">Danh sách <span>Các chuyến đi</span></h2>
                    <p class="mb-0">Danh sách các chuyến đi khả dụng</p>
                </div>  

                <!-- Thanh cuộn ngày -->
                <div class="container-fluid mb-3">
                    <div id="date-scroll" class="d-flex overflow-auto bg-light border-bottom py-2 date-scroll"></div>
                </div>
                <!-- Kết thúc thanh cuộn ngày -->

                <div id="cart-main" class="cart-main pb-4">
                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="card shadow-sm">
                                    <div class="card-body p-0">
                                        <!-- Bọc bảng trong div có max-height để tạo thanh cuộn -->
                                        <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                                            <table class="table table-hover mb-0">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th class="text-center align-middle">Mã tàu</th>
                                                        <th class="text-center align-middle">Hình ảnh</th>
                                                        <th class="text-center align-middle">Khởi hành</th>
                                                        <th class="text-center align-middle">Dự kiến đến</th>
                                                        <th class="text-center align-middle">Điểm đi</th>
                                                        <th class="text-center align-middle">Điểm đến</th>
                                                        <th class="text-center align-middle">Giá vé</th>
                                                        <th class="text-center align-middle"></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="trip-list">
                                                    <tr>
                                                        <td colspan="8" class="text-center">Đang tải dữ liệu...</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- Kết thúc div table-responsive -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- List train trip Ends -->

        <!-- Station Starts -->
        <section class="trending destination pb-6 pt-9"  style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg4.jpg);">
            <div class="container">
                <div class="section-title section-title-w text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0 white">Nhà <strong>Ga</strong></h2>
                    <p class="mb-0 white">Danh sách các nhà ga đang hoạt động</p>
                </div>  
                <div class="trend-box">
                    <div class="tab-content">
                        <div id="historical" class="tab-pane fade in active">
                            <div class="row">
                                <c:forEach var="station" items="${listStation}" begin="0" end="5" >
                                    <div class="col-lg-4 col-md-6 mb-4">
                                        <div class="trend-item">
                                            <a href="stationdetail?id=${station.id_station}">
                                                <div class="trend-image">
                                                    <img src="${station.image_station}" alt="${station.name_station}">
                                                </div>
                                            </a>
                                            <div class="trend-content-main">
                                                <div class="trend-content">
                                                    <div class="rating-main d-flex align-items-center pb-1">
                                                        <div class="rating">
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                            <span class="fa fa-star checked"></span>
                                                        </div>
                                                        <span class="ml-2">99 đánh giá</span>
                                                    </div>
                                                    <h4><a href="stationdetail?id=${station.id_station}">${station.name_station}</a></h4>
                                                </div>
                                                <div class="trend-last-main">
                                                    <p class="mb-0 trend-para">${station.description_station}</p>
                                                    <div class="trend-last d-flex align-items-center justify-content-between">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>   
                <div class="justify-content-center text-center">
                    <a href="liststation" class="per-btn">
                        <span class="white">Xem thêm</span>
                    </a>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- Station Ends -->

        <!-- News Starts -->
        <section class="news pb-2 pt-9">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0"><span>Bản tin</span></h2>
                    <p class="mb-0 ">Danh sách bản tin mới nhất</p>
                </div> 
                <div class="news-outer">
                    <div class="row">
                        <div class="col-lg-5 col-md-12 col-xs-12 mb-4">
                            <div class="news-item overflow-hidden">
                                <div class="news-image">
                                    <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                                </div>
                                <div class="news-list mt-2 border-b pb-2 mb-2">
                                    <ul>
                                        <li><a href="#" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                        <li><a href="#" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                    </ul>
                                </div>
                                <div class="news-content mt-2">
                                    <h4 class="pb-2 mb-2 border-b"><a href="advertisingdetail">Tiêu đề</a></h4>
                                    <p class="mb-3"> <br>Nội dung</p>

                                    <div class="author-img">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="Demo Image">
                                        <span>Tên hãng</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="#" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="#" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="advertisingdetail">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="#" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="#" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="advertisingdetail">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="#" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="#" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="advertisingdetail">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="#" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="#" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="advertisingdetail">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- News Ends -->

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
    <script src="${pageContext.request.contextPath}/libs/js/particles.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particlerun.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-swiper.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-date.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/ScrollDay.js"></script>
    <script>
        function c() {
            var b = a.contentDocument || a.contentWindow.document;
            if (b) {
                var d = b.createElement('script');
                d.innerHTML = "window.__CF$cv$params={r:'90d1e0ce199784ab',t:'MTczODc0Nzc5MC4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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
    </script>
</html>