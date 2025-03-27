<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Train"%>
<%@page import="model.TrainBrand"%>
<%@page import="model.TrainCarriage"%>
<%@page import="model.Status"%>
<%@page import="model.TrainSeat"%>
<%@page import="model.Station"%>
<%@page import="dal.TrainCarriageDAO"%>
<%@page import="dal.TrainSeatDAO"%>
<%@page import="dal.TrainDAO"%>
<%@page import="dal.StationDAO"%>
<!DOCTYPE html>
<html data-bs-theme="light" lang="en-US" dir="ltr">

    <head>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- ===============================================--><!--    Document Title--><!-- ===============================================-->
        <title>Thống kê</title>
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
        <!-- ===============================================--><!--    Stylesheets--><!-- ===============================================-->
        <link rel="preconnect" href="https://fonts.gstatic.com/">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700%7cPoppins:300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/Views/Admin/vendors/simplebar/simplebar.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/theme-rtl.min.css" rel="stylesheet" id="style-rtl">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/theme.min.css" rel="stylesheet" id="style-default">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/user-rtl.min.css" rel="stylesheet" id="user-style-rtl">
        <link href="${pageContext.request.contextPath}/Views/Admin/assets/css/user.min.css" rel="stylesheet" id="user-style-default">

        <style>
            .add-form {
                display: none;
            }
        </style>

    </head>

    <body>
        <%
            Integer idTrainBrand = (Integer) session.getAttribute("id_train_brand");
            if (idTrainBrand == null) {
                response.sendRedirect("login"); // Thay "TrangKhac.jsp" bằng trang bạn muốn chuyển hướng
                return;
            }

            Integer id_train_brand = (Integer) session.getAttribute("id_train_brand");
            List<Status> statusCarriage = (List<Status>) request.getAttribute("status_carriage");
            List<Status> statusTrain = (List<Status>) request.getAttribute("status_train");
        %>
        <!-- ===============================================--><!--    Main Content--><!-- ===============================================-->
        <main class="main" id="top">
            <div class="container" data-layout="container">
                <!-- Navbar-->
                <jsp:include page="lib/navbar.jsp"></jsp:include>
                    <div class="content">
                        <!-- Header-->
                    <jsp:include page="lib/header.jsp"></jsp:include>
                        <!-- Content -->
                        <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                            <h2 class="m-0"><span>Quản lý bản tin</span></h2>
                        </div> 
                    <%
                        String successDelete = request.getParameter("success");
                        if ("deleted".equals(successDelete)) {
                    %>
                    <div style="color: green;">Xóa bản tin thành công!</div>
                    <% }%>
                    
                    <div style="color: green;">${sucessAdded}</div>
                    
                    <%
                        String successEdit = request.getParameter("success");
                        if ("updated".equals(successEdit)) {
                    %>
                    <div style="color: green;">Cập nhật bản tin thành công!</div>
                    <% }%>

                    <%
                        String errorMessage = request.getParameter("error");
                        if ("delete_failed".equals(errorMessage)) {
                    %>
                    <div style="color: red;">Xóa bản tin thất bại!</div>
                    <% }%>
                    <div>
                        <button class="nir-btn w-30" onclick="toggleAddSeatForm()">Thêm bản tin</button>
                        <br>

                        <!-- Form thêm bản tin -->
                        <div id="addSeat" class="add-form" style="display: none;">
                            <h3>Thêm bản tin mới</h3>

                            <!-- Form upload hình và thông tin -->
                            <form id="seatForm" action="AddAdvertising" method="post" enctype="multipart/form-data">  

                                <!-- Chọn hình ảnh -->
                                <label for="image">Chọn hình ảnh:</label>
                                <div class="edit-profile-photo">
                                    <img src="" alt="Profile Image" width="150" id="avatarPreview"/>
                                    <div class="change-photo-btn">
                                        <div class="photoUpload">
                                            <span><i class="fa fa-upload"></i> Thay đổi ảnh</span>
                                            <input type="file" name="image" class="upload" id="fileInput" onchange="previewImage();" required />
                                        </div>
                                    </div>
                                </div>

                                <br>

                                <!-- Nhập mô tả -->
                                <label for="description">Mô tả ngắn gọn:</label>
                                <input type="text" id="description" name="description" required>
                                <br>    

                                <!-- Nhập nội dung -->
                                <label for="content">Nội dung:</label>
                                <input type="text" id="content" name="content" required>
                                <br>

                                <br><br>
                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="toggleAddSeatForm()">Huỷ</button>
                            </form>
                        </div>
                    </div>
                    <!-- Table Train Seat -->
                    <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                        <table class="table table-hover mb-0">
                            <thead class="thead-light">
                                <tr>
                                    <th class="text-center align-middle">Ảnh bản tin</th>
                                    <th class="text-center align-middle">Mô tả ngắn gọn:</th>
                                    <th class="text-center align-middle">Nội dung:</th>
                                    <th class="text-center align-middle">Thời gian tạo</th>
                                    <th class="text-center align-middle">Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="ad" items="${listAdvertising}">
                                    <tr>
                                        <td class="text-center align-middle">
                                            <img src="${pageContext.request.contextPath}/${ad.image_advertising}" alt="Ảnh quảng cáo" width="100" height="70">
                                        </td>
                                        <td class="text-center align-middle">${ad.description_advertising}</td>
                                        <td class="text-center align-middle">${ad.content}</td>
                                        <td class="text-center align-middle">
                                            <fmt:formatDate value="${ad.create_at}" pattern="dd/MM/yyyy HH:mm:ss"/>
                                        </td>
                                        <td class="text-center align-middle">
                                            <!-- Nút hành động -->
                                            <a href="EditAdvertising?id=${ad.id_advertising}" class="btn btn-warning btn-sm">Sửa</a>

                                            <a href="DeleteAdvertising?id=${ad.id_advertising}" onclick="return confirm('Bạn có chắc chắn muốn xóa bản tin này?');">
                                                <button>Delete</button>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <!-- Form Sửa Bản Tin (Ẩn Mặc Định) -->
                        <div id="editForm" class="add-form" style="display: none;">
                            <h3>Sửa Bản Tin</h3>
                            <form id="editAdvertisingForm" action="UpdateAdvertising" method="post" enctype="multipart/form-data">
                                <input type="hidden" id="edit_id" name="id_advertising">

                                <!-- Ảnh -->
                                <label>Ảnh bản tin:</label>
                                <div class="edit-profile-photo">
                                    <img src="" alt="Ảnh bản tin" width="150" id="edit_avatarPreview"/>
                                    <div class="change-photo-btn">
                                        <div class="photoUpload">
                                            <span><i class="fa fa-upload"></i> Chọn ảnh mới</span>
                                            <input type="file" name="image" class="upload" id="edit_fileInput" onchange="previewEditImage();"/>
                                        </div>
                                    </div>
                                </div>

                                <br>

                                <!-- Mô tả -->
                                <label>Mô tả ngắn gọn:</label>
                                <input type="text" id="edit_description" name="description" required>

                                <br>

                                <!-- Nội dung -->
                                <label>Nội dung:</label>
                                <input type="text" id="edit_content" name="content" required>

                                <br><br>

                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="closeEditForm()">Huỷ</button>
                            </form>
                        </div>
                    </div><br><br>

                </div>
            </div>
        </main>
        <!-- ===============================================--><!--    End of Main Content--><!-- ===============================================-->
    </body>


    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/anchorjs/anchor.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/is/is.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/echarts/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/fontawesome/all.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/lodash/lodash.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/list.js/list.min.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/assets/js/theme.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/assets/js/config.js"></script>
    <script src="${pageContext.request.contextPath}/Views/Admin/vendors/simplebar/simplebar.min.js"></script>

    <script>
                                    var isFluid = JSON.parse(localStorage.getItem('isFluid'));
                                    if (isFluid) {
                                        var container = document.querySelector('[data-layout]');
                                        container.classList.remove('container');
                                        container.classList.add('container-fluid');
                                    }
    </script>

    <script>
        var navbarStyle = localStorage.getItem("navbarStyle");
        if (navbarStyle && navbarStyle !== 'transparent') {
            document.querySelector('.navbar-vertical').classList.add(`navbar-${navbarStyle}`);
        }
    </script>

    <script>
        var navbarPosition = localStorage.getItem('navbarPosition');
        var navbarVertical = document.querySelector('.navbar-vertical');
        var navbarTopVertical = document.querySelector('.content .navbar-top');
        var navbarTop = document.querySelector('[data-layout] .navbar-top:not([data-double-top-nav');
        var navbarDoubleTop = document.querySelector('[data-double-top-nav]');
        var navbarTopCombo = document.querySelector('.content [data-navbar-top="combo"]');

        if (localStorage.getItem('navbarPosition') === 'double-top') {
            document.documentElement.classList.toggle('double-top-nav-layout');
        }

        if (navbarPosition === 'top') {
            navbarTop.removeAttribute('style');
            navbarTopVertical.remove(navbarTopVertical);
            navbarVertical.remove(navbarVertical);
            navbarTopCombo.remove(navbarTopCombo);
            navbarDoubleTop.remove(navbarDoubleTop);
        } else if (navbarPosition === 'combo') {
            navbarVertical.removeAttribute('style');
            navbarTopCombo.removeAttribute('style');
            navbarTop.remove(navbarTop);
            navbarTopVertical.remove(navbarTopVertical);
            navbarDoubleTop.remove(navbarDoubleTop);
        } else if (navbarPosition === 'double-top') {
            navbarDoubleTop.removeAttribute('style');
            navbarTopVertical.remove(navbarTopVertical);
            navbarVertical.remove(navbarVertical);
            navbarTop.remove(navbarTop);
            navbarTopCombo.remove(navbarTopCombo);
        } else {
            navbarVertical.removeAttribute('style');
            navbarTopVertical.removeAttribute('style');
            navbarTop.remove(navbarTop);
            navbarDoubleTop.remove(navbarDoubleTop);
            navbarTopCombo.remove(navbarTopCombo);
        }
    </script>

    <script>
        var isRTL = JSON.parse(localStorage.getItem('isRTL'));
        if (isRTL) {
            var linkDefault = document.getElementById('style-default');
            var userLinkDefault = document.getElementById('user-style-default');
            linkDefault.setAttribute('disabled', true);
            userLinkDefault.setAttribute('disabled', true);
            document.querySelector('html').setAttribute('dir', 'rtl');
        } else {
            var linkRTL = document.getElementById('style-rtl');
            var userLinkRTL = document.getElementById('user-style-rtl');
            linkRTL.setAttribute('disabled', true);
            userLinkRTL.setAttribute('disabled', true);
        }
    </script>
    <script>
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

    <script>
        function toggleAddSeatForm() {
            var form = document.getElementById("addSeat");
            form.style.display = form.style.display === "none" ? "block" : "none";
        }

    </script>
</html>
