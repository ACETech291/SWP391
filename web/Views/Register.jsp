<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký tài khoản</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            body, html {
                height: 100%;
                margin: 0;
                padding: 0;
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                background-image: url('../SWP391/images/logo-image.png');
            }
        </style>
    </head>

    <body>

        <div class="container">
            <br>  
            <hr>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <header class="card-header">
                            <a href="login" class="float-right btn btn-outline-primary mt-1">Đăng Nhập</a>
                            <h4 class="card-title mt-2">Đăng Ký</h4>
                        </header>
                        <c:if test="${Success ne null}">
                            <h3 style="color: green; font-weight: bold; text-align: center">${Success}</h3>
                        </c:if>
                        <h3 style="color: red; text-align: center">${error1}</h3>
                        <article class="card-body">
                            <form method="post" action="register">
                                
                                <div class="form-group">
                                    <label>Họ và tên</label>   
                                    <input name="Name" type="text" class="form-control" required value="${param.Name}">
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại</label>   
                                    <input name="phoneNumber" type="text" class="form-control" required value="${param.phoneNumber}">
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ Email</label>
                                    <small class="form-text text-muted">Email của bạn sẽ không bị chia sẻ với bất kì ai.</small>
                                    <input name="emailAddress" type="email" class="form-control" required value="${param.emailAddress}">
                                </div>
                                <div class="form-group">
                                    <label for="password">Mật khẩu</label>
                                    <small class="form-text text-muted">Mật khẩu phải có ít nhất 6 kí tự</small>
                                    <input name="password" id="password" class="form-control" type="password" required>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword">Nhập lại mật khẩu</label>
                                    <input name="confirmpassword" id="confirmPassword" class="form-control" type="password" required>
                                    <span id="message" style="color:red; font-style: italic;"></span>
                                </div>
                                <small class="text-muted">
                                Bằng cách nhấp vào nút 'Đăng ký', bạn xác nhận rằng bạn chấp nhận  
                                <a href="#" data-toggle="modal" data-target="#termsModal">Điều khoản sử dụng và Chính sách bảo mật</a>.
                            </small>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block"> Đăng ký </button>
                                </div>

                            </form>
                            
                        </article>
                        <div class="border-top card-body text-center">Đã có tài khoản? <a href="login">Đăng Nhập</a></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="termsModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="termsModalLabel">Điều khoản sử dụng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h6>1. Giới thiệu</h6>
                        <p>Chào mừng bạn đến với dịch vụ của chúng tôi. Khi sử dụng trang web này, bạn đồng ý tuân theo các điều khoản sử dụng dưới đây.</p>

                        <h6>2. Quy định tài khoản</h6>
                        <p>Bạn cần cung cấp thông tin chính xác khi đăng ký tài khoản. Không chia sẻ thông tin đăng nhập với người khác.</p>

                        <h6>3. Quyền và nghĩa vụ</h6>
                        <p>Bạn không được sử dụng dịch vụ vào mục đích bất hợp pháp hoặc gây hại cho người khác.</p>

                        <h6>4. Chính sách bảo mật</h6>
                        <p>Chúng tôi cam kết bảo vệ thông tin cá nhân của bạn theo quy định bảo mật.</p>

                        <h6>5. Liên hệ</h6>
                        <p>Nếu có thắc mắc, vui lòng liên hệ 0332671183</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Script kiểm tra mật khẩu -->
        <script>
            function validatePassword() {
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;
                var message = document.getElementById("message");

                if (password !== confirmPassword) {
                    message.innerHTML = "Mật khẩu nhập lại không khớp!";
                } else {
                    message.innerHTML = "";
                }
            }

            document.getElementById("password").addEventListener("input", validatePassword);
            document.getElementById("confirmPassword").addEventListener("input", validatePassword);
        </script>

    </body>
</html>
