<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Train"%>
<%@page import="dal.TrainDAO"%>
<%@page import="model.TrainBrand"%>
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
            .add-form {
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
                        <button class="nir-btn w-30" onclick="toggleAddTrainForm()" >Thêm tàu mới</button>
                        <button class="nir-btn w-30" onclick="toggleAddCarriageForm()" >Thêm khoang mới</button>
                        <br>
                        <br>

                        <!-- Form thêm tàu -->
                        <div id="addTrain" class="add-form">
                            <form id="trainForm" action="AddTrain" method="POST">
                                <label for="name_train">Tên tàu:</label>
                                <input type="text" id="name_train" name="name_train" required>
                                <br>
                                <label for="description_train">Mô tả:</label>
                                <input type="text" id="description_train" name="description_train" required>
                                <br>
                                <%
                                            Integer id_train_brand = (Integer) session.getAttribute("id_train_brand");
                                %>                                                                                          
                                <input type="hidden" id="id_train_brand" name="id_train_brand" value="<%= id_train_brand %>" >

                                <label for="id_status">Trạng thái:</label>
                                <select id="id_status" name="id_status" required>
                                    <option value="">Chọn trạng thái</option>
                                    <c:forEach var="status" items="${status_train}">
                                        <option value="${status.id}">${status.statusName}</option>
                                    </c:forEach>
                                </select>
                                <br>    
                                <br>
                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="toggleAddTrainForm()">Huỷ</button>
                            </form>
                        </div>

                        <!-- Form thêm khoang tàu -->
                        <div id="addCarriage" class="add-form">
                            <form id="carriageForm" action="AddCarriage" method="POST"> 
                                <%
                                    TrainDAO tDAO = new TrainDAO();
                                    List<Train> trains = tDAO.getAllTrainsSameBrand(id_train_brand);
                                    request.setAttribute("trains", trains);
                                %>

                                <!-- Chọn tàu -->
                                <label for="id_train">Chọn tàu:</label>
                                <select id="id_train" name="id_train" required>
                                    <c:forEach var="train" items="${trains}">
                                        <option value="${train.id_train}">${train.name_train}</option>
                                    </c:forEach>
                                </select>
                                <br>

                                <!-- Nhập tên khoang tàu -->
                                <label for="name_train_carriage">Tên khoang tàu:</label>
                                <input type="text" id="name_train_carriage" name="name_train_carriage" required>
                                <br>

                                <!-- Nhập mô tả -->
                                <label for="description_train_carriage">Mô tả:</label>
                                <textarea id="description_train_carriage" name="description_train_carriage" required></textarea>
                                <br>

                                <!-- Nhập số lượng ghế -->
                                <label for="total_seat">Số lượng ghế:</label>
                                <input type="number" id="total_seat" name="total_seat" min="1" required>
                                <br>

                                <!-- Chọn trạng thái -->
                                <label for="id_status">Trạng thái:</label>
                                <select id="id_status" name="id_status" required>
                                    <option value="">Chọn trạng thái</option>
                                    <c:forEach var="status" items="${status_carriage}">
                                        <option value="${status.id}">${status.statusName}</option>
                                    </c:forEach>
                                </select>
                                <br><br>

                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="toggleAddCarriageForm()">Huỷ</button>
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
                                                        <th class="text-center align-middle">Tên tàu</th>
                                                        <th class="text-center align-middle">Mô tả</th>
                                                        <th class="text-center align-middle">trạng thái</th>
                                                        <th class="text-center align-middle">Hành động</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% 
                                                        List<Train> topTrains = (List<Train>) request.getAttribute("topTrains"); 
                                                        if (topTrains != null && !topTrains.isEmpty()) {
                                                            for (Train train : topTrains) {
                                                    %>
                                                    <tr>
                                                        <td class="text-center align-middle"><%= train.getName_train() %></td>
                                                        <td class="text-center align-middle"><%= train.getDescription_train() %></td>
                                                        <td class="text-center align-middle"><%= train.getId_status() %></td>
                                                        <td class="text-center align-middle">
                                                            <!-- Nút hành động -->
                                                            <a href="EditTrain?id=<%= train.getId_train() %>" class="btn btn-warning btn-sm">Sửa</a>
                                                            <a href="DeleteTrain?id=<%= train.getId_train() %>" class="btn btn-danger btn-sm">Xóa</a>
                                                        </td>
                                                    </tr>
                                                    <% 
                                                            }
                                                        } else { 
                                                    %>
                                                    <tr>
                                                        <td colspan="4" class="text-center">12345678900000</td>
                                                    </tr>
                                                    <% } %>
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
                                        form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
                                    }
                                    function toggleAddCarriageForm() {
                                        const form = document.getElementById("addCarriage");
                                        form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
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