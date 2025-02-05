<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vé Tàu Đường Sắt</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            /* styles.css */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }

            header {
                background-color: #333;
                color: #fff;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            header .logo img {
                height: 50px;
            }

            nav ul {
                list-style: none;
                padding: 0;
                margin: 0;
                display: flex;
            }

            nav ul li {
                margin: 0 15px;
            }

            nav ul li a {
                color: #fff;
                text-decoration: none;
                font-weight: bold;
            }

            .user-actions .btn-login,
            .user-actions .btn-register {
                color: #fff;
                text-decoration: none;
                margin-left: 10px;
                padding: 5px 10px;
                border: 1px solid #fff;
                border-radius: 5px;
            }

            .slider {
                position: relative;
                overflow: hidden;
                height: 400px;
            }

            .slides {
                display: flex;
                transition: transform 0.5s ease-in-out;
            }

            .slide {
                min-width: 100%;
                position: relative;
            }

            .slide img {
                width: 100%;
                height: 400px;
                object-fit: cover;
            }

            .slide-content {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
                color: #fff;
            }

            .slide-content h2 {
                font-size: 2.5rem;
                margin-bottom: 10px;
            }

            .slide-content p {
                font-size: 1.2rem;
            }

            .prev, .next {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                background-color: rgba(0, 0, 0, 0.5);
                color: #fff;
                border: none;
                padding: 10px;
                cursor: pointer;
            }

            .prev {
                left: 10px;
            }

            .next {
                right: 10px;
            }

            .search-form {
                background-color: #fff;
                padding: 20px;
                margin: 20px auto;
                max-width: 800px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .search-form h1 {
                text-align: center;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                margin-bottom: 5px;
            }

            .form-group input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button {
                padding: 10px 20px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #555;
            }

            .services {
                padding: 20px;
                background-color: #fff;
                margin: 20px 0;
            }

            .services h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .service-list {
                display: flex;
                justify-content: space-around;
                flex-wrap: wrap;
            }

            .service-item {
                text-align: center;
                width: 30%;
                margin-bottom: 20px;
            }

            .service-item i {
                font-size: 2rem;
                margin-bottom: 10px;
            }

            footer {
                background-color: #333;
                color: #fff;
                padding: 20px 0;
            }

            .footer-content {
                display: flex;
                justify-content: space-around;
                flex-wrap: wrap;
            }

            .footer-section {
                width: 22%;
                margin-bottom: 20px;
            }

            .footer-section h3 {
                margin-bottom: 10px;
            }

            .footer-section ul {
                list-style: none;
                padding: 0;
            }

            .footer-section ul li {
                margin-bottom: 5px;
            }

            .footer-section ul li a {
                color: #fff;
                text-decoration: none;
            }

            .footer-section form input {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="logo">
                <img src="logo.png" alt="Vé Tàu Đường Sắt">
            </div>
            <nav>
                <ul>
                    <li><a href="#">Trang chủ</a></li>
                    <li><a href="#">Đặt vé</a></li>
                    <li><a href="#">Tra cứu</a></li>
                    <li><a href="#">Hỗ trợ</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </nav>
            <div class="user-actions">
                <a href="login" class="btn-login">Đăng nhập</a>
                <a href="register" class="btn-register">Đăng ký</a>
            </div>
        </header>

        <!-- Slider -->
        <section class="slider">
            <div class="slides">
                <div class="slide active">
                    <img src="slide1.jpg" alt="Slide 1">
                    <div class="slide-content">
                        <h2>Đặt vé tàu nhanh chóng, tiện lợi</h2>
                        <p>Trải nghiệm dịch vụ đặt vé tàu đường sắt tốt nhất.</p>
                    </div>
                </div>
                <div class="slide">
                    <img src="slide2.jpg" alt="Slide 2">
                    <div class="slide-content">
                        <h2>Hỗ trợ 24/7</h2>
                        <p>Đội ngũ hỗ trợ luôn sẵn sàng giúp bạn.</p>
                    </div>
                </div>
            </div>
            <button class="prev"><i class="fas fa-chevron-left"></i></button>
            <button class="next"><i class="fas fa-chevron-right"></i></button>
        </section>

        <!-- Search Form -->
        <section class="search-form">
            <h1>Đặt vé tàu đường sắt</h1>
            <form action="#" method="post">
                <div class="form-group">
                    <label for="from">Điểm đi:</label>
                    <input type="text" id="from" name="from" placeholder="Nhập điểm đi" required>
                </div>
                <div class="form-group">
                    <label for="to">Điểm đến:</label>
                    <input type="text" id="to" name="to" placeholder="Nhập điểm đến" required>
                </div>
                <div class="form-group">
                    <label for="date">Ngày đi:</label>
                    <input type="date" id="date" name="date" required>
                </div>
                <div class="form-group">
                    <label for="return-date">Ngày về:</label>
                    <input type="date" id="return-date" name="return-date">
                </div>
                <div class="form-group">
                    <label for="passengers">Số lượng vé:</label>
                    <input type="number" id="passengers" name="passengers" min="1" value="1" required>
                </div>
                <button type="submit">Tìm kiếm</button>
            </form>
        </section>

        <!-- Services -->
        <section class="services">
            <h2>Dịch vụ của chúng tôi</h2>
            <div class="service-list">
                <div class="service-item">
                    <i class="fas fa-ticket-alt"></i>
                    <h3>Đặt vé nhanh</h3>
                    <p>Đặt vé tàu nhanh chóng và dễ dàng.</p>
                </div>
                <div class="service-item">
                    <i class="fas fa-search"></i>
                    <h3>Tra cứu vé</h3>
                    <p>Tra cứu thông tin vé đã đặt.</p>
                </div>
                <div class="service-item">
                    <i class="fas fa-headset"></i>
                    <h3>Hỗ trợ 24/7</h3>
                    <p>Hỗ trợ khách hàng 24/7.</p>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Về chúng tôi</h3>
                    <p>Chúng tôi cung cấp dịch vụ đặt vé tàu đường sắt uy tín, nhanh chóng và tiện lợi.</p>
                </div>
                <div class="footer-section">
                    <h3>Liên kết nhanh</h3>
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#">Đặt vé</a></li>
                        <li><a href="#">Tra cứu</a></li>
                        <li><a href="#">Hỗ trợ</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Liên hệ</h3>
                    <p>Email: support@vetauduongsat.com</p>
                    <p>Điện thoại: 0123 456 789</p>
                </div>
                <div class="footer-section">
                    <h3>Đăng ký nhận tin</h3>
                    <form action="#" method="post">
                        <input type="email" placeholder="Nhập email của bạn" required>
                        <button type="submit">Đăng ký</button>
                    </form>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2023 Vé Tàu Đường Sắt. All rights reserved.</p>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="scripts.js"></script>
    </body>
</html>