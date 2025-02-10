<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thông tin cá nhân</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            .gradient-custom {
                background: linear-gradient(to right, #6a11cb, #2575fc);
            }
        </style>
    </head>
    <body>



        <div class="position-absolute start-0 top-0 w-100 h-100" style="background: radial-gradient(125% 125% at 50% 10%, lightgreen 50%, purple 100%);"></div>
<div class="position-absolute top-0 start-0 h-100 w-100" style="background-image: linear-gradient(90deg, rgba(var(--bs-body-color-rgb), .2) 1px, transparent 0), linear-gradient(180deg, rgba(var(--bs-body-color-rgb), .2) 1px, transparent 0); background-size: 1rem 1rem;"></div>
        <section class="vh-100" style="background-color: #f4f5f7;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-lg-6 mb-4 mb-lg-0">
                        <div class="card mb-3" style="border-radius: .5rem;">
                            <div class="row g-0">
                                <div class="col-md-4 gradient-custom text-center text-white"
                                     style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                                         alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                                    <h5>${name}</h5>
                                    <p></p>
                                </div>
                                <div class="col-md-8">
                                    <h3 style="color: green; font-weight: bold; text-align: center">${Success}</h3>
                                    <div class="card-body p-4">
                                        <h6>Thông tin cá nhân</h6>
                                        <hr class="mt-0 mb-4">
                                        <div class="row pt-1">
                                            <div class="col-6 mb-3">
                                                <h6>Email</h6>
                                                <p class="text-muted">${email}</p>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <h6>Số điện thoại</h6>
                                                <p class="text-muted">${phone}</p>
                                                <a href="ChangePassword" style="color:red" class="text-primary"><small>Thay đổi số điện thoại</small></a>
                                            </div>
                                        </div>
                                        <h6>Thông tin tài khoản</h6>
                                        <hr class="mt-0 mb-4">
                                        <div class="row pt-1">
                                            <div class="col-6 mb-3">
                                                <h6>Tên người dùng</h6>
                                                <p class="text-muted">${name}</p>
                                                <a href="ChangePassword" style="color:red" class="text-primary"><small>Thay đổi tên người dùng </small></a>
                                            </div>
                                            <div class="col-6 mb-3">
                                                <h6>Mật khẩu</h6>
                                                <p class="text-muted" >*******</p>
                                                <a href="ChangePassword?email=${email}" style="color:red" class="text-primary"><small>Thay đổi mật khẩu</small></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <form action="home">
                                    <div class="button-container" style="margin-left: 300px;">
                                        <input type="submit" value="Quay lại" class="btn btn-primary">
                                    </div>
                                </form>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>