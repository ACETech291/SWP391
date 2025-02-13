<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Đăng nhập</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
        <style>
            label[for="rememberMe"],
            a label {
                cursor: pointer;
            }
        </style>
    </head>
    <body class="home-search" style="background-image: url(${pageContext.request.contextPath}/libs/images/slider/8.jpg)">
        <!-- Preloader -->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!-- Preloader Ends -->

        <section class="main-slider-1">
            <div class="main-slider-inner min-vh-100 d-flex align-items-center justify-content-center">
                <div class="container">
                    <div class="logo-tab mb-10 text-center">
                        <a href="home"><jsp:include page="includes/logo.jsp"></jsp:include></a>
                    </div>
                    <div>
                        <h6 id="error-message" class="message" style="color: red; text-align: center">${err}</h6>
                        <h6 id="error-message" class="message" style="color: green; text-align: center">${success}</h6>
                    </div>
                    <div class="block-box mx-auto form-content" style="max-width: 500px">
                        <div class="row d-flex">
                            <div>
                                <c:set var="cookie" value="${pageContext.request.cookies}" />
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade active in">
                                        <form action="login" method="POST">
                                            <div class="row d-flex">
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label>Tài khoản</label>
                                                        <div class="input-box">
                                                            <input type="email" id="email" name="email" placeholder="name@example.com" required value="${cookie.cookieEmail.value}"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <label>Mật khẩu</label>
                                                        <div class="input-box">
                                                            <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required value="${cookie.cookiePassword.value}"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="form-group">
                                                        <input name="remember" type="checkbox" id="rememberMe" ${cookie.cookieRemember!=null?"checked":""} value="ON" />
                                                        <label for="rememberMe">Ghi nhớ đăng nhập</label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <a href="EmailController"><label> Quên mật khẩu ?</label></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg">
                                                    <div class="form-group mb-0 mt-2">
                                                        <button type="submit" class="nir-btn w-100">Đăng nhập</button>
                                                    </div>
                                                    <div class="form-group mb-0 mt-5">
                                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:8080/SWP391/LoginGoogle&response_type=code&client_id=580940048752-tr25k7j40lace1bbjgmauj7kk4620glv.apps.googleusercontent.com&approval_prompt=force" class="nir-btn w-100"><i class="fab fa-google"> Đăng nhập bằng Google</i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer text-center mt-8">
                        <div class="copyright-content">
                            <p class="mb-0 white">
                                Chưa có tài khoản?
                                <a href="register"><label><b class="white">Đăng ký</b></label></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="particles-js"></div>
        </section>
        <div class="overlay"></div>
    </body>
    <!-- *Scripts* -->
    <script src="${pageContext.request.contextPath}/libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particles.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particlerun.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var errorMessage = document.getElementById("error-message");
            var emailInput = document.getElementById("email");
            var passwordInput = document.getElementById("password");

            function hideError() {
                if (errorMessage) {
                    errorMessage.style.display = "none";
                }
            }

            if (errorMessage && errorMessage.innerText.trim() !== "") {
                errorMessage.style.display = "block"; // Hiện lỗi nếu có thông báo từ server
            }

            emailInput.addEventListener("input", hideError);
            passwordInput.addEventListener("input", hideError);
        });
        (function () {
            function c() {
                var b = a.contentDocument || a.contentWindow.document;
                if (b) {
                    var d = b.createElement("script");
                    d.innerHTML =
                            "window.__CF$cv$params={r:'90d1e19aef8884ab',t:'MTczODc0NzgyMi4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
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