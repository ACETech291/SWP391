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
                    <div class="col-lg-8 col-xs-12 mb-4">
                        <div class="trend-box">
                            <div class="list-results d-flex align-items-center justify-content-between">
                                <div class="click-menu d-flex align-items-center justify-content-between">
                                    <div class="change-list f-active mr-2"><a href="#"><i class="fa fa-bars"></i></a></div>
                                    <div class="sortby d-flex align-items-center justify-content-between ml-2">
                                        <select class="niceSelect">
                                            <option value="1" >Sắp xếp theo</option>
                                            <option value="2">A->Z</option>
                                            <option value="3">Z->A</option>
                                        </select> 
                                    </div>
                                </div>
                            </div>
                            <div class="blog-full d-flex justify-content-around mb-4">
                                <div class="row w-100">
                                    <div class="col-lg-5 col-md-4 col-xs-12 blog-height">
                                        <div class="blog-image">
                                            <a href="stationdetail" style="background-image: url(${pageContext.request.contextPath}/images/station.jpg);"></a>
                                        </div> 
                                    </div>
                                    <div class="col-lg-7 col-md-8 col-xs-12">
                                        <div class="blog-content p-0">
                                            <h4 class="mb-1"><a href="stationdetail" class="">Ga Hà Nội</a></h4>
                                            <div class="trend-tags">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Hà Nội</p>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Việt Nam</p>
                                            <p class="mb-2 border-t pt-2">Nội dung</p> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-full d-flex justify-content-around mb-4">
                                <div class="row w-100">
                                    <div class="col-lg-5 col-md-4 col-xs-12 blog-height">
                                        <div class="blog-image">
                                            <a href="stationdetail" style="background-image: url(${pageContext.request.contextPath}/images/station.jpg);"></a>
                                        </div> 
                                    </div>
                                    <div class="col-lg-7 col-md-8 col-xs-12">
                                        <div class="blog-content p-0">
                                            <h4 class="mb-1"><a href="stationdetail" class="">Ga Hà Nội</a></h4>
                                            <div class="trend-tags">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Hà Nội</p>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Việt Nam</p>
                                            <p class="mb-2 border-t pt-2">Nội dung</p> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-full d-flex justify-content-around mb-4">
                                <div class="row w-100">
                                    <div class="col-lg-5 col-md-4 col-xs-12 blog-height">
                                        <div class="blog-image">
                                            <a href="stationdetail" style="background-image: url(${pageContext.request.contextPath}/images/station.jpg);"></a>
                                        </div> 
                                    </div>
                                    <div class="col-lg-7 col-md-8 col-xs-12">
                                        <div class="blog-content p-0">
                                            <h4 class="mb-1"><a href="stationdetail" class="">Ga Hà Nội</a></h4>
                                            <div class="trend-tags">
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </div>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Hà Nội</p>
                                            <p class="mb-2 pink"><i class="fa fa-map-marker mr-1"></i> Việt Nam</p>
                                            <p class="mb-2 border-t pt-2">Nội dung</p> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <a href="#" class="nir-btn">Xem thêm <i class="fa fa-long-arrow-alt-right"></i></a>
                            </div>
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
                                <li class="mr-1">
                                    <div class="form-group mb-0">
                                        <a href="#tour-2" class="nir-btn w-100" data-toggle="tab"><i class="fa fa-train"></i> Khứ hồi</a>
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
                                        <div id="tour-2" class="row tab-pane">
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
                                                        <input id="date-range1" type="text" placeholder="yyyy-mmm-dd">
                                                    </div>                            
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label class="white">Ngày về</label>
                                                    <div class="input-box">
                                                        <i class="flaticon-calendar"></i>
                                                        <input id="date-range2" type="text" placeholder="yyyy-mm-dd">
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
    </script>
</html>
