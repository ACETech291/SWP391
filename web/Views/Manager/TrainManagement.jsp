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
<%@page import="dal.StatusDAO"%>
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
            Integer id_status = (Integer) session.getAttribute("id_status");
            
            Integer id_train_brand = (Integer) session.getAttribute("id_train_brand");
            
            StatusDAO sDAO = new StatusDAO();
            List<Status> statusTrain = sDAO.getStatusTrainFull();
            request.setAttribute("status_train", statusTrain);
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
                            <h2 class="m-0"><span>Quản lý tàu</span></h2>
                        </div> 

                        <div>
                            <button id="addTrainButton" class="nir-btn w-30" onclick="toggleAddTrainForm()" >Thêm tàu</button>
                            <br>
                            <!-- Form thêm tàu -->
                            <div id="addTrain" class="add-form">
                                <h3>Thêm tàu mới</h3>
                                <form id="trainForm" action="AddTrain" method="POST">
                                    <label for="name_train">Tên tàu:</label>
                                    <input type="text" id="name_train" name="name_train" required>
                                    <br>
                                    <label for="description_train">Mô tả:</label>
                                    <textarea id="description_train" name="description_train" required></textarea>
                                    <br>                                                                                       
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
                                <button id="SaveButton" type="submit" class="nir-btn w-30">Lưu</button>
                                <button id="CancelButton" type="button" class="nir-btn w-30" onclick="toggleAddTrainForm()">Huỷ</button>
                            </form>
                        </div>

                        <!-- Form filter -->
                        <form id="filterForm" method="POST" action="trainmanagement">
                            <input name="id_train_brand" type="hidden" value="<%=id_train_brand%>">
                            <fieldset>
                                <legend>Các trạng thái</legend>
                                <%
                                    for (Status status : statusTrain) {
                                %>
                                <label><input type="checkbox" name="id_status" value="<%=status.getId()%>" onchange="autoSubmit()"> <%=status.getStatusName()%></label><br>
                                    <%
                                        }
                                    %>
                            </fieldset>
                        </form>
                    </div>    
                    <!-- Table Train -->
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
                                    TrainDAO dao = new TrainDAO();
                                    List<Train> trainsbyfilter = (List<Train>) request.getAttribute("trainsbyfilter");
                                    
                                    if (trainsbyfilter == null) trainsbyfilter = dao.getTrainByFilter(id_train_brand, id_status);
                                    
                                    if (trainsbyfilter != null && !trainsbyfilter.isEmpty()) {
                                        for (Train train : trainsbyfilter) {
                                %>
                                <tr>
                                    <td class="text-center align-middle"><%= train.getName_train() %></td>
                                    <td class="text-center align-middle"><%= train.getDescription_train() %></td>
                                    <td class="text-center align-middle">
                                        <% 
                                            String statusName = "Không xác định";
                                            for (Status status : statusTrain) {
                                                if (status.getId() == train.getId_status()) {
                                                    statusName = status.getStatusName();
                                                    break;
                                                }
                                            }
                                        %>
                                        <%= statusName %>
                                    </td>
                                    <td class="text-center align-middle">
                                        <!-- Nút hành động -->
                                        <a href="EditTrain?id=<%= train.getId_train() %>" class="btn btn-warning btn-sm">Sửa</a>

                                        <form id="deleteForm-<%= train.getId_train() %>" action="DeleteTrain" method="POST" style="display: inline;">
                                            <input type="hidden" name="id_train" value="<%= train.getId_train() %>">
                                            <button type="button" class="btn btn-danger btn-sm" onclick="confirmDeleteTrain(<%= train.getId_train() %>)">Xóa</button>
                                        </form>

                                    </td>
                                </tr>
                                <% 
                                        }
                                    } else { 
                                %>
                                <tr>
                                    <td colspan="4" class="text-center">Không có tàu</td>
                                </tr>
                                <% } %>
                            </tbody>

                        </table>
                    </div><br><br>                                    
                </div>
            </div>
        </main>
        <!-- ===============================================--><!--    End of Main Content--><!-- ===============================================-->
    </body>

    <script>
        function toggleAddTrainForm() {
            const form = document.getElementById("addTrain");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
        function confirmDeleteTrain(id) {
            if (confirm("Bạn có chắc chắn muốn xóa tàu này không?")) {
                document.getElementById("deleteForm-" + id).submit();
            }
        }
        function autoSubmit() {
            document.getElementById("filterForm").submit();
        }
    </script>

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

    <!-- Hiển thị thông báo -->
    <% if (session.getAttribute("successMessage") != null) { %>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let toast = document.createElement("div");
            toast.id = "toastMessage";  // Thêm ID để dễ tìm bằng Selenium
            toast.textContent = "<%= session.getAttribute("successMessage") %>";
            toast.style.cssText = "position: fixed; top: 20px; right: 20px; background: #4CAF50; color: white; padding: 10px 20px; border-radius: 5px; z-index: 1000; transition: opacity 0.5s ease-in-out;";
            document.body.appendChild(toast);
            console.log("Toast hiển thị:", toast.textContent); // Kiểm tra hiển thị trong Console

            setTimeout(() => {
                toast.style.opacity = "0";
                setTimeout(() => toast.remove(), 500);
            }, 3000);
        });
    </script>
    <% session.removeAttribute("successMessage"); %>
    <% } %>

    
    <!-- Hiển thị thông báo -->
    <% if (session.getAttribute("errorMessage") != null) { %>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let toast = document.createElement("div");
            toast.id = "toastMessage";  // Thêm ID để dễ tìm bằng Selenium
            toast.textContent = "<%= session.getAttribute("errorMessage") %>";
            toast.style.cssText = "position: fixed; top: 20px; right: 20px; background: red; color: white; padding: 10px 20px; border-radius: 5px; z-index: 1000; transition: opacity 0.5s ease-in-out;";
            document.body.appendChild(toast);
            console.log("Toast hiển thị:", toast.textContent); // Kiểm tra hiển thị trong Console

            setTimeout(() => {
                toast.style.opacity = "0";
                setTimeout(() => toast.remove(), 500);
            }, 3000);
        });
    </script>
    <% session.removeAttribute("errorMessage"); %>
    <% } %>


</html>
