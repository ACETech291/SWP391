<%-- 
    Document   : login.jsp
    Created on : 4 Jun, 2024, 4:48:55 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khôi phục mật khẩu</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/logins/login-6/assets/css/login-6.css">
        <style>
            body, html {
                height: 100%;
                margin: 0;
                padding: 0;
                background-repeat: no-repeat;
                background-size: cover; /* Đảm bảo ảnh phủ toàn bộ màn hình */
                background-position: center; /* Canh giữa ảnh */
                background-attachment: fixed; /* Giữ ảnh cố định khi cuộn */
                background-image: url('../SWP391/images/logo-image.png'); /* Đường dẫn ảnh */
            }
            .forgot-password {
                color: rgb(104, 145, 162);
                font-weight: bold;
                font-size: 16px;
                padding: 12px 0;
                transition: all 0.3s;
                text-align: center;
                margin-left: 30PX;
            }

            .forgot-password:hover,
            .forgot-password:active,
            .forgot-password:focus {
                color: rgb(12, 97, 33);
                text-decoration: none;
                background-color: #f7f7f7;
            }
            

        </style>
    </head>
    <body class="bg-primary">
        <section class="p-3 p-md-4 p-xl-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6 col-xxl-5">
                        <div class="card border-0 shadow-sm rounded-4" style="margin-top: 170px">
                            <div class="card-body p-3 p-md-4 p-xl-5">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="mb-5">
                                            <h3>Xác Thực Email</h3>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${not empty err}">
                                <p class="text-danger">${err}</p>
<!--                                <a name="again" href="OtpService?resend=true">Gửi lại mã?</a>-->
                                </c:if>
                                <form action="OtpService" method="get">
                                    <div class="row gy-3 overflow-hidden">
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="email" class="form-control" value="${email}" name="email" id="email" placeholder="name@example.com" required readonly>
                                                <label for="email" class="form-label">Email</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="otp" id="password" value="" placeholder="mã có 5 chữ số" required>
                                                <label for="password" class="form-label">Nhập mã Otp</label>
                                            </div>
                                        </div>                                        
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <button class="btn bsb-btn-2xl btn-primary" type="submit">Gửi mã</button>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                                <a href="login" class="btn btn-block forgot-password">
                                    Đăng nhập
                                </a>
                                <a href="register" id="register" class="btn btn-block forgot-password">
                                    Đăng ký 
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            function validatePassword() {
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirm_password").value;
                var message = document.getElementById("message");

                if (password !== confirmPassword) {
                    message.style.color = "red";
                    message.innerHTML = "Mật khẩu nhập lại không khớp!";
                    return false; // Ngăn form submit
                } else {
                    message.innerHTML = "";
                    return true;
                }
            }

            document.addEventListener("DOMContentLoaded", function () {
                var passwordInput = document.getElementById("password");
                var confirmPasswordInput = document.getElementById("confirm_password");
                var message = document.getElementById("message");

                // Kiểm tra lại mật khẩu mỗi khi người dùng nhập vào
                confirmPasswordInput.addEventListener("input", function () {
                    validatePassword();
                });

                // Khi người dùng bắt đầu nhập lại, ẩn thông báo lỗi `err`
                var errMessage = document.querySelector(".text-danger");
                var inputs = document.querySelectorAll("input");

                inputs.forEach(input => {
                    input.addEventListener("input", function () {
                        if (errMessage) {
                            errMessage.style.display = "none";
                        }
                    });
                });
            });
        </script>
    </body>
</html>

