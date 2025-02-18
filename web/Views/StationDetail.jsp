<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <div class="breadcrumb-main pb-0" style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg);">
            <div class="breadcrumb-outer pt-10">
                <div class="container">
                    <div class="breadcrumb-content bread-content text-center pt-10">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item" aria-current="page"><a href="liststation">Nhà ga</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Ga ${station.name_station}</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </div>
        <!-- BreadCrumb Ends -->  


        <!-- blog starts -->
        <section class="blog trending destination-b">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="single-content">
                            <div class="description-images mb-4">
                                <div class="thumbnail-images">
                                    <div class="slider-store">
                                        <div>
                                            <img src="${station.image_station}" alt="1">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="description" id="description">
                                <div class="single-full-title border-b mb-2 pb-2">
                                    <div class="single-title">
                                        <h3 class="mb-1">Ga ${station.name_station}</h3>
                                        <div class="rating-main d-sm-flex align-items-center">
                                            <p class="mb-0 mr-2"><i class="flaticon-location-pin"></i>${station.name_station}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="description-inner mb-2">
                                    <h4>Giới thiệu về ${station.name_station}</h4>
                                    <p><strong>${station.name_station}</strong> là một trong những nhà ga quan trọng trong hệ thống đường sắt Việt Nam, đóng vai trò kết nối giao thông giữa các tỉnh thành và khu vực lân cận. Nhà ga phục vụ hành khách và hàng hóa, góp phần thúc đẩy phát triển kinh tế và giao thông vận tải.</p>
                                    <p>Tọa lạc tại <strong>${station.name_station}</strong>, ga có vị trí thuận lợi giúp hành khách dễ dàng tiếp cận các phương tiện giao thông khác như xe buýt, taxi và phương tiện cá nhân. Kiến trúc nhà ga kết hợp giữa nét truyền thống và hiện đại, mang lại không gian tiện nghi và thoải mái cho hành khách.</p>
                                    <p>Với lịch sử phát triển lâu đời, <strong>${station.name_station}</strong> không chỉ là một trung tâm vận tải quan trọng mà còn là một phần của nền văn hóa và lịch sử địa phương. Nhà ga đã chứng kiến sự thay đổi và phát triển của ngành đường sắt, từ những đoàn tàu hơi nước đầu tiên đến các chuyến tàu hiện đại ngày nay.</p>
                                    <p>Hàng năm, nhà ga phục vụ hàng triệu lượt hành khách, góp phần nâng cao chất lượng dịch vụ vận tải và tạo điều kiện thuận lợi cho việc di chuyển giữa các vùng miền. Với sự phát triển của ngành đường sắt, ${station.name_station} không ngừng được nâng cấp, hiện đại hóa để đáp ứng nhu cầu ngày càng cao của hành khách.</p>
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
                                            Dịch vụ bán vé tàu tại ga Hà Nội được đánh giá khá thuận tiện và chuyên nghiệp, đáp ứng nhu cầu của đông đảo hành khách. 
                                            Quầy bán vé được bố trí khoa học, nhân viên nhiệt tình, hỗ trợ tư vấn rõ ràng về lịch trình, giá cả và các chính sách ưu đãi.
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
                                            Dịch vụ bán vé tàu tại ga Hà Nội được đánh giá khá thuận tiện và chuyên nghiệp, đáp ứng nhu cầu của đông đảo hành khách. 
                                            Quầy bán vé được bố trí khoa học, nhân viên nhiệt tình, hỗ trợ tư vấn rõ ràng về lịch trình, giá cả và các chính sách ưu đãi.
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
                                            Dịch vụ bán vé tàu tại ga Hà Nội được đánh giá khá thuận tiện và chuyên nghiệp, đáp ứng nhu cầu của đông đảo hành khách. 
                                            Quầy bán vé được bố trí khoa học, nhân viên nhiệt tình, hỗ trợ tư vấn rõ ràng về lịch trình, giá cả và các chính sách ưu đãi.
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
    </script>
</html>
