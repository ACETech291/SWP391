<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-light navbar-vertical navbar-expand-xl" style="display: none;">

    <div class="d-flex align-items-center">
        <div class="toggle-icon-wrapper">
            <button class="btn navbar-toggler-humburger-icon navbar-vertical-toggle" data-bs-toggle="tooltip" data-bs-placement="left" title="Toggle Navigation"><span class="navbar-toggle-icon"><span class="toggle-line"></span></span></button>
        </div>
        <a class="navbar-brand" href="dashboard">
            <div class="d-flex align-items-center py-3"><img class="me-2" src="${pageContext.request.contextPath}/images/icon.png" alt="image" width="40"/><span class="font-sans-serif text-primary">FRT</span></div>
        </a>
    </div>

    <!-- Navbar Big-->    
    <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
        <div class="navbar-vertical-content scrollbar">
            <ul class="navbar-nav flex-column mb-3" id="navbarVerticalNav">
                <li class="nav-item">
                    <a class="nav-link" href="dashboard">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-chart-pie"></span></span><span class="nav-link-text ps-1">Thống kê</span></div>
                    </a>
                </li>

                <li class="nav-item"><!-- label-->
                    <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
                        <div class="col-auto navbar-vertical-label">Quản lý</div>
                        <div class="col ps-0">
                            <hr class="mb-0 navbar-vertical-divider" />
                        </div>
                    </div>
                     <a class="nav-link" href="home" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Trang chủ</span></div>
                    </a>
                    <a class="nav-link" href="trainmanagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý tàu</span></div>
                    </a>
                    
                    <a class="nav-link" href="carriagemanagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý khoang</span></div>
                    </a>
                    
                    <a class="nav-link" href="seatmanagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý ghế</span></div>
                    </a>

                    <a class="nav-link" href="stationmanagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý ga</span></div>
                    </a>
                    
                    <a class="nav-link" href="AdvertisingManagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý bản tin</span></div>
                    </a>
                    
                    <a class="nav-link" href="BrandManagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-home"></span></span><span class="nav-link-text ps-1">Quản lý thông tin hãng</span></div>
                    </a>
                </li>

                <li class="nav-item"><!-- label-->
                    <div class="row navbar-vertical-label-wrapper mt-3 mb-2">
                        <div class="col-auto navbar-vertical-label">Bảo mật</div>
                        <div class="col ps-0">
                            <hr class="mb-0 navbar-vertical-divider" />
                        </div>
                    </div>
                    <a class="nav-link" href="createaccount" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-user-plus"></span></span><span class="nav-link-text ps-1">Tạo mới tài khoản</span></div>
                    </a>
                    <a class="nav-link" href="AuthorizationManagement" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-user-shield"></span></span><span class="nav-link-text ps-1">Phân quyền</span></div>
                    </a>
                </li>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <li class="nav-item"><!-- label-->
                    <div class="row navbar-vertical-label-wrapper mt-2 mb-2">
                        <div class="col-auto navbar-vertical-label"></div>
                        <div class="col ps-0">
                            <hr class="mb-0 navbar-vertical-divider" />
                        </div>
                    </div>
                    <a class="nav-link" href="Logout" role="button">
                        <div class="d-flex align-items-center"><span class="nav-link-icon"><span class="fas fa-sign-out-alt"></span></span><span class="nav-link-text ps-1">Đăng xuất</span></div>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    <!-- Navbar Big End-->
</nav>

<nav class="navbar navbar-light navbar-glass navbar-top navbar-expand-lg" style="display: none;">
    <a class="navbar-brand me-1 me-sm-3" href="index.html">
        <div class="d-flex align-items-center py-3"><img class="me-2" src="${pageContext.request.contextPath}/images/icon.png" alt="image" width="40"/><span class="font-sans-serif text-primary">Fast Rail Ticket</span></div>
    </a>
</nav>