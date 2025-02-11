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
                            <c:if test="${sessionScope.account.role.id == null}">
                                <div class="register-login">
                                    <a href="register"><i class="icon-user mr-1"></i> Đăng kí</a>
                                    <a href="login"><i class="icon-login mr-1"></i> Đăng nhập</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.account.role.id  != null}">
                                <div class="register-login">
                                    <a href="Profile"><i class="icon-user mr-1"></i> ${sessionScope.account.userName}</a>
                                    <a href="Logout"><i class="icon-login mr-1"></i> Đăng xuất</a>
                                </div>
                            </c:if>

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
                <div id="cart-main" class="cart-main pb-4">
                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="card shadow-sm">
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th class="text-center align-middle" style="width: 100px;">Mã tàu</th>
                                                        <th class="text-center align-middle" style="width: 120px;">Hình ảnh</th>
                                                        <th class="text-center align-middle" style="min-width: 160px;">Khởi hành</th>
                                                        <th class="text-center align-middle" style="min-width: 160px;">Dự kiến đến</th>
                                                        <th class="text-center align-middle">Điểm đi</th>
                                                        <th class="text-center align-middle">Điểm đến</th>
                                                        <th class="text-center align-middle" style="min-width: 120px;">Giá vé</th>
                                                        <th class="text-center align-middle" style="width: 150px;"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-center font-weight-bold align-middle">E01</td>

                                                        <td class="text-center align-middle">
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" 
                                                                 alt="Tàu E01" 
                                                                 class="img-thumbnail" 
                                                                 style="width: 100px; height: 60px; object-fit: cover;">
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">06/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">07/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>


                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>HÀ NỘI</span>
                                                            </div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>SÀI GÒN</span>
                                                            </div>
                                                        </td>   

                                                        <td class="text-center align-middle">
                                                            <span class="text-danger font-weight-bold">1.000.000đ</span>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <a href="#" class="nir-btn w-100"><i class="fas fa-chair mr-1 mr-2"></i>Đặt vé</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center font-weight-bold align-middle">E01</td>

                                                        <td class="text-center align-middle">
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" 
                                                                 alt="Tàu E01" 
                                                                 class="img-thumbnail" 
                                                                 style="width: 100px; height: 60px; object-fit: cover;">
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">06/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">07/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>


                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>HÀ NỘI</span>
                                                            </div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>SÀI GÒN</span>
                                                            </div>
                                                        </td>   

                                                        <td class="text-center align-middle">
                                                            <span class="text-danger font-weight-bold">1.000.000đ</span>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <a href="#" class="nir-btn w-100"><i class="fas fa-chair mr-1 mr-2"></i>Đặt vé</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-center font-weight-bold align-middle">E01</td>

                                                        <td class="text-center align-middle">
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" 
                                                                 alt="Tàu E01" 
                                                                 class="img-thumbnail" 
                                                                 style="width: 100px; height: 60px; object-fit: cover;">
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">06/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">07/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>


                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>HÀ NỘI</span>
                                                            </div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>SÀI GÒN</span>
                                                            </div>
                                                        </td>   

                                                        <td class="text-center align-middle">
                                                            <span class="text-danger font-weight-bold">1.000.000đ</span>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <a href="#" class="nir-btn w-100"><i class="fas fa-chair mr-1 mr-2"></i>Đặt vé</a>
                                                        </td>
                                                    <tr>
                                                        <td class="text-center font-weight-bold align-middle">E01</td>

                                                        <td class="text-center align-middle">
                                                            <img src="${pageContext.request.contextPath}/libs/images/trains/6.jpg" 
                                                                 alt="Tàu E01" 
                                                                 class="img-thumbnail" 
                                                                 style="width: 100px; height: 60px; object-fit: cover;">
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">06/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="blue">07/02/2025</div>
                                                            <div class="text-muted small">18:26</div>
                                                        </td>


                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>HÀ NỘI</span>
                                                            </div>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <div class="input-box">
                                                                <i class="flaticon-placeholder"></i>
                                                                <span>SÀI GÒN</span>
                                                            </div>
                                                        </td>   

                                                        <td class="text-center align-middle">
                                                            <span class="text-danger font-weight-bold">1.000.000đ</span>
                                                        </td>

                                                        <td class="text-center align-middle">
                                                            <a href="#" class="nir-btn w-100"><i class="fas fa-chair mr-1 mr-2"></i>Đặt vé</a>
                                                        </td>
                                                    </tr>
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

        <!-- Station Starts -->
        <section class="trending destination pb-6 pt-9"  style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg4.jpg);">
            <div class="container">
                <div class="section-title section-title-w text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0 white">Nhà <strong>Ga</strong></h2>
                    <p class="mb-0 white">Danh sách các nhà ga đang hoạt động</p>
                </div>  
                <div class="trend-box">
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
                                                    <span class="ml-2">99 đánh giá</span>
                                                </div>
                                                <h4><a href="#">Địa điểm</a></h4>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">Nội dung</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                                    <span class="ml-2">99 đánh giá</span>
                                                </div>
                                                <h4><a href="#">Địa điểm</a></h4>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">Nội dung</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                                                    <span class="ml-2">99 đánh giá</span>
                                                </div>
                                                <h4><a href="#">Địa điểm</a></h4>
                                            </div>
                                            <div class="trend-last-main">
                                                <p class="mb-0 trend-para">Nội dung</p>
                                                <div class="trend-last d-flex align-items-center justify-content-between">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
                <div class="justify-content-center text-center">
                    <a href="" class="per-btn">
                        <span class="white">Xem thêm</span>
                    </a>
                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- Station Ends -->

        <!-- News Starts -->
        <section class="news pb-2 pt-9">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0"><span>Bản tin</span></h2>
                    <p class="mb-0 ">Danh sách bản tin mới nhất</p>
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
                                        <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                        <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                    </ul>
                                </div>
                                <div class="news-content mt-2">
                                    <h4 class="pb-2 mb-2 border-b"><a href="single-right.html">Tiêu đề</a></h4>
                                    <p class="mb-3"> <br>Nội dung</p>

                                    <div class="author-img">
                                        <img src="${pageContext.request.contextPath}/libs/images/reviewer/1.jpg" alt="Demo Image">
                                        <span>Tên hãng</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog1.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog1.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog1.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Tiêu đề</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 mb-4">
                                    <div class="news-item overflow-hidden">
                                        <div class="news-image">
                                            <img src="${pageContext.request.contextPath}/libs/images/blog/blog1.jpg" alt="image">
                                        </div>
                                        <div class="news-list mt-2 border-b pb-2 mb-2">
                                            <ul>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-calendar pink pr-1"></i> Ngày đăng </a></li>
                                                <li><a href="single-right.html" class="pr-3"><i class="fa fa-comment pink pr-1"></i> 99</a></li>
                                            </ul>
                                        </div>
                                        <div class="news-content mt-2">
                                            <h4 class="bordernone mb-0"><a href="single-right.html">Tiêu đề</a></h4>
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