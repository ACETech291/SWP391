<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tàu</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
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
                                <li class="breadcrumb-item active" aria-current="page">Tên tàu</li>
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
                                            <h3 class="mb-0">Tên tàu</h3>
                                            <div class="text-right d-flex">
                                                <h4 class="font-weight-bold mb-0 mr-1"> 1.490.000đ</h4>
                                                <span>/người</span>
                                            </div>
                                        </div>
                                        <div class="rating-main d-sm-flex align-items-center">
                                            <div class="rating mr-2">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span>(9,999 đánh giá)</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="single-slider">
                                    <div class="slider-1 slider-store">
                                        <div class="detail-slider-item">
                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="description-inner mb-2 mt-1">
                                    <p>Nội dung</p>
                                </div>
                            </div>

                            <!-- blog comment list -->
                            <div class="single-comments single-box mb-4" id="single-comments">
                                <h5 class="border-b pb-2 mb-2">Đánh giá</h5>
                                <div class="comment-box">
                                    <div class="comment-image">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h5 class="mb-1">Mr.A</h5>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>
                                        <div class="comment-rate">
                                            <div class="rating mar-right-15">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                        </div>    

                                        <p class="comment">
                                            Giá vé trên tàu này khá hợp lý so với tiện ích và dịch vụ đi kèm. 
                                            Nếu so với các phương tiện khác, mức giá này phù hợp với chất lượng chỗ ngồi, không gian thoải mái và thời gian di chuyển. 
                                        </p>
                                        <div class="comment-like">
                                            <div class="like-title">
                                                <a href="#" class="nir-btn">Phản hồi</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-box">
                                    <div class="comment-image">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h5 class="mb-1">Mr.A</h5>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>
                                        <div class="comment-rate">
                                            <div class="rating mar-right-15">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                        </div>    

                                        <p class="comment">
                                            Giá vé trên tàu này khá hợp lý so với tiện ích và dịch vụ đi kèm. 
                                            Nếu so với các phương tiện khác, mức giá này phù hợp với chất lượng chỗ ngồi, không gian thoải mái và thời gian di chuyển. 
                                        </p>
                                        <div class="comment-like">
                                            <div class="like-title">
                                                <a href="#" class="nir-btn">Phản hồi</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-box">
                                    <div class="comment-image">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h5 class="mb-1">Mr.A</h5>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>
                                        <div class="comment-rate">
                                            <div class="rating mar-right-15">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                        </div>    

                                        <p class="comment">
                                            Giá vé trên tàu này khá hợp lý so với tiện ích và dịch vụ đi kèm. 
                                            Nếu so với các phương tiện khác, mức giá này phù hợp với chất lượng chỗ ngồi, không gian thoải mái và thời gian di chuyển. 
                                        </p>
                                        <div class="comment-like">
                                            <div class="like-title">
                                                <a href="#" class="nir-btn">Phản hồi</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- blog review -->
                            <div class="single-add-review" id="single-add-review">
                                <h4>Đánh giá của bạn</h4>
                                <form>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="comment-rate">
                                                <div class="rating mar-right-15">
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea placeholder="Để lại bình luận của bạn tại đây (tối thiểu 250 kí tự)"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-btn">
                                                <a href="#" class="nir-btn">Gửi</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-xs-12 mb-4">
                        <div class="sidebar-sticky">
                            <div class="list-sidebar">
                                <div class="sidebar-item">
                                    <h3>Các đoàn tàu phổ biến</h3>
                                    <div class="about-slider">
                                        <div class="trend-item mb-0">
                                            <div class="trend-image">
                                                <img src="${pageContext.request.contextPath}/libs/images/trains/5.jpg" alt="image">
                                                <div class="trend-tags">
                                                    <a href="#"><i class="flaticon-like"></i></a>
                                                </div>
                                            </div>
                                            <div class="trend-content-main  shadow-none">
                                                <div class="trend-last-main">
                                                </div>
                                                <div class="trend-content pb-0">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <h4 class="bordernone pb-0 mb-1"><a href="#">Mã tàu</a></h4>
                                                    <div class="trend-daily d-flex align-items-center mb-1 border-b pb-1">
                                                        <strong>1.190.000đ</strong>
                                                    </div>
                                                    <a href="traindetail">Xem chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="trend-item mb-0">
                                            <div class="trend-image">
                                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                                                <div class="trend-tags">
                                                    <a href="#"><i class="flaticon-like"></i></a>
                                                </div>
                                            </div>
                                            <div class="trend-content-main  shadow-none">
                                                <div class="trend-last-main">
                                                </div>
                                                <div class="trend-content pb-0">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <h4 class="bordernone pb-0 mb-1"><a href="#">Mã tàu</a></h4>
                                                    <div class="trend-daily d-flex align-items-center mb-1 border-b pb-1">
                                                        <strong>1.490.000đ</strong>
                                                    </div>
                                                    <a href="traindetail">Xem chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="trend-item mb-0">
                                            <div class="trend-image">
                                                <img src="${pageContext.request.contextPath}/libs/images/trains/7.jpg" alt="image">
                                                <div class="trend-tags">
                                                    <a href="#"><i class="flaticon-like"></i></a>
                                                </div>
                                            </div>
                                            <div class="trend-content-main  shadow-none">
                                                <div class="trend-last-main">
                                                </div>
                                                <div class="trend-content pb-0">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <h4 class="bordernone pb-0 mb-1"><a href="#">Mã tàu</a></h4>
                                                    <div class="trend-daily d-flex align-items-center mb-1 border-b pb-1">
                                                        <strong>1.590.000đ</strong>
                                                    </div>
                                                    <a href="traindetail">Xem chi tiết <i class="fa fa-angle-double-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
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
