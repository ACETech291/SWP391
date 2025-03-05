<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="model.Train"%>
<%@page import="model.TrainBrand"%>
<%@page import="model.TrainCarriage"%>
<%@page import="model.Status"%>
<%@page import="model.TrainSeat"%>
<%@page import="dal.TrainCarriageDAO"%>
<%@page import="dal.TrainSeatDAO"%>
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
            .add-form {
                display: none;
            }
        </style>
    </head>
    <body>
        <!-- header -->
        <%-- <editor-fold defaultstate="collapsed" desc="Tên ghi chú"> --%>
        <div class="header_menu" id="header_menu" style="background-color: grey">
            <nav class="navbar navbar-default">
                <div class="container">
                    <div class="navbar-flex d-flex align-items-center justify-content-between w-100 pb-2 pt-2">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <a class="navbar-brand" href="home">
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="navbar-collapse1 d-flex align-items-center" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav" id="responsive-menu">
                                <li>
                                    <a href="home" style="color: white;">Trang chủ</a>
                                </li>
                                <li>
                                    <a href="Manager" style="color: white;">Quản lý</a>
                                </li>
                            </ul>
                        </div><!-- /.navbar-collapse -->   
                        <c:if test="${sessionScope.account.role.id == null}">
                            <div class="register-login">
                                <a href="register"><i class="icon-user mr-1"></i> Đăng ký</a>
                                <a href="login"><i class="icon-login mr-1"></i> Đăng nhập</a>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.account.role.id  != null}">
                            <div class="register-login">
                                <div class="register-login">
                                    <div class="dropdown">
                                        <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <c:choose>
                                                <c:when test="${sessionScope.account.role.id == 1}">
                                                    <i class="fa fa-user-circle"></i> ${sessionScope.account.username_admin}
                                                </c:when>
                                                <c:when test="${sessionScope.account.role.id == 2}">
                                                    <i class="fa fa-user-circle"></i> ${sessionScope.account.username_manager}
                                                </c:when>
                                                <c:otherwise>
                                                    <i class="fa fa-user-circle"></i> ${sessionScope.account.userName}
                                                </c:otherwise>
                                            </c:choose>
                                        </button>

                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="Profile"><i class="sl sl-icon-user"></i> Thông tin cá nhân</a>
                                            <a class="dropdown-item" href="Logout"><i class="sl sl-icon-power"></i> Đăng xuất</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <div id="slicknav-mobile"></div>
                    </div>
                </div><!-- /.container-fluid --> 
            </nav>
        </div>
        <%-- </editor-fold> --%>

        <!-- List train trip Starts -->
        <section class="trending pb-6 pt-5">
            <div class="container">
                <div class="section-title text-center mb-5 pb-2 w-50 mx-auto">
                    <h2 class="m-0"><span>Quản lý tàu</span></h2>
                </div>  

                <!--Nút thêm mới -->
                <div class="tab-content">
                    <!-- Section quản lý tàu -->
                    <div class="train-management">
                        <!-- Nút thêm mới -->
                        <button class="nir-btn w-30" onclick="toggleAddTrainForm()" >Thêm tàu</button>
                        <button class="nir-btn w-30" onclick="toggleAddCarriageForm()" >Thêm khoang mới</button>
                        <button class="nir-btn w-30" onclick="toggleAddSeatForm()" >Thêm ghế</button>
                        <button class="nir-btn w-30" onclick="toggleAddStationForm()" >Thêm ga tàu</button>
                        <br>
                        <br>

                        <!-- Form thêm tàu -->
                        <div id="addTrain" class="add-form">
                            <h3>Thêm tàu mới</h3>
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
                            <h3>Thêm khoang tàu mới</h3>
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

                        <!-- Form thêm ghế -->
                        <div id="addSeat" class="add-form">
                            <h3>Thêm ghế mới</h3>
                            <form id="seatForm" action="AddSeat" method="POST">  
                                <%
                                    TrainCarriageDAO TC = new TrainCarriageDAO();
                                    List<TrainCarriage> car_by_brand = TC.getCarriagesByTrainBrandId(id_train_brand);
                                    request.setAttribute("car_by_brand", car_by_brand);
                                %>
                                <!-- Chọn khoang tàu -->
                                <label for="id_train_carriage">Chọn khoang tàu:</label>
                                <select id="id_train_carriage" name="id_train_carriage" required>
                                    <c:forEach var="carr" items="${car_by_brand}">
                                        <option value="${carr.id_train_carriage}">${carr.name_train_carriage}</option>
                                    </c:forEach>
                                </select>
                                <br>

                                <!-- code -->
                                <label for="code_train_seat">Mã ghế:</label>
                                <input type="text" id="code_train_seat" name="code_train_seat" required>
                                <br>    

                                <!-- price -->
                                <label for="price_seat">Giá ghế:</label>
                                <input type="number" id="price_seat" name="price_seat" min="1" required>
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

                        <!-- Form thêm ga tàu -->
                        <div id="addStation" class="add-form">
                            <h3>Thêm ga tàu mới</h3>
                            <form id="stationForm" action="AddStation" method="POST" >  
                                <!-- Tên ga tàu -->
                                <label for="name_station">Tên ga tàu:</label>
                                <input type="text" id="name_station" name="name_station" required>
                                <br>

                                <!--                                 Ảnh ga tàu 
                                                                <label for="image_station">Hình ảnh:</label>
                                                                <input type="file" id="image_station" name="image_station" accept="image/*" required>
                                                                <br>-->

                                <!-- Mô tả -->
                                <label for="description_station">Mô tả:</label>
                                <textarea id="description_station" name="description_station" rows="4" required></textarea>
                                <br>

                                <button type="submit" class="nir-btn w-30">Lưu</button>
                                <button type="button" class="nir-btn w-30" onclick="toggleAddStationForm()">Huỷ</button>
                            </form>
                        </div>


                    </div>
                </div>


                <!-- Bọc bảng trong div có max-height để tạo thanh cuộn -->
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
                                List<Status> statusCarriage = (List<Status>) request.getAttribute("status_carriage");
                                List<Status> statusTrain = (List<Status>) request.getAttribute("status_train");
                                
                                List<Train> topTrains = (List<Train>) request.getAttribute("topTrains"); 
                                if (topTrains != null && !topTrains.isEmpty()) {
                                    for (Train train : topTrains) {
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
                                <td colspan="4" class="text-center">12345678900000</td>
                            </tr>
                            <% } %>
                        </tbody>

                    </table>
                    <br><br>
                </div>
                <!-- Kết thúc div table-responsive -->

                <!-- Table Train Carriage -->
                <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                    <table class="table table-hover mb-0">
                        <thead class="thead-light">
                            <tr>
                                <th class="text-center align-middle">Tên khoang</th>
                                <th class="text-center align-middle">Mô tả</th>
                                <th class="text-center align-middle">Trạng thái</th>
                                <th class="text-center align-middle">Tổng số ghế</th>
                                <th class="text-center align-middle">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                if (car_by_brand != null && !car_by_brand.isEmpty()) {
                                    for (TrainCarriage carriage : car_by_brand) {
                            %>
                            <tr>
                                <td class="text-center align-middle"><%= carriage.getName_train_carriage() %></td>
                                <td class="text-center align-middle"><%= carriage.getDescription_train_carriage() %></td>
                                <td class="text-center align-middle">
                                    <% 
                                        String statusName = "Không xác định";
                                        for (Status status : statusCarriage) {
                                            if (status.getId() == carriage.getId_status()) {
                                                statusName = status.getStatusName();
                                                break;
                                            }
                                        }
                                    %>
                                    <%= statusName %>
                                </td>
                                <td class="text-center align-middle"><%= carriage.getTotal_seat() %></td>
                                <td class="text-center align-middle">
                                    <!-- Nút hành động -->
                                    <a href="EditCarriage?id=<%= carriage.getId_train_carriage() %>" class="btn btn-warning btn-sm">Sửa</a>

                                    <form id="deleteForm-<%= carriage.getId_train_carriage() %>" action="DeleteCarriage" method="POST" style="display: inline;">
                                        <input type="hidden" name="id_train_carriage" value="<%= carriage.getId_train_carriage() %>">
                                        <button type="button" class="btn btn-danger btn-sm" onclick="confirmDeleteCarriage(<%= carriage.getId_train_carriage() %>)">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                            <% 
                                    }
                                } else { 
                            %>
                            <tr>
                                <td colspan="5" class="text-center">Không có khoang tàu nào.</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <br><br>
                </div>

                <!-- Table Train Seat -->
                <div class="table-responsive" style="max-height: 500px; overflow-y: auto;">
                    <table class="table table-hover mb-0">
                        <thead class="thead-light">
                            <tr>
                                <th class="text-center align-middle">Mã ghế</th>
                                <th class="text-center align-middle">Giá vé</th>
                                <th class="text-center align-middle">Khoang</th>
                                <th class="text-center align-middle">Trạng thái</th>
                                <th class="text-center align-middle">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                TrainSeatDAO dao = new TrainSeatDAO();
                                List<TrainSeat> seat_by_brand = dao.getSeatsByTrainBrandId(id_train_brand);
                                
                                if (seat_by_brand != null && !seat_by_brand.isEmpty()) {
                                    for (TrainSeat seat : seat_by_brand) {
                            %>
                            <tr>
                                <td class="text-center align-middle"><%= seat.getCode_train_seat() %></td>
                                <td class="text-center align-middle"><%= seat.getPrice_seat() %> VND</td>
                                <td class="text-center align-middle">
                                    <% 
                                        String carriageName = "Không xác định";
                                        for (TrainCarriage carriage : car_by_brand) {
                                            if (carriage.getId_train_carriage() == seat.getId_train_carriage()) {
                                                carriageName = carriage.getName_train_carriage();
                                                break;
                                            }
                                        }
                                    %>
                                    <%= carriageName %>
                                </td>
                                <td class="text-center align-middle">
                                    <% 
                                        String statusName = "Không xác định";
                                        for (Status status : statusCarriage) {
                                            if (status.getId() == seat.getId_status()) {
                                                statusName = status.getStatusName();
                                                break;
                                            }
                                        }
                                    %>
                                    <%= statusName %>
                                </td>
                                <td class="text-center align-middle">
                                    <!-- Nút hành động -->
                                    <a href="EditTrainSeat?id=<%= seat.getId_train_seat() %>" class="btn btn-warning btn-sm">Sửa</a>

                                    <form id="deleteForm-<%= seat.getId_train_seat() %>" action="DeleteTrainSeat" method="POST" style="display: inline;">
                                        <input type="hidden" name="id_train_seat" value="<%= seat.getId_train_seat() %>">
                                        <button type="button" class="btn btn-danger btn-sm" onclick="confirmDeleteSeat(<%= seat.getId_train_seat() %>)">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                            <% 
                                    }
                                } else { 
                            %>
                            <tr>
                                <td colspan="5" class="text-center">Không có ghế nào.</td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <br><br>
                </div>



        </section>
        <!-- List train trip Ends -->

        <!-- footer ends -->

        <!-- Back to top start -->
        <div id="back-to-top">
            <a href="#"></a>
        </div>
        <!-- Back to top ends -->    
    </body>

    <!-- ẩn hiện form -->
    <script>
        // Hàm hiển thị/ẩn form 
        function toggleAddTrainForm() {
            const form = document.getElementById("addTrain");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
        function toggleAddCarriageForm() {
            const form = document.getElementById("addCarriage");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
        function toggleAddSeatForm() {
            const form = document.getElementById("addSeat");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
        function toggleAddStationForm() {
            const form = document.getElementById("addStation");
            form.style.display = form.style.display === "none" || form.style.display === "" ? "block" : "none";
        }
    </script>

    <script>
        function confirmDeleteTrain(id) {
            if (confirm("Bạn có chắc chắn muốn xóa tàu này không?")) {
                document.getElementById("deleteForm-" + id).submit();
            }
        }
        function confirmDeleteCarriage(id_train_carriage) {
            if (confirm("Bạn có chắc chắn muốn xóa khoang tàu này không?")) {
                document.getElementById('deleteForm-' + id_train_carriage).submit();
            }
        }
        function confirmDeleteSeat(id_train_seat) {
            if (confirm("Bạn có chắc chắn muốn xóa ghế tàu này không?")) {
                document.getElementById('deleteForm-' + id_train_seat).submit();
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



</script>
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
</body>
</html>