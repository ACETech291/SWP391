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
        <title>Bản tin</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Bản tin</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->  
        <div class="container my-4">
            <form method="Post" action="advertising">
                <div class="row">
                    <div class="col-md-4">
                        <label for="sort">Sắp xếp theo:</label>
                        <select class="form-control" name="sort">
                            <option value="newest">Mới nhất</option>
                            <option value="oldest">Cũ nhất</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="brand">Chọn hãng:</label>
                        <select class="form-control" name="brand">
                            <option value="all">Tất cả</option>
                            <c:forEach var="brand" items="${brandList}">
                                <option value="${brand.name_train_brand}">${brand.name_train_brand}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-md-4 d-flex align-items-end">
                        <button type="submit" class="btn btn-primary">Lọc</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- blog starts -->
        <section class="blog pb-6">
            <div id="abc" class="container">
                <div  class="blog-main">
                    <div  class="row">    
                        <c:forEach var="advertising" items="${listAdvertisings}" >
                            <div class="advertising col-lg-4 col-md-6 col-sm-12 col-xs-12 mansonry-item mb-2">
                                <div class="blog-full text-center p-3">
                                    <img src="${advertising.image_advertising}" alt="">
                                    <div class="blog-content pb-0">
                                        <span class="h-date pink mb-1 font-weight-light d-block"> 5-3-2025</span>
                                        <h3 class="mb-2"><a href="advertisingdetail?id=${advertising.id_advertising}" class="">${advertising.description_advertising}</a></h3>
                                        <p class="date-cats mb-0 border-t pt-2 pb-2">
                                            <a href="#" class=""><i class="fa fa-user"></i> ${advertising.managerName}</a>
                                        </p> 
                                        <a href="advertisingdetail?id=${advertising.id_advertising}" class="grey font-weight-light">Chi tiết ở đây <i class="fa fa-long-arrow-alt-right"></i></a>
                                    </div>                        
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <div class="justify-content-center text-center">
            <button onclick="loadMore()" class="per-btn">
                <span class="grey">Xem thêm</span>
            </button>
        </div>
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

            <!-- search popup -->
            <div id="search1">
                <button type="button" class="close">×</button>
                <form>
                    <input type="search" value="" placeholder="type keyword(s) here" />
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>
        </body>

        <script data-cfasync="false" src="${pageContext.request.contextPath}/libs/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script>
                                    (function () {
                                        function c() {
                                            var b = a.contentDocument || a.contentWindow.document;
                                            if (b) {
                                                var d = b.createElement('script');
                                                d.innerHTML = "window.__CF$cv$params={r:'90d1e261284384ab',t:'MTczODc0Nzg1My4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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
                                    function loadMore() {
                                        var amount = document.getElementsByClassName("advertising").length;
                                        $.ajax({
                                            url: "/SWP391/LoadAdvertising",
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