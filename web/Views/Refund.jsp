<%@page import="dal.CustomerDAO"%>
<%@page import="model.InformationBooking"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Chi tiết vé tàu</title>

        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="<c:url value='/libs/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/libs/css/style.css'/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/libs/css/plugin.css'/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/libs/css/dashboard.css'/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/libs/fonts/flaticon.css'/>" rel="stylesheet" type="text/css" />
        <link href="<c:url value='/libs/css/icons.css'/>" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<c:url value='/libs/fonts/line-icons.css'/>" type="text/css" />
        <link rel="stylesheet" href="<c:url value='/libs/font-awesome/4.7.0/css/font-awesome.min.css'/>">
        <link rel="stylesheet" href="<c:url value='/libs/font-awesome/5.11.2/css/all.min.css'/>">
    </head>
    <body>
        <%

            Customer customer = (Customer) request.getAttribute("customer");
            String code_train_seat = (String) request.getAttribute("code_train_seat");
            String name_train = (String) request.getAttribute("name_train");
            InformationBooking booking = (InformationBooking) request.getAttribute("booking");
            
            CustomerDAO cd = new CustomerDAO();
           
            String message = (String) request.getAttribute("message");
        %>
        <!-- Preloader -->
        <div id="preloader"><div id="status"></div></div>

        <!-- Header -->
        <jsp:include page="includes/header.jsp"></jsp:include>

            <!-- Breadcrumb -->
            <section class="breadcrumb-main pb-2" style="background-image: url(<c:url value='/libs/images/bg/bg8.jpg'/>)">
            <div class="dot-overlay"></div>
        </section>

        <!-- Dashboard -->
        <div id="dashboard" class="pt-10 pb-10">
            <div class="container">
                <div class="dashboard-main">
                    <div class="row">
                        <!-- Sidebar -->
                        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-sidebar">
                                <div class="dashboard-nav">
                                    <div class="dashboard-nav-inner">
                                        <ul>
                                            <li><a href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a></li>
                                            <li class="active"><a href="HistoryBooking"><i class="sl sl-icon-user"></i> Lịch sử mua vé</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Ticket Information -->
                        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-content">
                                <h2>Chi tiết vé tàu</h2>

                                <div class="card">
                                    <div class="card-header bg-primary text-white">
                                        <strong>Thông tin chuyến đi</strong>
                                    </div>
                                    <div class="card-body">
                                        <p><strong>Điểm đi:</strong> <%= booking == null ? "" : booking.getStart_position()%></p>
                                        <p><strong>Điểm đến:</strong> <%= booking == null ? "" : booking.getEnd_position()%></p>
                                        <p><strong>Ngày khởi hành:</strong> <%= booking == null ? "" : booking.getDate_start()%></p>
                                        <p><strong>Giờ khởi hành:</strong> <%= booking == null ? "" : booking.getTime_start()%></p>
                                        <p><strong>Tàu:</strong> <%= name_train == null ? "" : name_train%></p>
                                    </div>
                                </div>
                                    
                                <!-- Refund Form -->
                                <div class="card mt-3">
                                    <div class="card-header bg-danger text-white">
                                        <strong>Hoàn vé</strong>
                                    </div>
                                    <div class="card-body">
                                        <form action="RefundTicket" method="GET">
                                            <div class="form-group">
                                                <label for="accountName">Họ và tên chủ tài khoản</label>
                                                <input type="text" id="accountName" name="accountName" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="accountNumber">Số tài khoản</label>
                                                <input type="text" id="accountNumber" name="accountNumber" class="form-control" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="nameBanking">Tên ngân hàng:</label>
                                                <input type="text" id="nameBanking" name="nameBanking" class="form-control" required>
                                            </div>
                                            
                                            <input type="hidden" name="id_ticket" value="${booking.getId_ticket()}"> 
                                            <button type="submit" class="btn btn-danger">Yêu cầu hoàn vé</button>
                                        </form>
                                        <% if (message != null && message.equals("True")) { %>
                                        <p> Bạn đã thao tác hủy vé thành công, hãy đợi Admin phản hồi
                                        <% }%>
                                    </div>
                                </div>
                                <!-- End Refund Form -->
                            </div>
                        </div> <!-- End Ticket Info -->
                    </div>
                </div>
            </div>
        </div>

    </body>
    <script data-cfasync="false" src="${pageContext.request.contextPath}/libs/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/plugin.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/custom-nav.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/jpanelmenu.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/js/dashboard-custom.js"></script>
</html>
