<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <style>
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .pagination a {
            margin: 5px;
            padding: 10px;
            border: 1px solid #ccc;
            text-decoration: none;
        }
        .pagination a:hover {
            background-color: #007bff;
            color: white;
        }
        .pagination a {
            margin: 5px;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
        }

        .pagination .btn-primary {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }

    </style>
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
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet">
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
                        <c:forEach var ="train" items="${trains}">
                            <div class="swiper-slide">
                                <div class="slide-inner">
                                    <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/${train.image_train})"></div>
                                    <div class="overlay"></div>
                                </div> 
                            </div>
                        </c:forEach>            
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next" ></div>
                    <div  class="swiper-button-prev" id="search-results"></div>
                </div>                                
            </div>
        </section >
        <!-- banner ends -->

        <!-- form starts -->
        <div class="form-main"  >
            <div class="container">
                <div class="form-content form-content1 w-100 transparent p-0 shadow-none position-relative">
                    <div class="form-navtab text-center">
                        <ul class="nav nav-tabs">

                            <li  class="active"><a data-toggle="tab" href="#tour-1"><i class="fa fa-train"></i> Chuyến đi</a></li>

                        </ul>
                    </div>    

                    <div class="tab-content" >
                        <P style="color: red">${err}</P>
                        <P style="color: red">${message}</P>
                        <form action="Search" method="Post">
                            <div id="tour-1" class="tab-pane in active">
                                <div class="row d-flex align-items-center justify-content-between">
                                    <div class="col-lg">
                                        <div class="form-group mb-0">
                                            <label>Điểm đi</label>
                                            <div class="input-box">
                                                <i class="flaticon-placeholder"></i>
                                                <select class="select2" name="station_from">
                                                    <option value="">Chọn ga đi</option>
                                                    <c:forEach var="station" items="${listStation}">
                                                        <option value=${station.id_station}>${station.name_station}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>                            
                                        </div>
                                    </div>
                                    <div class="col-lg">
                                        <div class="form-group mb-0">
                                            <label>Điểm đến</label>
                                            <div class="input-box">
                                                <i class="flaticon-placeholder"></i>
                                                <select class="select2" name="station_end">
                                                    <option value="">Chọn ga đến</option>
                                                    <c:forEach var="station" items="${listStation}">
                                                        <option value=${station.id_station}>${station.name_station}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>                            
                                        </div>
                                    </div>
                                    <div class="col-lg">
                                        <div class="form-group mb-0">
                                            <label>Ngày đi</label>
                                            <div class="input-box">
                                                <i class="flaticon-calendar"></i>
                                                <input id="date-range0" type="date" name="date" placeholder="yyyy-mm-dd" >
                                            </div>                            
                                        </div>
                                    </div>
                                    <div class="col-lg">
                                        <div class="form-group mb-0">
                                            <label>Hãng tàu</label>
                                            <div class="input-box">
                                                <i class="flaticon-add-user"></i>
                                                <select class="niceSelect" name="train_brand">
                                                    <option value="">Chọn hãng</option>
                                                    <c:forEach var="brand" items="${listBrand}">
                                                        <option value="${brand.id_train_brand}">${brand.name_train_brand}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>                             
                                        </div>
                                    </div>
                                    <div class="col-lg">
                                        <div class="form-group mb-0 mt-3">
                                            <button type="submit" class="nir-btn w-100"><i class="fa fa-search mr-2"></i> Tìm kiếm</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <table class="table table-hover mb-0" >
                            <thead class="thead-light">
                                <tr>
                                    <th class="text-center align-middle">Ga đi</th>
                                    <th class="text-center align-middle">Giờ đi</th>
                                    <th class="text-center align-middle">Ga đến</th>
                                    <th class="text-center align-middle">Giờ đến</th>
                                    <th class="text-center align-middle">Ngày đi</th>
                                    <th class="text-center align-middle">Mã tàu</th>
                                    <th class="text-center align-middle">Giá vé</th>
                                    <th class="text-center align-middle"></th>
                                </tr>
                            </thead>
                            <tbody id="trip-list">
                                <c:if test="${empty listTripDTO and empty message}">
                                    <c:forEach  var="trip" items="${listTrips}" begin="0" end="49">
                                        <tr>
                                            <td class="text-center align-middle">${trip.start_station}</td>
                                            <td class="text-center align-middle">${trip.start_time}</td>
                                            <td class="text-center align-middle">${trip.end_station}</td>
                                            <td class="text-center align-middle">${trip.end_time}</td>
                                            <td class="text-center align-middle">${formattedDate}</td>
                                            <td class="text-center align-middle">${trip.name_train}</td>
                                            <td class="text-center align-middle">${trip.price_trip}</td>
                                            <td class="text-center align-middle"><a href="${pageContext.request.contextPath}/ChooseSeat?id_trip=${trip.id_trip}&date=${formattedDate}&start_time=${trip.start_time}" class="btn btn-primary">Đặt vé ngay</a></td>
                                        </tr>
                                    </c:forEach>  
                                </c:if>
                                <c:forEach var="trip" items="${listTripDTO}">
                                    <tr>
                                        <td class="text-center align-middle">${trip.start_station}</td>
                                        <td class="text-center align-middle">${trip.start_time}</td>
                                        <td class="text-center align-middle">${trip.end_station}</td>
                                        <td class="text-center align-middle">${trip.end_time}</td>
                                        <td class="text-center align-middle">${empty date ? formattedDate : date}</td>
                                        <td class="text-center align-middle">${trip.name_train}</td>
                                        <td class="text-center align-middle">${trip.price_trip}</td>
                                        <td class="text-center align-middle"><a href="${pageContext.request.contextPath}/ChooseSeat?id_trip=${trip.id_trip}&date=${empty date ? formattedDate : date}&start_time=${trip.start_time}" class="btn btn-primary">Đặt vé ngay</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <c:if test="${empty listTripDTO and empty message}">
                            <c:set var ="page" value="${requestScope.page}"/>
                            <div class="pagination">
                                <c:forEach begin="${1}" end="${5}" var="i">
                                    <a href="home?page=${i}" 
                                       class="btn ${i == page ? 'btn-primary' : 'btn-light'}">
                                        ${i}
                                    </a>
                                </c:forEach>
                            </div>
                        </c:if>
                        <c:if test="${not empty listTripDTO and empty message}">
                            <c:set var ="page" value="${requestScope.page}"/>
                            <div class="pagination">
                                <c:forEach begin="${1}" end="${num > 5 ? 5 : num}" var="i">
                                    <a href="Search?page=${i}" 
                                       class="btn ${i == page ? 'btn-primary' : 'btn-light'}">
                                        ${i}
                                    </a>
                                </c:forEach>
                            </div>
                        </c:if>
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
                                                <a href="traindetail?id=${train.id_train}">
                                                    <img src="${pageContext.request.contextPath}/${train.image_train}" alt="image">
                                                </a>
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="trend-content-main">
                                        <div class="trend-content">
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
                                                <img src="${pageContext.request.contextPath}/${station.image_station}" alt="${station.name_station}">
                                            </div>
                                        </a>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    
                                                    <span class="ml-2"></span>
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
                <div class="container">
                    <div class="row">
                        <c:forEach var="advertising" items="${listAdvertisings}" varStatus="status" begin="0" end="2">
                            <!-- Mở một hàng mới khi chỉ số (index) chia hết cho 3 -->
                            <c:if test="${status.index % 3 == 0}">
                                <div class="row mb-4"> 
                                </c:if>

                                <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/${advertising.image_advertising}" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><p class="pr-3">
                                                        <i class="fa fa-user pink pr-1"></i> ${advertising.managerName} 
                                                    </p></li>
                                                <li><p  class="pr-3">
                                                        <i class="fa fa-comment pink pr-1"></i> ${advertising.create_at}
                                                    </p></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0">
                                                <a href="advertisingdetail?id=${advertising.id_advertising}">${advertising.description_advertising}</a>
                                            </h4>
                                        </div>
                                    </div>
                                </div>

                                <!-- Đóng hàng khi đủ 3 phần tử hoặc là phần tử cuối cùng -->
                                <c:if test="${status.index % 3 == 2 or status.last}">
                                </div> <!-- Đóng hàng -->
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="justify-content-center text-center">
                <a href="advertising" class="per-btn">
                    <span  class="white">Xem thêm</span>
                </a>
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
        <script>
            $(document).ready(function () {
                $('.select2').select2({
                    placeholder: "Chọn hoặc nhập tên ga",
                    allowClear: true,
                    width: '100%',
                    matcher: function (params, data) {
                        if ($.trim(params.term) === '') {
                            return data;
                        }

                        if (data.text.toLowerCase().includes(params.term.toLowerCase())) {
                            return data;
                        }

                        return null;
                    }
                });
            });
        </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
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
            function submitPage(page) {
                document.getElementById("pageInput").value = page;
                document.getElementById("paginationForm").submit();
            }
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
            window.onload = function () {
                // Kiểm tra nếu URL có tham số tìm kiếm (tức là người dùng đã nhấn Search)
                if (window.location.href.includes("Search")) {
                    // Cuộn xuống phần kết quả
                    document.getElementById("search-results").scrollIntoView({behavior: 'smooth'});
                }
            };
</script>
</html>