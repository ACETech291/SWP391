<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Hãng</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
        <style>
            .rating {
                direction: rtl; /* Đảo ngược sao để khi chọn đúng thứ tự */
                unicode-bidi: bidi-override;
                text-align: left;
            }

            .rating input {
                display: none; /* Ẩn input radio */
            }

            .rating label {
                font-size: 30px;
                color: gray;
                cursor: pointer;
                display: inline-block;
            }

            .rating input:checked ~ label,
            .rating label:hover,
            .rating label:hover ~ label {
                color: gold; /* Tô kín sao khi chọn hoặc hover */
            }
            .comment-box {
                display: flex;
                align-items: flex-start;
                padding: 10px;
                border-bottom: 1px solid #ddd;
                min-height: 150px; /* Đặt chiều cao tối thiểu */
            }

            .comment-image img {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                margin-right: 15px;
            }

            .comment-content {
                flex: 1;
                min-height: 100px; /* Chiều cao tối thiểu */
                max-height: 150px; /* Chiều cao tối đa */
                overflow: hidden; /* Ẩn nội dung vượt quá */
                text-overflow: ellipsis; /* Cắt nội dung dài bằng dấu "..." */
            }

            .comment-content p.comment {
                display: -webkit-box;
                -webkit-line-clamp: 3; /* Giới hạn số dòng hiển thị */
                -webkit-box-orient: vertical;
                overflow: hidden;
            }
            .blog-imagelist img {
                display: block;
                margin: auto;
            }
            .rating {
                direction: rtl; /* Đảo ngược sao để khi chọn đúng thứ tự */
                unicode-bidi: bidi-override;
                text-align: left;
            }

            .rating input {
                display: none; /* Ẩn input radio */
            }

            .rating label {
                font-size: 30px;
                color: gray;
                cursor: pointer;
                display: inline-block;
            }

            .rating input:checked ~ label,
            .rating label:hover,
            .rating label:hover ~ label {
                color: gold; /* Tô kín sao khi chọn hoặc hover */
            }
            .comment-box {
                display: flex;
                align-items: flex-start;
                padding: 10px;
                border-bottom: 1px solid #ddd;
                min-height: 150px; /* Đặt chiều cao tối thiểu */
            }

            .comment-image img {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                margin-right: 15px;
            }

            .comment-content {
                flex: 1;
                min-height: 100px; /* Chiều cao tối thiểu */
                max-height: 150px; /* Chiều cao tối đa */
                overflow: hidden; /* Ẩn nội dung vượt quá */
                text-overflow: ellipsis; /* Cắt nội dung dài bằng dấu "..." */
            }

            .comment-content p.comment {
                display: -webkit-box;
                -webkit-line-clamp: 3; /* Giới hạn số dòng hiển thị */
                -webkit-box-orient: vertical;
                overflow: hidden;
            }
            .rating-filter {
                display: flex;
                gap: 10px;
                margin-top: 10px;
            }
            .rating-btn {
                padding: 8px 12px;
                background-color: #f4f4f4;
                border: 1px solid #ddd;
                border-radius: 5px;
                text-decoration: none;
                color: #333;
                transition: background 0.3s;
            }
            .rating-btn:hover {
                background-color: #ddd;
            }
            .rating-btn.all {
                font-weight: bold;
            }
        </style>
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
                                <li class="breadcrumb-item" aria-current="page"><a href="ListBrand">Hãng tàu</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Chi tiết hãng tàu</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->  

        <!-- blog starts -->
        <section class="blog blog-left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="blog-single">
                            <div class="blog-imagelist mb-3">
                                <img src="${pageContext.request.contextPath}/${trainBrand.image_train_brand}" alt="image" style="width: 50%; height: auto; display: block; margin: auto;">
                            </div>
                            <div class="row">
                                <div class="col-lg-10 col-md-10">
                                    <div class="blog-content mb-4 pt-0">
                                        <p >${result}<small class="fa fa-star text-warning"></small></p>
                                        <h4  class="blog-title"><a href="#" class="yellow" style=" color: grey">Tên hãng: ${trainBrand.name_train_brand}</a></h4>
                                        <p>${trainBrand.description_train_brand}</p>
                                    </div>   
                                    <!-- blog share -->
                                </div>
                            </div>
                        </div>
                    </div>                               
                </div>
                <div id="comments"></div>
                <div class="single-comments single-box mb-4">
                    <h4 class="mb-4">Bình luận</h4>
                    <div class="rating-filter">
                        <a href="SearchComment?rating=5&id_brand_voting=${trainBrand.id_train_brand}" class="rating-btn">5(${vote5}) <small class="fa fa-star text-warning"></small></a>
                        <a href="SearchComment?rating=4&id_brand_voting=${trainBrand.id_train_brand}" class="rating-btn">4(${vote4}) <small class="fa fa-star text-warning"></small></a>
                        <a href="SearchComment?rating=3&id_brand_voting=${trainBrand.id_train_brand}" class="rating-btn">3(${vote3}) <small class="fa fa-star text-warning"></small></a>
                        <a href="SearchComment?rating=2&id_brand_voting=${trainBrand.id_train_brand}" class="rating-btn">2(${vote2}) <small class="fa fa-star text-warning"></small></a>
                        <a href="SearchComment?rating=1&id_brand_voting=${trainBrand.id_train_brand}" class="rating-btn">1(${vote1}) <small class="fa fa-star text-warning"></small></a>
                    </div>
                    <c:choose>
                        <c:when test="${empty listComment}">
                            <h4 class="text-muted">Không có bình luận nào phù hợp.</h4>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="comment" items="${listComment}">
                                <div class="comment-box">
                                    <div class="comment-image mt-2">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h4 class="mb-1 Soldman Kell">${comment.name_customer}</h4>
                                        <p class="comment-date">${comment.create_at}</p>  

                                        <!-- Hiển thị số sao -->
                                        <p class="rating">
                                            <c:forEach begin="1" end="${comment.voting_comment}">
                                                <i class="fa fa-star text-warning"></i>
                                            </c:forEach>
                                        </p>

                                        <p class="comment">${comment.content}</p>
                                    </div>
                                </div>     
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div class="single-add-review">
                    <h4 class="">Bình luận</h4>
                    <form action="Comment" method="POST" onsubmit="return validateForm()"> <!-- Kiểm tra trước khi submit -->
                        <input type="hidden" name="id_brand" value="${trainBrand.id_train_brand}"> <!-- Gửi ID bài viết -->

                        <div class="row">
                            <!-- Chọn số sao -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Chọn số sao:</label>
                                    <div class="rating">
                                        <input type="radio" id="star5" name="rating" value="5"><label for="star5">☆</label>
                                        <input type="radio" id="star4" name="rating" value="4"><label for="star4">☆</label>
                                        <input type="radio" id="star3" name="rating" value="3"><label for="star3">☆</label>
                                        <input type="radio" id="star2" name="rating" value="2"><label for="star2">☆</label>
                                        <input type="radio" id="star1" name="rating" value="1"><label for="star1">☆</label>
                                    </div>
                                </div>
                            </div>

                            <!-- Nhập nội dung bình luận -->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="comment" placeholder="Để lại bình luận của bạn tại đây (tối thiểu 20 kí tự)" required minlength="20"></textarea>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-btn">
                                    <button type="submit" class="nir-btn">Gửi</button>
                                </div>
                            </div>
                        </div>
                    </form>
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
    <script>
                        (function () {
                            function c() {
                                var b = a.contentDocument || a.contentWindow.document;
                                if (b) {
                                    var d = b.createElement('script');
                                    d.innerHTML = "window.__CF$cv$params={r:'90d1e26cbff884ab',t:'MTczODc0Nzg1NS4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='../../cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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
                        function validateForm() {
                            var ratingChecked = document.querySelector('input[name="rating"]:checked');
                            if (!ratingChecked) {
                                alert("Vui lòng chọn số sao trước khi gửi bình luận!");
                                return false; // Ngăn form submit
                            }
                            return true;
                        }
                        window.onload = function () {
                            // Lấy URL hiện tại
                            let urlParams = new URLSearchParams(window.location.search);
                            // Kiểm tra nếu có tham số "rating"
                            if (urlParams.has("rating")) {
                                // Cuộn mượt xuống phần bình luận
                                document.getElementById("comments").scrollIntoView({behavior: 'smooth'});
                            }
                        };
    </script>
</html>
