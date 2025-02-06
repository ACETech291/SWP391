<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SWP391</title>
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/libs/images/favicon.png">
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

                            <div class="register-login">
                                <a href="register" data-target="#register"><i class="icon-user mr-1"></i> Đăng kí</a>
                                <a href="login" data-target="#login"><i class="icon-login mr-1"></i> Đăng nhập</a>
                            </div>

                            <div id="slicknav-mobile"></div>
                        </div>
                    </div><!-- /.container-fluid --> 
                </nav>
            </div>
            <!-- Navigation Bar Ends -->
        </header>
        <!-- header ends -->

        <!-- banner starts -->
        <section class="banner overflow-hidden">
            <div class="slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="slide-inner">
                                <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/4.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-inner">
                                <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/6.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                        <div class="swiper-slide">
                            <div class="slide-inner">
                                <div class="slide-image" style="background-image:url(${pageContext.request.contextPath}/libs/images/trains/7.jpg)"></div>
                                <div class="swiper-content container">
                                    <h4 class="blue">Tiêu đề</h4>
                                    <h1 class="white mb-4">Nội dung</h1>
                                    <a href="#" class="per-btn">
                                        <span class="white">Tìm hiểu thêm</span>
                                        <i class="fa fa-arrow-right white"></i>
                                    </a>
                                </div>
                                <div class="overlay"></div>
                            </div> 
                        </div>
                    </div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
        <!-- banner ends -->

        <!-- form starts -->
        <div class="form-main">
            <div class="container">
                <div class="form-content form-content1 w-100 transparent p-0 shadow-none position-relative">
                    <div class="form-navtab text-center">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tour-1"><i class="fa fa-train"></i> Một chiều</a></li>
                            <li><a data-toggle="tab" href="#tour-2"><i class="fa fa-train"></i> Khứ hồi</a></li>
                        </ul>
                    </div>    

                    <div class="tab-content">
                        <div id="tour-1" class="tab-pane in active">
                            <div class="row d-flex align-items-center justify-content-between">
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đi</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đến</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Ngày đi</label>
                                        <div class="input-box">
                                            <i class="flaticon-calendar"></i>
                                            <input id="date-range0" type="text" placeholder="yyyy-mm-dd">
                                        </div>                            
                                    </div>
                                </div>
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Hãng tàu</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0 mt-3">
                                        <a href="#" class="nir-btn w-100"><i class="fa fa-search mr-2"></i> Tìm kiếm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tour-2" class="tab-pane">
                            <div class="row d-flex align-items-center justify-content-between">
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đi</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Điểm đến</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Ngày đi</label>
                                        <div class="input-box">
                                            <i class="flaticon-calendar"></i>
                                            <input id="date-range1" type="text" placeholder="yyyy-mm-dd">
                                        </div>                            
                                    </div>
                                </div>
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Ngày về</label>
                                        <div class="input-box">
                                            <i class="flaticon-calendar"></i>
                                            <input id="date-range2" type="text" placeholder="yyyy-mm-dd">
                                        </div>                            
                                    </div>
                                </div>
                                <div class="col-lg">
                                    <div class="form-group mb-0">
                                        <label>Hãng tàu</label>
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
                                <div class="col-lg">
                                    <div class="form-group mb-0 mt-3">
                                        <a href="#" class="nir-btn w-100"><i class="fa fa-search mr-2"></i> Tìm kiếm</a>
                                    </div>
                                </div>
                            </div>
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
                    <div class="col-lg-4 slider-item">
                        <div class="trend-item">
                            <div class="trend-image">
                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                            </div>
                            <div class="trend-content-main">
                                <div class="trend-content">
                                    <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Hãng A</h6>
                                    <h4><a href="#">Tên tàu</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 slider-item">
                        <div class="trend-item">
                            <div class="trend-image">
                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                            </div>
                            <div class="trend-content-main">
                                <div class="trend-content">
                                    <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Hãng A</h6>
                                    <h4><a href="#">Tên tàu</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 slider-item">
                        <div class="trend-item">
                            <div class="trend-image">
                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                            </div>
                            <div class="trend-content-main">
                                <div class="trend-content">
                                    <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Hãng A</h6>
                                    <h4><a href="#">Tên tàu</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 slider-item">
                        <div class="trend-item">
                            <div class="trend-image">
                                <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image">
                            </div>
                            <div class="trend-content-main">
                                <div class="trend-content">
                                    <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Hãng A</h6>
                                    <h4><a href="#">Tên tàu</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- list train ends -->

        <!-- List train trip Starts -->
        <section class="trending pb-6 pt-5">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0">Danh sách <span>Các chuyến đi</span></h2>
                    <p class="mb-0">Danh sách các chuyến đi khả dụng</p>
                </div>  
                <div id="cart-main" class="cart-main pb-10">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-auto mx-auto">
                                <div class="cart-inner">
                                    <div class="cart-table-list">
                                        <div class="order-list">
                                            <table class="shop_table rt-checkout-review-order-table bg-white">
                                                <thead>
                                                    <tr>
                                                        <th>Mã số tàu</th>
                                                        <th class="product-name">Hình ảnh</th>
                                                        <th class="product-name">Thời gian khởi hành</th>
                                                        <th class="product-name">Thời gian dự kiến</th>
                                                        <th class="product-name">Điểm đi</th>
                                                        <th class="product-name">Điểm đến</th>
                                                        <th class="product-total">Giá tiền</th>
                                                        <th class="product-name">Đặt ghế</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><strong>01</strong></td>
                                                        <td>
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image" class="w-25">
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 6, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 7, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Hà Nội</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Sài Gòn</strong></span> 
                                                        </td>

                                                        <td class="cart-subtotal">
                                                            <span class="rt-Price-amount">1.000.000đ</span>
                                                        </td>
                                                        <td class="wish-edit d-flex">
                                                            <a href="#"><i class="fa fa-edit pr-2"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>01</strong></td>
                                                        <td>
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image" class="w-25">
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 6, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 7, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Hà Nội</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Sài Gòn</strong></span> 
                                                        </td>

                                                        <td class="cart-subtotal">
                                                            <span class="rt-Price-amount">1.000.000đ</span>
                                                        </td>
                                                        <td class="wish-edit d-flex">
                                                            <a href="#"><i class="fa fa-edit pr-2"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>01</strong></td>
                                                        <td>
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image" class="w-25">
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 6, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 7, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Hà Nội</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Sài Gòn</strong></span> 
                                                        </td>

                                                        <td class="cart-subtotal">
                                                            <span class="rt-Price-amount">1.000.000đ</span>
                                                        </td>
                                                        <td class="wish-edit d-flex">
                                                            <a href="#"><i class="fa fa-edit pr-2"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>01</strong></td>
                                                        <td>
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" alt="image" class="w-25">
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 6, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>February 7, 2025 06:26:17 PM</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Hà Nội</strong></span> 
                                                        </td>

                                                        <td class="cart_item">
                                                            <span class="product-name"><strong>Sài Gòn</strong></span> 
                                                        </td>

                                                        <td class="cart-subtotal">
                                                            <span class="rt-Price-amount">1.000.000đ</span>
                                                        </td>
                                                        <td class="wish-edit d-flex">
                                                            <a href="#"><i class="fa fa-edit pr-2"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>        
                    </div>
                </div> 
            </div>
        </section>
        <!-- List train trip Ends -->

        <!-- why us starts -->
        <section class="featured-us pb-0">
            <div class="container">
                <div class="featured-us-box pt-9">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="featured-us-item d-sm-flex align-items-center justify-content-between">
                                <div class="featured-us-icon">
                                    <i class="flaticon-price pink"></i>
                                </div>
                                <div class="featured-us-content">
                                    <h4 class="mb-1"><a href="#">Competetive Pricing</a></h4>
                                    <p class="mb-0">With 500+ suppliers and the purchasing power of 300 million members</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="featured-us-item d-sm-flex align-items-center justify-content-between">
                                <div class="featured-us-icon">
                                    <i class="flaticon-quality pink"></i>
                                </div>
                                <div class="featured-us-content">
                                    <h4 class="mb-1"><a href="#">Award Winning Service</a></h4>
                                    <p class="mb-0">Fabulous Travel worry free knowing that we're here if you need us, 24 hours a day</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 mb-4">
                            <div class="featured-us-item d-sm-flex align-items-center justify-content-between">
                                <div class="featured-us-icon">
                                    <i class="flaticon-global pink"></i>
                                </div>
                                <div class="featured-us-content">
                                    <h4 class="mb-1"><a href="#">Worldwide Coverage</a></h4>
                                    <p class="mb-0">1,200,000 hotels in more than 200 countries and regions & flights to over 5,000 citites.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- why us ends -->

        <!-- about-us starts -->
        <section class="about-us pb-0 pt-6">
            <div class="container">
                <div class="about-image-box">
                    <div class="row d-flex align-items-center justify-content-between">
                        <div class="col-lg-6 col-sm-12 mb-4">
                            <div class="about-content">
                                <h4 class="mb-1 blue font-weight-normal">About Yatriiworld</h4>
                                <h2>We're truely dedicated to make your travel experience best</h2>
                                <p class="mb-3">Top Tour Operators and Travel Agency. We offering in total 793 tours and holidays throughout the world. Combined we have received 1532 customer reviews and an average rating of 5 out of 5 stars. <br><br>Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                                <div class="about-imagelist">
                                    <ul class="d-flex justify-content-between">
                                        <li class="mr-2">
                                            <img src="${pageContext.request.contextPath}/libs/images/destination/destination7.jpg" alt="">
                                        </li>
                                        <li class="mr-2">
                                            <img src="${pageContext.request.contextPath}/libs/images/destination/destination5.jpg" alt="">
                                        </li>
                                        <li class="mr-2">
                                            <img src="${pageContext.request.contextPath}/libs/images/destination/destination6.jpg" alt="">
                                        </li>
                                        <li class="mr-2">
                                            <img src="${pageContext.request.contextPath}/libs/images/destination/destination3.jpg" alt="">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/libs/images/destination/destination4.jpg" alt="">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12 mb-4">
                            <div class="about-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination12.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- about-us ends -->

        <!-- Trending Starts -->
        <section class="trending pb-6 pt-5">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0">Perfect <span>Tour Packages</span></h2>
                    <p class="mb-0">Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                </div>  
                <div class="trend-box">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending1.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Thailand</h6>
                                        <h4><a href="#">Stonehenge, Windsor Castle, and Bath from London</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending2.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Germany</h6>
                                        <h4><a href="#">Here We Bosphorus and Black Sea Cruise from Istanbul</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending3.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Denmark</h6>
                                        <h4><a href="#">NYC One World Observatory Skip-the-Line Ticket</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending4.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Japan</h6>
                                        <h4><a href="#">Stonehenge, Windsor Castle, and Bath from London</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending5.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Italy</h6>
                                        <h4><a href="#">Here We Bosphorus and Black Sea Cruise from Istanbul</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-xs-12 mb-4">
                            <div class="trend-item">
                                <div class="trend-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/trending/trending6.jpg" alt="image">
                                    <div class="trend-tags">
                                        <a href="#"><i class="flaticon-like"></i></a>
                                    </div>
                                </div>
                                <div class="trend-content-main">
                                    <div class="trend-content">
                                        <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Turkey</h6>
                                        <h4><a href="#">NYC One World Observatory Skip-the-Line Ticket</a></h4>
                                        <div class="rating-main d-flex align-items-center">
                                            <div class="rating">
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                                <span class="fa fa-star checked"></span>
                                            </div>
                                            <span class="ml-2">38 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="trend-last-main">
                                        <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                        <div class="trend-last d-flex align-items-center justify-content-between">
                                            <p class="mb-0 white"><i class="fa fa-clock-o" aria-hidden="true"></i> 3 days & 2 night</p>
                                            <div class="trend-price">
                                                <p class="price white mb-0">From <span>$350.00</span></p>
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
        <!-- Trending Ends -->

        <!-- top destination starts -->
        <section class="top-destination overflow-hidden pb-9">
            <div class="container">
                <div class="desti-inner">
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-4 col-md-6 p-1">
                            <div class="desti-title text-center">
                                <h2 class="white">Travel <br>Best Holidays Trips <br>In The World</h2>
                                <p class="white mb-0">Lorem Ipsum is simply dummy text the printing and typesetting industry.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination3.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">New York Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination4.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">Armania Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination5.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">Manchester Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination7.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">kathmandu Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination8.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">Tokyo Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12 p-1">
                            <div class="desti-image">
                                <img src="${pageContext.request.contextPath}/libs/images/destination/destination9.jpg" alt="desti">
                                <div class="desti-content">
                                    <div class="rating mb-1">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                    <h4 class="white mb-0">Norwich Tour</h4>
                                </div>
                                <div class="desti-overlay">
                                    <a href="#" class="nir-btn">
                                        <span class="white">Book Now</span>
                                        <i class="fa fa-arrow-right white pl-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
            <div id="particles-js"></div> 
        </section>
        <!-- top destination ends -->

        <!-- Discount action starts -->
        <section class="discount-action pt-0">
            <div class="container">
                <div class="call-banner">
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-6 col-md-6 p-0">
                            <div class="call-banner-inner text-center bg-navy">
                                <h4 class="white">SUMMER SPECIAL UPTO 25% OFF</h4>
                                <h2 class="white mb-4">SPEND THE BEST VACATION WITH US <br>The nights of Thailand</h2>
                                <a href="#" class="nir-btn">View Details <i class="fa fa-arrow-right white pl-1"></i></a>
                            </div>
                        </div>  
                        <div class="col-lg-6 col-md-6 p-0"></div> 
                    </div>      
                </div>    
            </div>
        </section>
        <!-- Discount action Ends -->

        <!-- Counter -->
        <section class="counter-main pt-0 pb-6">
            <div class="container">
                <div class="counter text-center">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mb-4">
                            <div class="counter-item bg-pink">
                                <i class="fa fa-users white mb-1"></i>
                                <h3 class="value mb-0 white">100</h3>
                                <h4 class="m-0 white">Happy Customers</h4>
                            </div>    
                        </div>

                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mb-4">
                            <div class="counter-item bg-pink">
                                <i class="fa fa-plane white mb-1"></i>
                                <h3 class="value mb-0 white">50</h3>
                                <h4 class="m-0 white">Amazing Tours </h4>
                            </div>    
                        </div>

                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12mb-4">
                            <div class="counter-item bg-pink">
                                <i class="fa fa-chart-bar white mb-1"></i>
                                <h3 class="value mb-0 white">3472</h3>
                                <h4 class="m-0 white">In Business</h4>
                            </div>    
                        </div>

                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mb-4">
                            <div class="counter-item bg-pink">
                                <i class="fa fa-support white mb-1"></i>
                                <h3 class="value mb-0 white">523</h3>
                                <h4 class="m-0 white">Support Cases </h4>
                            </div>    
                        </div>

                    </div>
                </div> 
            </div>
        </section>
        <!-- End Counter -->

        <!-- Fav destination Starts -->
        <section class="trending destination pb-6 pt-9"  style="background-image: url(images/bg/bg4.jpg);">
            <div class="container">
                <div class="section-title section-title-w text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0 white">Find Your <strong>Favourite Destination</strong></h2>
                    <p class="mb-0 white">Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                </div>  
                <div class="trend-box">
                    <div class="price-navtab text-center mb-4">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#historical">Historical</a></li>
                            <li><a data-toggle="tab" href="#weekend">Weekend</a></li>
                            <li><a data-toggle="tab" href="#holidays">Holidays</a></li>
                            <li><a data-toggle="tab" href="#special">Special Tour</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div id="historical" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending8.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Nepal Special Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 852 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Nepal.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending11.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Canada New Year Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 615 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Canada.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/2.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-12 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending12.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">25 Reviews</span>
                                                </div>
                                                <h4><a href="#">America Christmas Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 926 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> America.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="weekend" class="tab-pane fade">
                            <div class="row">
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending14.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Nepal Weekend Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 852 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Nepal.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending13.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Canada Weekend Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 615 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Canada.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/2.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-12 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending7.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">25 Reviews</span>
                                                </div>
                                                <h4><a href="#">America Weekend Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 926 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> America.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="holidays" class="tab-pane fade">
                            <div class="row">
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending2.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Nepal Holidays Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 852 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Nepal.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending3.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Canada Holidays Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 615 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Canada.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/2.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-12 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending4.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">25 Reviews</span>
                                                </div>
                                                <h4><a href="#">America Holidays Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 926 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> America.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="special" class="tab-pane fade">
                            <div class="row">
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending6.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Nepal Special Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 852 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Nepal.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-6 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending5.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">38 Reviews</span>
                                                </div>
                                                <h4><a href="#">Canada Special Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 615 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> Canada.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/2.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=" col-lg-4 col-md-12 mb-4">
                                    <div class="trend-item">
                                        <div class="trend-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/trending/trending9.jpg" alt="image">
                                        </div>
                                        <div class="trend-content-main">
                                            <div class="trend-content">
                                                <div class="rating-main d-flex align-items-center pb-1">
                                                    <div class="rating">
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                        <span class="fa fa-star checked"></span>
                                                    </div>
                                                    <span class="ml-2">25 Reviews</span>
                                                </div>
                                                <h4><a href="#">America Special Tour</a></h4>
                                                <p class="mb-0"><i class="fa fa-eye mr-1"></i> 926 Visiting Places <i class="fa fa-map-marker mr-1 ml-3"></i> America.</p>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">A wonderful little cottage right on the seashore - perfect for exploring.</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                    <p class="mb-0 white d-flex align-items-center"><img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" class="d-author mr-2" alt=""> Thu Astudillo</p>
                                                    <div class="trend-price">
                                                        <p class="price white mb-0"><a href="#"><i class="flaticon-like white"></i></a></p>
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
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- Fav destination Ends -->

        <!-- top deal starts -->
        <section class="top-deals bg-grey pt-9">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0">Today's <span>Top Deal</span></h2>
                    <p class="mb-0">Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                </div> 
                <div class="row team-slider">
                    <div class="col-lg-4 slider-item">
                        <div class="slider-image">
                            <img src="${pageContext.request.contextPath}/libs/images/new-deal/deal1.jpg" alt="image">
                        </div>
                        <div class="slider-content">
                            <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> United Kingdom</h6>
                            <h4><a href="#">Earning Asiana Club Miles</a></h4>
                            <p>With upto 30% Off, experience Europe your way!</p>
                            <div class="deal-price">
                                <p class="price font-weight-bold pink mb-0">From <span>$250.00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 slider-item">
                        <div class="slider-image">
                            <img src="${pageContext.request.contextPath}/libs/images/new-deal/deal2.jpg" alt="image">
                        </div>
                        <div class="slider-content">
                            <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Thailand</h6>
                            <h4><a href="#">Save big on hotels!</a></h4>
                            <p>With upto 30% Off, experience Europe your way!</p>
                            <div class="deal-price">
                                <p class="price font-weight-bold pink mb-0">From <span>$250.00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 slider-item">
                        <div class="slider-image">
                            <img src="${pageContext.request.contextPath}/libs/images/new-deal/deal3.jpg" alt="image">
                        </div>
                        <div class="slider-content">
                            <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> South Korea</h6>
                            <h4><a href="#">Experience Europe Your Way</a></h4>
                            <p>With upto 30% Off, experience Europe your way!</p>
                            <div class="deal-price">
                                <p class="price font-weight-bold pink mb-0">From <span>$250.00</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 slider-item">
                        <div class="slider-image">
                            <img src="${pageContext.request.contextPath}/libs/images/new-deal/deal4.jpg" alt="image">
                        </div>
                        <div class="slider-content">
                            <h6 class="font-weight-normal pink"><i class="fa fa-map-marker-alt"></i> Germany</h6>
                            <h4><a href="#">Earning Asiana Club Miles</a></h4>
                            <p>With upto 30% Off, experience Europe your way!</p>
                            <div class="deal-price">
                                <p class="price font-weight-bold pink mb-0">From <span>$250.00</span></p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- top deal ends -->

        <!-- testomonial start -->
        <section class="testimonial pb-10 pt-9" style="background-image: url(images/bg/bg2.jpg);">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0 white">What <span>People Say About Us</span></h2>
                    <p class="mb-0 white">Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                </div> 
                <div class="row review-slider1">
                    <div class="col-sm-4">
                        <div class="testimonial-item">
                            <div class="testimonial-content mb-5">
                                <div class="testimonial-icon">
                                    <i class="fa fa-quote-left"></i>
                                </div>
                                <p class="description mb-0">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                </p>
                            </div>
                            <div class="author-title d-flex align-items-center">
                                <a href="#"><img src="${pageContext.request.contextPath}/libs/images/testimonial/img1.jpg" alt=""></a>
                                <div class="author-in ml-3">
                                    <h5 class="m-0 white"> Elison Marks</h5>
                                    <div class="rating">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="testimonial-item">
                            <div class="testimonial-content mb-5">
                                <div class="testimonial-icon">
                                    <i class="fa fa-quote-left"></i>
                                </div>
                                <p class="description mb-0">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                </p>
                            </div>
                            <div class="author-title d-flex align-items-center">
                                <a href="#"><img src="${pageContext.request.contextPath}/libs/images/testimonial/img2.jpg" alt=""></a>
                                <div class="author-in ml-3">
                                    <h5 class="m-0 white">Jared Erondu</h5>
                                    <div class="rating">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="testimonial-item">
                            <div class="testimonial-content mb-5">
                                <div class="testimonial-icon">
                                    <i class="fa fa-quote-left"></i>
                                </div>
                                <p class="description mb-0">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                                </p>
                            </div>
                            <div class="author-title d-flex align-items-center">
                                <a href="#"><img src="${pageContext.request.contextPath}/libs/images/testimonial/img3.jpg" alt=""></a>
                                <div class="author-in ml-3">
                                    <h5 class="m-0 white">Kelson Kelly</h5>
                                    <div class="rating">
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overlay"></div>
        </section>
        <!-- testimonial ends --> 

        <!-- Instagram starts -->
        <section class="insta-main p-0">
            <div class="insta-inner">
                <div class="follow-button">
                    <h5 class="m-0"><a href="#" title="">Follow on Instagram</a></h5>
                </div>
                <div class="row attract-slider">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-3.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-4.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src${pageContext.request.contextPath}/libs/images/insta/ins-5.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-1.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-7.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-8.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-2.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-6.jpg" alt="insta"></a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="insta-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/libs/images/insta/ins-9.jpg" alt="insta"></a>
                        </div>
                    </div>
                </div>
            </div>    
        </section>
        <!-- Instagram ends -->

        <!-- News Starts -->
        <section class="news pb-2 pt-9">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0"><span>Articles & Travel</span> Guidings</h2>
                    <p class="mb-0 ">Travel has helped us to understand the meaning of life and it has helped us become better people. Each time we travel, we see the world with new eyes.</p>
                </div> 
                <div class="news-outer">
                    <div class="row">
                        <div class="col-lg-5 col-md-12 col-xs-12 mb-4">
                            <div class="news-item overflow-hidden">
                                <div class="news-image">
                                    <img src="${pageContext.request.contextPath}/libs/images/blog/blog1.jpg" alt="image">
                                </div>
                                <div class="news-list mt-2 border-b pb-2 mb-2">
                                    <ul>
                                        <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> 4th AUg 2020 </a></li>
                                        <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 3</a></li>
                                        <li><a href="single-right.html" class=""><i class="fa fa-tag pink pr-1"></i> Tour, Tourism, Travel</a></li>
                                    </ul>
                                </div>
                                <div class="news-content mt-2">
                                    <h4 class="pb-2 mb-2 border-b"><a href="single-right.html">The real voyage does not consist in seeking new landscapes</a></h4>
                                    <p class="mb-3">Excited him now natural saw passage offices you minuter. At by asked being court hopes. Farther so friends am to detract. Forbade concern do private be. Offending residence but men engrossed shy. <br><br>One of the programs is Save Our I have personally in many of the programs mentioned on this site.</p>

                                    <div class="author-img">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="Demo Image">
                                        <span>By - Jack Well Fardez</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog2.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> 4th AUg 2020 </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 3</a></li>
                                                <li><a href="single-right.html" class=""><i class="fa fa-tag pink pr-1"></i> Travel</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Mountains is always right destination.</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog3.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> 4th AUg 2020 </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 3</a></li>
                                                <li><a href="single-right.html" class=""><i class="fa fa-tag pink pr-1"></i> Tourism</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">We have not all those who wander are lost.</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog4.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> 4th AUg 2020 </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 3</a></li>
                                                <li><a href="single-right.html" class=""><i class="fa fa-tag pink pr-1"></i> Tour</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Here Our's Life is either a daring adventure.</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog5.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> 4th AUg 2020 </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 3</a></li>
                                                <li><a href="single-right.html" class=""><i class="fa fa-tag pink pr-1"></i> Travel</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Take only memories, leave only footprints.</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- News Ends -->

        <!-- cta-horizon starts -->
        <div class="cta-horizon bg-blue pt-4 pb-2">
            <div class="container d-md-flex align-items-center justify-content-between">
                <h4 class="mb-2 white">Didn't find the service suite you! Need a custom service?</h4>
                <a href="#" class="nir-btn-black">Let's talk</a>
            </div>
        </div>
        <!-- cta-horizon Ends -->

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

        <!-- Register Modal -->
        <div class="modal fade" id="register" tabindex="-1" role="dialog"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bordernone p-0">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body p-0">
                        <div class="login-content p-4 text-center">
                            <div class="login-title section-border">
                                <h3 class="pink mb-1">Register</h3>  
                                <p>Access thousands of online classes in design, business, and more!</p>                  
                            </div>
                            <div class="login-form text-center">
                                <form>
                                    <div class="form-group">
                                        <input type="text" placeholder="Enter Full Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" placeholder="Enter email address">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Enter password">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Confirm password">
                                    </div>
                                </form>
                                <div class="form-btn">
                                    <a href="#" class="nir-btn">Register</a>
                                </div>
                                <div class="form-group mb-0 form-checkbox mt-3">
                                    <input type="checkbox"> By clicking this, you are agree to to<a href="#" class=""> our terms of use</a> and <a href="#" class="">privacy policy</a> including the use of cookies
                                </div>
                            </div>
                            <div class="login-social border-t mt-3 pt-2 mb-3">
                                <p class="mb-2">OR continue with</p>
                                <a href="#" class="btn-facebook"><i class="fab fa-facebook" aria-hidden="true"></i> Facebook</a>
                                <a href="#" class="btn-twitter"><i class="fab fa-twitter" aria-hidden="true"></i> Twitter</a>
                                <a href="#" class="btn-google"><i class="fab fa-google" aria-hidden="true"></i> Google</a>
                            </div>
                            <div class="sign-up">
                                <p class="m-0">Already have an account? <a href="login.html" class="pink">Login</a></p>
                            </div>                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- login Modal -->
        <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bordernone p-0">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body p-0">
                        <div class="login-content p-4 text-center">
                            <div class="login-title section-border">
                                <h3 class="pink">Login</h3>                    
                            </div>
                            <div class="login-form">
                                <form>
                                    <div class="form-group">
                                        <input type="email" placeholder="Enter email address">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" placeholder="Enter password">
                                    </div>
                                </form>
                                <div class="form-btn">
                                    <a href="#" class="nir-btn">LOGIN</a>
                                </div>
                                <div class="form-group mb-0 form-checkbox mt-3">
                                    <input type="checkbox"> Remember Me | <a href="#" class="">Forgot password?</a>
                                </div>
                            </div>
                            <div class="login-social border-t mt-3 pt-2 mb-3">
                                <p class="mb-2">OR continue with</p>
                                <a href="#" class="btn-facebook"><i class="fab fa-facebook" aria-hidden="true"></i> Facebook</a>
                                <a href="#" class="btn-twitter"><i class="fab fa-twitter" aria-hidden="true"></i> Twitter</a>
                            </div>
                            <div class="sign-up">
                                <p class="m-0">Do not have an account? <a href="login.html" class="pink">Sign Up</a></p>
                            </div>                
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- header side menu --> 
        <div class="header_sidemenu">
            <div class="header_sidemenu_in">
                <div class="menu">
                    <div class="close-menu">
                        <i class="fa fa-times white"></i>
                    </div>
                    <div class="m-contentmain">
                        <div class="cart-main">
                            <div class="cart-box">
                                <div class="popup-container">
                                    <h5 class="p-3 mb-0 bg-pink white text-caps">My Carts(3 Items)</h5>
                                    <div class="cart-entry d-flex align-items-center p-3">
                                        <a href="#" class="image">
                                            <img src="${pageContext.request.contextPath}/libs/images/shop/shop1.jpg" alt="">
                                        </a>
                                        <div class="content">
                                            <a href="#" class="title font-weight-bold">Pullover Batwing</a>
                                            <p class="quantity m-0">Quantity: 3</p>
                                            <span class="price">$45.00</span>
                                        </div>
                                        <div class="button-x">
                                            <i class="icon-close"></i>
                                        </div>
                                    </div>
                                    <div class="cart-entry d-flex align-items-center p-3">
                                        <a href="#" class="image">
                                            <img src="${pageContext.request.contextPath}/libs/images/shop/shop2.jpg" alt="">
                                        </a>
                                        <div class="content">
                                            <a href="#" class="title font-weight-bold">Pullover Batwing</a>
                                            <p class="quantity m-0">Quantity: 3</p>
                                            <span class="price">$90.00</span>
                                        </div>
                                        <div class="button-x">
                                            <i class="icon-close"></i>
                                        </div>
                                    </div>
                                    <div class="cart-entry d-flex align-items-center p-3">
                                        <a href="#" class="image">
                                            <img src="${pageContext.request.contextPath}/libs/images/shop/shop6.jpg" alt="">
                                        </a>
                                        <div class="content">
                                            <a href="#" class="title font-weight-bold">Pullover Batwing</a>
                                            <p class="quantity m-0">Quantity: 3</p>
                                            <span class="price">$90.00</span>
                                        </div>
                                        <div class="button-x">
                                            <i class="icon-close"></i>
                                        </div>
                                    </div>
                                    <div class="summary-total">
                                        <div class="summary d-flex align-items-center justify-content-between">
                                            <div class="subtotal font-weight-bold">Delivery Charge</div>
                                            <div class="price-s">$10</div>
                                        </div>
                                        <div class="summary d-flex align-items-center justify-content-between">
                                            <div class="subtotal font-weight-bold">Sub Total</div>
                                            <div class="price-s">$200</div>
                                        </div>
                                        <div class="summary d-flex align-items-center justify-content-between">
                                            <div class="subtotal font-weight-bold">Discount</div>
                                            <div class="price-s">$2</div>
                                        </div>
                                        <div class="summary d-flex align-items-center justify-content-between">
                                            <div class="subtotal font-weight-bold">Total</div>
                                            <div class="price-s">$208</div>
                                        </div>
                                    </div>
                                    <div class="cart-buttons d-flex align-items-center justify-content-between">
                                        <a href="#" class="nir-btn">View Cart</a>
                                        <a href="#" class="nir-btn-black">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
                <div class="overlay hide"></div>
            </div>
        </div>
    </body>
    <script data-cfasync="false" src="${pageContext.request.contextPath}/libs/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particles.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particlerun.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-swiper.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-date.js"></script>
    <script>(function () {
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
        })();</script>
</html>
<div class="register-login">
    <c:if test="${sessionScope.account.role.id == null}">
        <a href="register" data-target="#register"><i class="icon-user mr-1"></i> Đăng kí</a>
        <a href="login" data-target="#login"><i class="icon-login mr-1"></i> Đăng nhập</a>
    </c:if>
    <c:if test="${sessionScope.account.role.id != null}">
        <a href="logout" data-target="#login"><i class="icon-login mr-1"></i> Đăng xuất</a>
    </c:if>
</div>