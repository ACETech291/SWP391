<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Profile</title>
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/libs/images/favicon.png" />
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
    </head>
    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!-- Preloader Ends -->

        <!-- header starts -->
        <header class="main_header_area headerstye-1">
            <!-- Navigation Bar -->
            <div class="header_menu" id="header_menu">
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="navbar-flex d-flex align-items-center justify-content-between w-100 pb-2 pt-2">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <a class="navbar-brand" href="home">
                                    <img src="${pageContext.request.contextPath}/libs/images/logo-white.png" alt="image">
                                    <img src="${pageContext.request.contextPath}/libs/images/logo.png" alt="image">
                                </a>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="navbar-collapse1 d-flex align-items-center" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav" id="responsive-menu">
                                    <li>
                                        <a href="home">Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="home">Tàu</a>
                                    </li>
                                    <li>
                                        <a href="home">Nhà ga</a>
                                    </li>
                                    <li>
                                        <a href="home">Chính sách</a>
                                    </li>
                                    <li>
                                        <a href="home">Liên hệ</a>
                                    </li>
                                </ul>
                            </div><!-- /.navbar-collapse -->   
                            <c:if test="${sessionScope.account.role.id  != null}">
                                <div class="register-login">
                                    <div class="register-login">
                                        <div class="dropdown">
                                            <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fa fa-user-circle"></i> ${sessionScope.account.userName}
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                                <a class="dropdown-item" href="Logout"><i class="sl sl-icon-power"></i> Đăng xuất</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <div id="slicknav-mobile"></div>
                        </div>
                    </div><!-- /.container-fluid --> 
                </nav>
            </div>
        </header>
        <!-- header ends -->

        <!-- BreadCrumb Starts -->
        <section
            class="breadcrumb-main pb-2"
            style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg)"
            >
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->

        <!-- Information -->
        <div id="dashboard" class="pt-10 pb-10">
            <div class="container">
                <div class="dashboard-main">
                    <div class="row">
                        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-sidebar">
                                <div class="dashboard-nav">
                                    <div class="dashboard-nav-inner">
                                        <ul>
                                            <li>
                                                <a href="#"><i class="sl sl-icon-settings"></i> Dashboard</a>
                                            </li>
                                            <li class="active">
                                                <a href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="sl sl-icon-envelope-open"></i> Messages</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="sl sl-icon-star"></i> Reviews</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="sl sl-icon-plus"></i> Add listing</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="sl sl-icon-layers"></i> Listing</a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-list-ul"></i>Booking History</a>
                                            </li>
                                            <li>
                                                <a href="Logout"><i class="sl sl-icon-power"></i> Đăng xuất</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-content">
                                <div class="dashboard-form mb-4">
                                    <div class="row">
                                        <!-- Profile -->
                                        <div class="col-lg-6 col-md-6 col-xs-12 padding-right-30">
                                            <div class="dashboard-list">
                                                <h4 class="gray">Thông tin cá nhân</h4>
                                                <div class="dashboard-list-static">
                                                    <!-- Avatar -->
                                                    <div class="edit-profile-photo">
                                                        <img src="${pageContext.request.contextPath}/libs/images/testimonial/img1.jpg" alt="" />
                                                        <div class="change-photo-btn">
                                                            <div class="photoUpload">
                                                                <span><i class="fa fa-upload"></i> Thay đổi ảnh</span>
                                                                <input type="file" class="upload" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Details -->
                                        <div class="col-lg-6 col-md-6 col-xs-12 padding-left-30">
                                            <div class="dashboard-list margin-top-0">
                                                <div class="dashboard-list-static">
                                                    <!-- Change Password -->
                                                    <div class="my-profile">
                                                        <div class="form-group">
                                                            <label>Tên của bạn</label>
                                                            <input value="${name}" type="text" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Số điện thoại</label>
                                                            <input value="${phone}" type="number" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Địa chỉ Email</label>
                                                            <input value="${email}" type="email" />
                                                        </div>

                                                        <div class="form-btn">
                                                            <a href="#" class="nir-btn">Lưu thay đổi</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="dashboard-form mb-4">
                                    <div class="dashboard-password">
                                        <h4>Đổi mật khẩu</h4>
                                        <form>
                                            <div class="row">
                                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label>Mật khẩu hiện tại</label>
                                                        <input type="password" placeholder="*********" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label>Mật khẩu mới</label>
                                                        <input type="password" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label>Xác nhận mật khẩu mới</label>
                                                        <input type="password" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-btn mar-top-15">
                                                        <a href="#" class="nir-btn">Lưu thay đổi</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Content / End -->
            </div>
        </div>
        <!-- Dashboard / End -->

        <!-- footer starts -->
        <footer class="pt-10 bubbles footermain">
            <div class="footer-upper pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-4">
                            <div class="footer-about bg-white p-4">
                                <img src="${pageContext.request.contextPath}/libs/images/logo.png" alt="">
                                <p class="mt-3">
                                    In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna
                                </p>
                                <ul>
                                    <li><strong>PO Box:</strong> +47-252-254-2542</li>
                                    <li><strong>Location:</strong> Collins Street, sydney, Australia</li>
                                    <li><strong>Email:</strong> <a href="https://htmldesigntemplates.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="61080f070e21380015130808160e130d054f020e0c">[email&#160;protected]</a></li>
                                    <li><strong>Website:</strong> www.Yatriiworld.com</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12 mb-4">
                            <div class="footer-links">
                                <h4 class="white">Company</h4>
                                <ul>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="#">Delivery Information</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms &amp; Conditions</a></li>
                                    <li><a href="#">Customer Service</a></li>
                                    <li><a href="#">Return Policy</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12 mb-4">
                            <div class="footer-links">
                                <h4 class="white">Services</h4>
                                <ul>
                                    <li><a href="#">Payment</a></li>
                                    <li><a href="#">Feedback</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Our Service</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Site map</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mb-4">
                            <div class="footer-links">
                                <h4 class="white">Newsletter</h4>
                                <p>Want to be notified when we launch a new template or an udpate. Just sign up and we'll send you a notification by email.</p>
                                <div class="newsletter-form">
                                    <form>
                                        <input type="email" placeholder="Enter your email">
                                        <input type="submit" class="nir-btn mt-2 w-100" value="Subscribe">
                                    </form>
                                </div> 
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-payment">
                <div class="container">
                    <div class="footer-pay d-md-flex align-items-center justify-content-between pt-2 pb-2">
                        <div class="footer-payment-nav">
                            <ul class="d-md-flex align-items-center">
                                <li class="mr-2">We Support:</li>
                                <li class="mr-2"><i class="fab fa-cc-mastercard"></i></li>
                                <li class="mr-2"><i class="fab fa-cc-paypal"></i></li>
                                <li class="mr-2"><i class="fab fa-cc-stripe"></i></li>
                                <li class="mr-2"><i class="fab fa-cc-visa"></i></li>
                                <li class="mr-2"><i class="fab fa-cc-discover"></i></li>
                            </ul>
                        </div>
                        <div class="footer-payment-nav mb-0">
                            <ul>
                                <li>
                                    <select>
                                        <option>English (United States)</option>
                                        <option>English (United States)</option>                                
                                        <option>English (United States)</option>
                                        <option>English (United States)</option>
                                        <option>English (United States)</option>
                                    </select>
                                </li>
                                <li>
                                    <select>
                                        <option>$ USD</option>
                                        <option>$ USD</option>
                                        <option>$ USD</option>
                                        <option>$ USD</option>
                                        <option>$ USD</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </div>
            <div class="footer-copyright pt-2 pb-2">
                <div class="container">
                    <div class="copyright-inner d-md-flex align-items-center justify-content-between">
                        <div class="copyright-text">
                            <p class="m-0 white">2020 Yatriiworld. All rights reserved.</p>
                        </div>
                        <div class="social-links">
                            <ul>  
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </div>
        </footer>
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
    <script src="${pageContext.request.contextPath}/libs/js/jpanelmenu.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/dashboard-custom.js"></script>

    <script>
        (function () {
            function c() {
                var b = a.contentDocument || a.contentWindow.document;
                if (b) {
                    var d = b.createElement("script");
                    d.innerHTML =
                            "window.__CF$cv$params={r:'90d1e2791f1b84ab',t:'MTczODc0Nzg1Ny4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
                    b.getElementsByTagName("head")[0].appendChild(d);
                }
            }
            if (document.body) {
                var a = document.createElement("iframe");
                a.height = 1;
                a.width = 1;
                a.style.position = "absolute";
                a.style.top = 0;
                a.style.left = 0;
                a.style.border = "none";
                a.style.visibility = "hidden";
                document.body.appendChild(a);
                if ("loading" !== document.readyState)
                    c();
                else if (window.addEventListener)
                    document.addEventListener("DOMContentLoaded", c);
                else {
                    var e = document.onreadystatechange || function () {};
                    document.onreadystatechange = function (b) {
                        e(b);
                        "loading" !== document.readyState &&
                                ((document.onreadystatechange = e), c());
                    };
                }
            }
        })();
    </script>
</html>