<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Calendar"%>
<%@page import="model.InformationBooking"%>
<%@page import="java.util.List"%>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Profile</title>
        <jsp:include page="includes/icon.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/style.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/plugin.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/dashboard.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/fonts/flaticon.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/libs/css/icons.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/fonts/line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/font-awesome/5.11.2/css/all.min.css">
    </head>
    <body>
        <%
            List<InformationBooking> booking = (List<InformationBooking>) request.getAttribute("HistoryBooking");

            //id_ticket, start_station, end_station, time_start, date_start, total_bill, status
            List<String> code_train_seat = (List<String>) request.getAttribute("code_train_seat"); // code_train_seat
            List<String> name_train = (List<String>) request.getAttribute("name_train"); // name_train
        %>

        <!-- Preloader -->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <!-- Preloader Ends -->

        <!-- header starts -->
        <jsp:include page="includes/header.jsp"></jsp:include>
            <!-- header ends -->

            <!-- BreadCrumb Starts -->
            <section class="breadcrumb-main pb-2" style="background-image: url(${pageContext.request.contextPath}/libs/images/bg/bg8.jpg)">
            <div class="dot-overlay"></div>
        </section>
        <!-- BreadCrumb Ends -->

        <!-- Information -->
        <div id="dashboard" class="pt-10 pb-10">
            <div class="container">
                <div class="dashboard-main">
                    <div class="row">
                        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-sidebar">
                                <div class="dashboard-nav">
                                    <div class="dashboard-nav-inner">
                                        <ul id="menu">

                                            <li >

                                                <a href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                            </li>
                                            <li class="active">
                                                <a href="HistoryBooking"><i class="sl sl-icon-user"></i> Lịch sử mua vé </a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard-content">
                                <h2>Lịch Sử Mua Vé</h2>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Tuyến đường</th>
                                            <th>Ngày Giờ Khởi Hành</th>
                                            <th>Tàu</th>
                                            <th>Khoang, Ghế</th>
                                            <th>Trạng Thái</th>
                                            <th>  </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if (booking.size() == 0) {
                                        %>
                                        <tr>
                                            <td colspan="7" class="text-center">Bạn chưa mua vé nào</td>
                                        </tr>
                                        <%
                                        } else {
                                            for (int i = 0; i < booking.size(); ++i) {
                                                InformationBooking currentBooking = booking.get(i);
                                                String[] token = code_train_seat.get(i).split(" - ");
                                        %>
                                        <tr>
                                            <td><%= currentBooking.getStart_position() + " - " + currentBooking.getEnd_position()%></td>


                                            <td><%= currentBooking.getTime_start() + " - " + currentBooking.getDate_start()%></td>
                                            <td><%= name_train.get(i)%></td>
                                            <td><%= "Khoang: " + token[1] + ", Ghế:" + token[2]%></td>
                                            <% if (currentBooking.getStatus().equals("Cancelled")) { %>
                                            <td>Đã hủy vé</td>

                                            <% } else if (currentBooking.getStatus().equals("Preparing")) { %>
                                            <td>Chuẩn bị</td>
                                            <%    } else if (currentBooking.getStatus().equals("Completed")) { %>
                                            <td>Đã hoàn thành</td>
                                            <%    } else {%>
                                            <td>Đợi tàu chạy</td>

                                            <%}%>
                                            
                                            <td>
                                                <form action="ViewTicketDetail" method="post" style="display:inline;">
                                                    <%
                                                        Gson gson = new Gson();
                                                        String bookingJson = gson.toJson(currentBooking);
                                                    %>
                                                    <input type="hidden" name="booking" value='<%= bookingJson%>'>
                                                    <input type="hidden" name="code_train_seat" value="<%= code_train_seat.get(i)%>">
                                                    <input type="hidden" name="name_train" value="<%= name_train.get(i)%>">
                                                    <button type="submit" class="btn btn-info btn-sm">Xem chi tiết</button>
                                                </form>

                                                <%
                                                    Date now = new Date();
//                                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//                                                    String formattedDate = sdf.format(now);
                                                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                                    try {
                                                        Date date = formatter.parse(currentBooking.getDate_start());
                                                        Calendar calendarA = Calendar.getInstance();
                                                        calendarA.setTime(date);

                                                        Calendar calendarB = Calendar.getInstance();
                                                        calendarB.setTime(now);

                                                        // Tính khoảng cách giữa hai ngày
                                                        long diffInMillies = calendarA.getTimeInMillis() - calendarB.getTimeInMillis();
                                                        long diffInDays = TimeUnit.MILLISECONDS.toDays(diffInMillies);

                                                        if (diffInDays > 1) {%> 
                                                <form action="RefundTicket" method="post" style="display:inline; margin-left: 5px;">
                                                    <input type="hidden" name="id_ticket" value="<%= currentBooking.getId_ticket()%>">
                                                    <input type="hidden" name="booking" value='<%= bookingJson%>'>
                                                    <input type="hidden" name="code_train_seat" value="<%= code_train_seat.get(i)%>">
                                                    <input type="hidden" name="name_train" value="<%= name_train.get(i)%>">
                                                    <input type="hidden" name="cusomter_require" value="1">
                                                    <button type="submit" class="btn btn-danger btn-sm">Hoàn vé</button>
                                                </form>
                                                <%

                                                        }
                                                    } catch (Exception e) {
                                                        System.out.println("Lỗi phân tích cú pháp chuỗi ngày: " + e.getMessage());
                                                    }

                                                %>


                                            </td>

                                        </tr>
                                        <%                                                }
                                            }
                                        %>                                        
                                    </tbody>

                                </table>

                            </div>
                        </div>

                    </div>
                </div>
                <!-- Content / End -->
            </div>
        </div>
        <!-- Dashboard / End -->

        <!-- footer starts -->
        <jsp:include page="includes/footer.jsp"></jsp:include>
        <jsp:include page="includes/rule.jsp"></jsp:include>
        <jsp:include page="includes/support.jsp"></jsp:include>
            <!-- footer ends -->

            <!-- Back to top start -->
            <div id="back-to-top">
                <a href="#"></a>
            </div>
            <!-- Back to top ends -->

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