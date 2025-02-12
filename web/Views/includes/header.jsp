<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <a href="#" data-toggle="modal" data-target="#termsModal">Chính Sách</a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#guideModal">Hướng dẫn</a>
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
    <!-- Navigation Bar Ends -->
</header>