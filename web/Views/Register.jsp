

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký tài khoản </title>
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
        </style>
    </head>
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


        <div class="container">
            <br>  
            <hr>


            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <header class="card-header">
                            <a href="login" class="float-right btn btn-outline-primary mt-1">Đăng Nhập</a>
                            <h4 class="card-title mt-2">Đăng Kí</h4>
                        </header>
                        <c:if test="${Success ne null}">
                            <h3 style="color: green;font-weight: bold;text-align: center">${Success}</h3>
                        </c:if>
                        <h3 style="color: red;text-align: center">${error1}</h3>  
                        <article class="card-body">
                            <form method="post" action="register">
                                <div class="form-row">
                                    <div class="col form-group">
                                        <label>Họ và tên </label>   
                                        <input name="Name" type="text" class="form-control" placeholder="" required value="${param.Name}">
                                    </div> <!-- form-group end.// -->

                                </div> <!-- form-row end.// -->
                                <div class="form-group">
                                    <label>Số điện thoại</label>   
                                    <input name="phoneNumber" type="text" class="form-control" placeholder="" required value="${param.phoneNumber}">
                                </div> <!-- form-group end.// -->
                                <div class="form-group">
                                    <label>Địa chỉ Email</label>
                                    <small class="form-text text-muted">Email của bạn sẽ không bị chia sẻ với bất kì ai.</small>
                                    <input name="emailAddress" type="email" class="form-control" placeholder="" required value="${param.emailAddress}">

                                </div> <!-- form-group end.// -->

                                <div class="form-group">

                                    <label for="password">Mật khẩu</label>
                                    <small class="form-text text-muted">Mật khẩu phải có ít nhất 6 kí tự</small>
                                    <input name="password" id="password" class="form-control" type="password" required onkeyup="validatePassword();" required>
                                </div> 
                                <span id="message" style="text-align: center; font-style: italic; color:red"></span><br>
                                <div class="form-group">
                                    <label for="confirmpassword">Nhập lại mật khẩu</label>
                                    <input name="confirmpassword" id="confirmPassword" class="form-control" type="password" required onkeyup="validatePassword();" required>
                                </div> 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block"> Đăng ký  </button>
                                </div> <!-- form-group// -->      
                                <small class="text-muted">Bằng cách nhấp vào nút 'Đăng ký', bạn xác nhận rằng bạn chấp nhận  <br> 
                                    <a href="#" data-toggle="modal" data-target="#termsModal">Điều khoản sử dụng và Chính sách bảo mật của chúng tôi.</a></small>                                          
                            </form>
                        </article> <!-- card-body end .// -->
                        <div class="border-top card-body text-center">Đã có tài khoản? <a href="login">Đăng Nhập</a></div>
                    </div> <!-- card.// -->
                </div> <!-- col.//-->

            </div> <!-- row.//-->


        </div> 
        <!--container end.//-->
        <script>
            function validatePassword() {
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;
                var message = document.getElementById("message");

                if (password !== confirmPassword) {
                    message.className = "danger"; // Áp dụng lớp cảnh báo
                    message.innerHTML = "Mật khẩu nhập lại không khớp!";
                    return false; // Ngăn không cho gửi form
                } else {
                    message.className = ""; // Xóa lớp cảnh báo
                    message.innerHTML = "";
                }
            }

            document.addEventListener("DOMContentLoaded", function () {
                var inputs = document.querySelectorAll("input");
                var errorMessage = document.querySelector("h3[style*='color: red']");
                var successMessage = document.querySelector("h3[style*='color: green']");

                inputs.forEach(input => {
                    input.addEventListener("input", function () {
                        if (errorMessage)
                            errorMessage.style.display = "none";
                        if (successMessage)
                            successMessage.style.display = "none";
                    });
                });
            });
        </script>
    </article>

</body>
</html>
