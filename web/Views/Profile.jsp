<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Profile</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
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
        <jsp:include page="includes/header.jsp"></jsp:include>
            <!-- header ends -->

            <!-- BreadCrumb Starts -->
            <section class="breadcrumb-main pb-2" style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg)">
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
                                            <li class="active">
                                                <a href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:choose>
                            <c:when test="${sessionScope.account.role.id == 1}">
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
                                                            <form id="uploadForm" action="UploadServlet" method="post" enctype="multipart/form-data">
                                                                <div class="edit-profile-photo">
                                                                    <img src="${img}" 
                                                                         alt="Profile Image" width="150" id="avatarPreview"/>
                                                                    <div class="change-photo-btn">
                                                                        <div class="photoUpload">
                                                                            <span><i class="fa fa-upload"></i> Thay đổi ảnh</span>
                                                                            <input type="file" name="profileImage" class="upload" id="fileInput" onchange="previewAndUpload();" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Details -->
                                                <div class="col-lg-6 col-md-6 col-xs-12 padding-left-30">
                                                    <div class="dashboard-list margin-top-0">
                                                        <div class="dashboard-list-static">
                                                            <!-- Change info -->
                                                            <div class="my-profile">
                                                                <div class="form-group">
                                                                    <label>Tên của bạn</label>
                                                                    <input value="${name}" type="text" />
                                                                </div>

                                                                <div class="form-group">
                                                                    <label>Địa chỉ Email</label>
                                                                    <input value="${email}" type="email" readonly/>
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
                            </c:when>
                            <c:when test="${sessionScope.account.role.id == 2}">
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
                                                                <img src="${requestScope.image_url}" alt="Profile Image" />
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
                                                            <!-- Change info -->
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
                                                                    <input value="${email}" type="email" readonly/>
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
                            </c:when>
                            <c:otherwise>
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
                                                            <% if (request.getAttribute("err2") != null) {%>
                                                <p style="color: red;"><%= request.getAttribute("err1")%></p>
                                                <% }%>
                                                <% if (request.getAttribute("success2") != null) {%>
                                                <p style="color: green;"><%= request.getAttribute("success1")%></p>
                                                <% }%>
                                                            <form action="${pageContext.request.contextPath}/uploadAvatar" method="post" enctype="multipart/form-data">
                                                                <div class="edit-profile-photo">
                                                                    <img src="${pageContext.request.contextPath}/${img}" alt="Avatar customer" />
                                                                    <div class="change-photo-btn">
                                                                        <div class="photoUpload">                                                                      
                                                                            <input type="file" name="avatar" class="upload" />
                                                                            <span><i class="fa fa-upload"></i> Thay đổi ảnh</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary">Cập nhật ảnh</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Details -->
                                                <div class="col-lg-6 col-md-6 col-xs-12 padding-left-30">
                                                    <div class="dashboard-list margin-top-0">
                                                        <div class="dashboard-list-static">
                                                            <!-- Change info -->
                                                            <% if (request.getAttribute("success") != null) {%>
                                                            <p style="color: green;"><%= request.getAttribute("success")%></p>
                                                            <% }%>
                                                            <form action="ChangeInformation" method="post">
                                                                <div class="form-group">
                                                                    <label>Tên của bạn</label>
                                                                    <input type="text" name="name" value="${name}" required />
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Số điện thoại</label>
                                                                    <input type="number" name="phone" value="${phone}" required />
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Địa chỉ Email</label>
                                                                    <input type="email" value="${email}" readonly />
                                                                </div>
                                                                <button type="submit" class="nir-btn">Lưu thay đổi</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>                                                       
                                            </div>
                                        </div>
                                        <div class="dashboard-form mb-4">
                                            <div class="dashboard-password">
                                                <% if (request.getAttribute("err1") != null) {%>
                                                <p style="color: red;"><%= request.getAttribute("err1")%></p>
                                                <% }%>
                                                <% if (request.getAttribute("success1") != null) {%>
                                                <p style="color: green;"><%= request.getAttribute("success1")%></p>
                                                <% }%>
                                                <h4>Đổi mật khẩu</h4>
                                                <form action="ChangePassword" method="post">
                                                    <div class="row">                                                   
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label>Mật khẩu hiện tại</label>
                                                                <input type="password" name="current_password" class="form-control" required />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label>Mật khẩu mới</label>
                                                                <input type="password" name="password" class="form-control" required />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label>Xác nhận mật khẩu mới</label>
                                                                <input type="password" name="confirm_password" class="form-control" required />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <button type="submit" class="btn btn-primary">Lưu thay đổi</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <!-- Content / End -->
            </div>
        </div>
        <!-- Dashboard / End -->

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
                                                                                function previewAndUpload() {
                                                                                    var input = document.getElementById("fileInput");
                                                                                    var file = input.files[0];

                                                                                    if (file) {
                                                                                        var allowedTypes = ["image/jpeg", "image/png", "image/gif"];
                                                                                        if (!allowedTypes.includes(file.type)) {
                                                                                            alert("Chỉ chấp nhận các file ảnh (JPG, PNG, GIF)!");
                                                                                            return;
                                                                                        }

                                                                                        // Xem trước ảnh
                                                                                        var reader = new FileReader();
                                                                                        reader.onload = function (e) {
                                                                                            document.getElementById("avatarPreview").src = e.target.result;
                                                                                        };
                                                                                        reader.readAsDataURL(file);

                                                                                        // Tự động submit form
                                                                                        document.getElementById("uploadForm").submit();
                                                                                    }
                                                                                }
    </script>
</html>