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
                <div  id="abc" class="row">
                    <div class="col-lg-8 col-xs-12 mb-4">
                        <div class="trend-box">
                            <div class="list-results d-flex align-items-center justify-content-between">
                                <div class="click-menu d-flex align-items-center justify-content-between">
                                    <div class="change-list f-active mr-2"><a href="#"><i class="fa fa-bars"></i></a></div>
                                    <div class="sortby d-flex align-items-center justify-content-between ml-2">
                                        <form action="SortServlet" method="POST">
                                            <select name="order" class="niceSelect" onchange="this.form.submit()">
                                                <option value="1" ${param.order == '1' ? 'selected' : ''}>Sắp xếp theo</option>
                                                <option value="2" ${param.order == '2' ? 'selected' : ''}>A->Z</option>
                                                <option value="3" ${param.order == '3' ? 'selected' : ''}>Z->A</option>
                                            </select>
                                        </form>
                                        <form style="margin-left: 100px" action="listtrain" method="POST">
                                            <select name="choose" class="niceSelect" onchange="this.form.submit()">
                                                <option value="all">Chọn hãng theo</option>
                                                <c:forEach var="brand" items="${brandList}">
                                                    <option value="${brand.id_train_brand}" ${selectedBrand == brand.id_train_brand ? 'selected' : ''}>
                                                        ${brand.name_train_brand}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${not empty trains}">
                                    <c:forEach var="train" items="${trains}">
                                        <div class="train blog-full d-flex justify-content-around mb-4">
                                            <div class="row w-100">
                                                <div class="col-lg-5 col-md-4 col-xs-12 blog-height">
                                                    <div class="blog-image">
                                                        <c:choose>
                                                            <c:when test="${not empty train.image_train}">
                                                                <a href="traindetail?id=${train.id_train}">
                                                                    <img src="${pageContext.request.contextPath}/${train.image_train}" alt="image">
                                                                </a>
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
                                </c:when>
                                <c:otherwise>
                                    <p class="text-center text-danger">Dữ liệu hiện không khả dụng. Vui lòng thử lại sau.</p>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <c:if test="${param.order == null and param.order == '1'}">
            <div class="text-center">
                <button onclick="loadMore()" class="per-btn">
                    <span class="grey">Xem thêm</span>
                </button>
            </div>
        </c:if>
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

                    function loadMore() {
                        var amount = document.getElementsByClassName("train").length;
                        $.ajax({
                            url: "/SWP391/LoadTrain",
                            type: "get",
                            data: {
                                exists: amount},
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
