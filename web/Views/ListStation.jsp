<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <style>
        .per-btn {
            background-color: transparent; /* Nền trong suốt */
            border: none; /* Bỏ viền */
            outline: none; /* Bỏ viền khi focus */
            color: #fff; /* Màu chữ */
            font-size: 16px; /* Kích thước chữ */
            cursor: pointer; /* Con trỏ khi hover */
            padding: 10px 20px; /* Khoảng cách giữa nội dung và viền */
        }


    </style>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Nhà ga</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Nhà ga</li>
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
                    <div class="col-12 mb-4">
                        <div class="trend-box">
                            <div class="list-results d-flex align-items-center justify-content-between">
                                <div class="click-menu d-flex align-items-center justify-content-between">
                                    <div class="change-list f-active mr-2"><a href="#"><i class="fa fa-bars"></i></a></div>
                                    <div class="sortby d-flex align-items-center justify-content-between ml-2">
                                        <form action="SortServlet" method="GET">
                                            <select name="order" class="niceSelect" onchange="this.form.submit()">
                                                <option ${param.order == '1' ? 'selected' : ''} value="1">Sắp xếp theo</option>
                                                <option ${param.order == '2' ? 'selected' : ''} value="2">A->Z</option>
                                                <option ${param.order == '3' ? 'selected' : ''} value="3">Z->A</option>
                                            </select>
                                        </form> 
                                        <div class="search-container" style="float: inline-end; margin-right: 30px">
                                            <form style="margin-left: 30px" action="search" method="post">
                                                <input oninput="SearchByName(this)" value = "${nameSearch}" name="NameStation" style="width: 500px;height: 40px " type="text" placeholder="Tìm kiếm theo tên ga">

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="abc" class="row">
                                <c:choose>
                                    <c:when test="${not empty listStation}">
                                        <c:forEach  var="station" items="${listStation}">
                                            <div class="station col-lg-4 col-md-6 col-sm-12 mb-4">
                                                <div class="blog-full">
                                                    <div class="blog-image">
                                                        <a href="stationdetail?id=${station.id_station}">
                                                            <div class="trend-image">
                                                                <img src="${pageContext.request.contextPath}/${station.image_station}" alt="${station.name_station}">
                                                            </div>
                                                        </a>
                                                    </div> 
                                                    <div class="blog-content p-3">
                                                        <h4><a href="stationdetail?id=${station.id_station}">${station.name_station}</a></h4>
                                                        <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> ${station.name_station}, Việt Nam</p>
                                                        <p class="mb-2 border-t pt-2">${station.description_station}</p> 
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
                            <div class="justify-content-center text-center">
                                <c:if test="${order == null or order == '1'}">
                                    <div class="text-center">
                                        <button onclick="loadMore()" class="per-btn">
                                            <span class="grey">Xem thêm</span>
                                        </button>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- blog Ends -->  

        <!-- footer starts -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
    <script src="${pageContext.request.contextPath}/libs/js/custom-date.js"></script>

    <script>

                    (function () {
                        function c() {
                            var b = a.contentDocument || a.contentWindow.document;
                            if (b) {
                                var d = b.createElement('script');
                                d.innerHTML = "window.__CF$cv$params={r:'90d1e217db2620fc',t:'MTczODc0Nzg0Mi4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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
                    function SearchByName(param) {
                        var txtSearch = param.value;
                        $.ajax({
                            url: "/SWP391/SearchByAjax",
                            type: "post",
                            data: {NameStation: txtSearch},
                            success: function (data) {
                                document.getElementById("abc").innerHTML = data;
                            },
                            error: function (xhr) {
                                alert("An error occurred while searching. Please try again.");
                            }
                        });
                    }
                    function loadMore() {
                        var amount = document.getElementsByClassName("station").length;
                        $.ajax({
                            url: "/SWP391/LoadStation",
                            type: "get",
                            data: {
                                exists: amount
                            },
                            success: function (data) {
                                var row = document.getElementById("abc");
                                row.innerHTML += data;
                            },
                            error: function (xhr) {
                                console.error("Error loading more data");
                            }
                        });
                    }
    </script>
</html>
