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
                            <jsp:include page="logo-white.jsp"></jsp:include>
                            <jsp:include page="logo.jsp"></jsp:include>
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="navbar-collapse1 d-flex align-items-center" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav" id="responsive-menu">
                                <li>
                                    <a href="home">Trang chủ</a>
                                </li>
                                <li>
                                    <a href="listtrain">Tàu</a>
                                </li>
                                <li>
                                    <a href="liststation">Nhà ga</a>
                                </li>
                                <li>
                                    <a href="advertising">Bản tin</a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#termsModal">Chính Sách</a>
                                </li>
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#guideModal">Hướng dẫn đặt vé</a>
                                </li>
                                <li>
                                    <a href="ListBrand">Thông tin hãng</a>
                                </li>
                                <li>
                                <c:choose>
                                    <c:when test="${sessionScope.account.role.id == 1}">
                                        <a href="dashboard">Quản lý Admin</a>
                                    </c:when>
                                    <c:when test="${sessionScope.account.role.id == 2}">
                                        <a href="Manager">Quản lý</a>
                                    </c:when>
                                    <c:otherwise>

                                    </c:otherwise>
                                </c:choose>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->   
                    <c:if test="${sessionScope.account.role.id == null}">
                        <div class="register-login">
                            <a href="register"><i class="icon-user mr-1"></i> Đăng ký</a>
                            <a href="login"><i class="icon-login mr-1"></i> Đăng nhập</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.account.role.id  != null}">
                        <div class="register-login">
                            <div class="register-login">
                                <div class="dropdown">
                                    <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <c:choose>
                                            <c:when test="${sessionScope.account.role.id == 1}">
                                                <i class="fa fa-user-circle"></i> ${sessionScope.account.username_admin}
                                            </c:when>
                                            <c:when test="${sessionScope.account.role.id == 2}">
                                                <i class="fa fa-user-circle"></i> ${sessionScope.account.username_manager}
                                            </c:when>
                                            <c:otherwise>
                                                <i class="fa fa-user-circle"></i> ${sessionScope.account.userName}
                                            </c:otherwise>
                                        </c:choose>
                                    </button>

                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <c:choose>
                                            <c:when test="${sessionScope.account.role.id != 2}">
                                                <a class="dropdown-item" href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                            </c:when>
                                        </c:choose>
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