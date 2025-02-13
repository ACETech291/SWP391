<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                                <li class="breadcrumb-item" aria-current="page"><a href="advertising">Bản tin</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Tiêu đề bài viết</li>
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
                                <img src="${pageContext.request.contextPath}/images/Advertising.png" alt="image">
                            </div>
                            <div class="row">
                                <div class="col-lg-2 col-md-2">
                                    <div class="date text-center bg-pink p-2">
                                        <h1 class="day mb-0 white">13</h1>
                                        <div class="month white">Feb</div>
                                    </div>
                                </div>
                                <div class="col-lg-10 col-md-10">
                                    <div class="blog-content mb-4 pt-0">
                                        <h3 class="blog-title"><a href="#" class="yellow">Tiêu đề</a></h3>
                                        <div class="para-content mb-2">
                                            <span class="mr-2"><a href="#" class="pink"><i class="fa fa-user mr-1"></i> Tên hãng</a></span>
                                        </div>
                                        <p>Nội dung</p>
                                    </div>   

                                    <!-- blog share -->
                                    <div class="blog-share d-flex justify-content-between align-items-center mb-4 bg-lgrey border">
                                        <div class="blog-share-tag">
                                            <ul class="inline">
                                                <li><strong>Chia sẻ bài viêt</strong></li>    
                                            </ul>
                                        </div>
                                        <div class="header-social">
                                            <ul>
                                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- blog comment list -->
                            <div class="single-comments single-box mb-4">
                                <h4 class="mb-4">Bình luận</h4>
                                <div class="comment-box">
                                    <div class="comment-image mt-2">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h4 class="mb-1 Soldman Kell">Mr.A</h4>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>  
                                        <p class="comment">
                                            Quảng cáo này thực sự gây ấn tượng mạnh với tôi từ cách tiếp cận sáng tạo đến thông điệp truyền tải rõ ràng. 
                                            Hình ảnh và màu sắc được sử dụng rất bắt mắt, thu hút sự chú ý ngay từ cái nhìn đầu tiên. 
                                            Thông điệp của quảng cáo rất phù hợp với đối tượng mục tiêu, giúp người xem dễ dàng liên tưởng đến sản phẩm và thương hiệu.
                                        </p>

                                        <div class="comment-like">
                                            <div class="like-title float-left">
                                                <a href="#" class="nir-btn mr-2">Trả lời</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-box">
                                    <div class="comment-image mt-2">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h4 class="mb-1 Soldman Kell">Mr.A</h4>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>  
                                        <p class="comment">
                                            Quảng cáo này thực sự gây ấn tượng mạnh với tôi từ cách tiếp cận sáng tạo đến thông điệp truyền tải rõ ràng. 
                                            Hình ảnh và màu sắc được sử dụng rất bắt mắt, thu hút sự chú ý ngay từ cái nhìn đầu tiên. 
                                            Thông điệp của quảng cáo rất phù hợp với đối tượng mục tiêu, giúp người xem dễ dàng liên tưởng đến sản phẩm và thương hiệu.
                                        </p>

                                        <div class="comment-like">
                                            <div class="like-title float-left">
                                                <a href="#" class="nir-btn mr-2">Trả lời</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-box">
                                    <div class="comment-image mt-2">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="image">
                                    </div>
                                    <div class="comment-content">
                                        <h4 class="mb-1 Soldman Kell">Mr.A</h4>
                                        <p class="comment-date">February 13, 2025 at 00:00 am</p>  
                                        <p class="comment">
                                            Quảng cáo này thực sự gây ấn tượng mạnh với tôi từ cách tiếp cận sáng tạo đến thông điệp truyền tải rõ ràng. 
                                            Hình ảnh và màu sắc được sử dụng rất bắt mắt, thu hút sự chú ý ngay từ cái nhìn đầu tiên. 
                                            Thông điệp của quảng cáo rất phù hợp với đối tượng mục tiêu, giúp người xem dễ dàng liên tưởng đến sản phẩm và thương hiệu.
                                        </p>

                                        <div class="comment-like">
                                            <div class="like-title float-left">
                                                <a href="#" class="nir-btn mr-2">Trả lời</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- blog review -->
                            <div class="single-add-review">
                                <h4 class="">Bình luận</h4>
                                <form>
                                    <div class="row">
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
    </script>
</html>
