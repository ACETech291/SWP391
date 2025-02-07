<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng nhập</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background: linear-gradient(135deg, #667eea, #764ba2);
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            body, html {
                height: 100%;
                margin: 0;
                padding: 0;
                background-repeat: no-repeat;
                background-size: cover; /* ??m b?o ?nh ph? toàn b? màn hình */
                background-position: center; /* Canh gi?a ?nh */
                background-attachment: fixed; /* Gi? ?nh c? ??nh khi cu?n */
                background-image: url('../SWP391/images/logo-image.png'); /* ???ng d?n ?nh */
            }
            .login-container {
                background: #fff;
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            }
            .form-control {
                border-radius: 8px;
            }
            .btn-custom {
                border-radius: 8px;
            }
            .social-btn {
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .social-btn svg {
                margin-right: 8px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-container text-center">
                        <h2 class="fw-bold">Đăng nhập</h2>
                        <p class="text-muted">Chưa có tài khoản? <a href="register">Đăng ký</a></p>
                        <h6 id="error-message" class="message" style="color: red;text-align: center">${err}</h6>  
                        <c:set var ="cookie" value="${pageContext.request.cookies}" />
                        <form action="login" method="POST">
                            <div class="form-floating mb-3">
                                <input name="email" type="email" class="form-control" id="email" placeholder="name@example.com" required value="${cookie.cookieEmail.value}">                                
                                <label for="email">Nhập email</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="password" type="password" class="form-control" id="password" placeholder="Password" required value="${cookie.cookiePassword.value}>
                                <label for="password">Nhập mật khẩu</label>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <div class="form-check">
                                    <input name="remember" class="form-check-input" type="checkbox" id="rememberMe" ${cookie.cookieRemember!=null?"checked":""} value ="ON">
                                    <label class="form-check-label" for="rememberMe">Ghi nhớ đăng nhập</label>
                                </div>
                                <a href="EmailController" class="text-decoration-none">Quên mật khẩu?</a>
                            </div>
                            <button class="btn btn-primary btn-lg w-100 btn-custom" type="submit">Đăng nhập</button>
                        </form>
                        <div class="my-3">Hoặc</div>
                        <div class="d-grid gap-2">
                            <a href="#" class="btn btn-outline-danger btn-lg social-btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                </svg>
                                Đăng nhập bằng tài khoản Google
                            </a>
                            <!--                            <button class="btn btn-outline-primary btn-lg social-btn">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                            <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                                            </svg>
                                                            Sign in with Facebook
                                                        </button>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                let errorMessage = document.getElementById("error-message");
                let emailInput = document.getElementById("email");
                let passwordInput = document.getElementById("password");

                function hideErrorMessage() {
                    if (errorMessage) {
                        errorMessage.style.display = "none";
                    }
                }

                emailInput.addEventListener("input", hideErrorMessage);
                passwordInput.addEventListener("input", hideErrorMessage);
            });
        </script>
    </body>
</html>
