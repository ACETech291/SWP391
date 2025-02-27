<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Train"%>
<%@page import="dal.TrainDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý tàu</title>
        <jsp:include page="../includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css">
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet">
        <style>
            .add-train-form {
                display: none;
            }
        </style>
    </head>
    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!-- Preloader Ends -->

        <!-- header starts -->
        <jsp:include page="../includes/header.jsp"></jsp:include>
            <!-- header ends -->

            <!-- BreadCrumb Starts -->  
            <section class="breadcrumb-main pb-0" style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg);">
            <div class="breadcrumb-outer pt-10">
                <div class="container">

                </div>
            </div>
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->

        <!-- List train trip Starts -->
        <section class="trending pb-6 pt-5">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0"><span>Quản lý tàu</span></h2>
                </div>  

                <div class="tab-content">
                    <!-- Section quản lý tàu -->
                    <div class="train-management">
                        <!-- Nút thêm mới -->
                        <button class="nir-btn w-30" onclick="toggleAddTrainForm()">Thêm mới</button>
                        <br>
                        <br>
                        <!-- Form thêm tàu -->
                        <div id="addTrain" class="add-train-form">
                            <h3>Thêm tàu mới</h3>
                            <form id="trainForm" action="AddTrain" method="POST">
                                <label for="name_train">Tên tàu:</label>
                                <input type="text" id="name_train" name="name_train" required>
                                <br>
                                <label for="description_train">Mô tả:</label>
                                <input type="text" id="description_train" name="description_train" required>
                                <br>
                                <label for="id_train_brand">ID thương hiệu:</label>
                                <input type="number" id="id_train_brand" name="id_train_brand" required>
                                <br>
                                <label for="id_status">ID trạng thái:</label>
                                <input type="number" id="id_status" name="id_status" required>
                                <br>
                                <br>
                                <br>
                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="toggleAddTrainForm()">Huỷ</button>
                            </form>
                        </div>
                    </div>
                </div>

                <div id="cart-main" class="cart-main pb-4">
                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="card shadow-sm">
                                    <div class="card-body p-0">
                                        <!-- Bọc bảng trong div có max-height để tạo thanh cuộn -->
                                        <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                                            <table class="table table-hover mb-0">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th class="text-center align-middle">ID</th>
                                                        <th class="text-center align-middle">Tên tàu</th>
                                                        <th class="text-center align-middle">Mô tả</th>
                                                        <th class="text-center align-middle">Mã tàu</th>
                                                        <th class="text-center align-middle">ID thương hiệu</th>
                                                        <th class="text-center align-middle">ID trạng thái</th>
                                                        <th class="text-center align-middle">Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td colspan="8" class="text-center">Đang tải dữ liệu...</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- Kết thúc div table-responsive -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- List train trip Ends -->

        <!-- footer starts -->
        <jsp:include page="../includes/footer.jsp"></jsp:include>
        <jsp:include page="../includes/rule.jsp"></jsp:include>
        <jsp:include page="../includes/support.jsp"></jsp:include>
            <!-- footer ends -->

            <!-- Back to top start -->
            <div id="back-to-top">
                <a href="#"></a>
            </div>
            <!-- Back to top ends -->    
        </body>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
        <script data-cfasync="false" src="${pageContext.request.contextPath}/libs/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particles.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/particlerun.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-swiper.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-date.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/ScrollDay.js"></script>
    <script>
                                    // Hàm hiển thị/ẩn form thêm tàu
                                    function toggleAddTrainForm() {
                                        const form = document.getElementById("addTrain");
                                        if (form.style.display === "none" || form.style.display === "") {
                                            form.style.display = "block"; // Hiển thị form
                                        } else {
                                            form.style.display = "none"; // Ẩn form
                                        }
                                    }
    </script>
    <script>

        function c() {
            var b = a.contentDocument || a.contentWindow.document;
            if (b) {
                var d = b.createElement('script');
                d.innerHTML = "window.__CF$cv$params={r:'90d1e0ce199784ab',t:'MTczODc0Nzc5MC4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='${pageContext.request.contextPath}/libs/cdn-cgi/challenge-platform/h/g/scripts/jsd/8a57887573f2/maind41d.js';document.getElementsByTagName('head')[0].appendChild(a);";
                b.getElementsByTagName('head')[0].appendChild(d)
            }
        }
        if (document.body) {
            var a = document.createElement('iframe');
            a.height = 1;
            a.width = 1;
            a.style.position = 'absolute';
            a.style.top = 0;
            a.style.left = 0;
            a.style.border = 'none';
            a.style.visibility = 'hidden';
            document.body.appendChild(a);
            if ('loading' !== document.readyState)
                c();
            else if (window.addEventListener)
                document.addEventListener('DOMContentLoaded', c);
            else {
                var e = document.onreadystatechange || function () {};
                document.onreadystatechange = function (b) {
                    e(b);
                    'loading' !== document.readyState && (document.onreadystatechange = e, c())
                }
            }
        }

    </script>
</body>
</html>