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
<%@page import="model.Comment"%>
<%@page import="model.Customer"%>
<%@page import="dal.TrainCarriageDAO"%>
<%@page import="dal.TrainSeatDAO"%>
<%@page import="dal.TrainDAO"%>
<%@page import="dal.StationDAO"%>
<%@page import="dal.CommentDAO"%>
<%@page import="dal.CustomerDAO"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
            Integer id_train_brand = (Integer) session.getAttribute("id_train_brand");
            if (id_train_brand == null) {
                response.sendRedirect("login"); // Thay "TrangKhac.jsp" bằng trang bạn muốn chuyển hướng
                return;
            }
            
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            List<Status> statusCarriage = (List<Status>) request.getAttribute("status_carriage");
            List<Status> statusTrain = (List<Status>) request.getAttribute("status_train");
            String votingParam = request.getParameter("voting");
            int voting = (votingParam != null && !votingParam.isEmpty()) ? Integer.parseInt(votingParam) : -1;
            
            CommentDAO dao = new CommentDAO();
            List<Comment> commentList = (voting > 0) ? dao.getAllCommentsByVoting(id_train_brand,voting) : dao.getCommentsByTrainBrandId(id_train_brand);
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
                            <h2 class="m-0"><span>Quản lý bình luận</span></h2>
                        </div> 

                        <form action="" method="GET" class="mb-3 d-flex align-items-center">
                            <label for="voting" class="mr-2">Lọc theo đánh giá:</label>
                            <select name="voting" id="voting" class="form-control w-auto">
                                <option value="">Tất cả</option>
                                <option value="5">⭐ 5 Sao</option>
                                <option value="4">⭐ 4 Sao</option>
                                <option value="3">⭐ 3 Sao</option>
                                <option value="2">⭐ 2 Sao</option>
                                <option value="1">⭐ 1 Sao</option>
                            </select>
                            <button type="submit" class="btn btn-primary ml-2">Lọc</button>
                        </form>


                        <!-- Table comment -->
                        <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                            <table class="table table-hover mb-0">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="text-center align-middle">Thời gian bình luận</th>
                                        <th class="text-center align-middle">Đánh giá</th>
                                        <th class="text-center align-middle">Nội dung</th>
                                        <th class="text-center align-middle">Người dùng</th>
                                        <th class="text-center align-middle">Trạng thái</th>
                                        <th class="text-center align-middle">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <% 
                                
                                    if (commentList != null && !commentList.isEmpty()) {
                                        for (Comment com : commentList) {
                                %>
                                <tr>
                                    <td class="text-center align-middle"><%= sdf.format(com.getCreate_at()) %></td>
                                    <td class="text-center align-middle"><%= com.getVoting_comment() %></td>
                                    <td class="text-center align-middle"><%= com.getContent() %></td>
                                    <td class="text-center align-middle"><%= com.getName_customer() %></td>
                                    <td class="text-center align-middle">
                                        <%= com.getComment_status() ==  0 ? "Hoạt động" : "Không hoạt động" %>
                                    </td>
                                    <td class="text-center align-middle">
                                        <a href="BrandDetail?id=${id_train_brand}" class="btn btn-warning btn-sm">Xem chi tiết </a>
                                        
                                        <form id="deleteForm-<%= com.getId_comment() %>" action="DeleteComment" method="POST" style="display: inline;">
                                            <input type="hidden" name="id_comment" value="<%= com.getId_comment() %>">
                                            <button type="button" class="btn btn-danger btn-sm" onclick="confirmDeleteTrain(<%= com.getId_comment() %>)">Xóa</button>
                                        </form>
                                    </td>
                                    
                                </tr>
                                <% 
                                        }
                                    } else { 
                                %>
                                <tr>
                                    <td colspan="5" class="text-center">Không có bình luận nào.</td>
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
        function confirmDeleteTrain(id) {
            if (confirm("Bạn có chắc chắn muốn xóa bình luận này không?")) {
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

</html>
