<%@page import="com.google.gson.Gson"%>
<%@page import="dal.TripDAO"%>
<%@page import="dal.TrainSeatDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.TrainCarriageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Xác Nhận Đặt Vé</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <style>
            body {
                background: linear-gradient(135deg, #e0f7fa, #b2ebf2, #80deea); /* Gradient background */
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                font-family: 'Arial', sans-serif;
            }
            .container {
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
                text-align: center;
                max-width: 700px;
            }
            .info-box {
                background: #f8f9fa;
                padding: 15px;
                border-radius: 8px;
                border-left: 5px solid #007bff;
                margin-bottom: 15px;
                text-align: left;
            }
            table {
                border-radius: 8px;
                overflow: hidden;
            }
            th {
                background-color: #007bff;
                color: white;
            }
            tr:hover {
                background-color: #f8f9fa;
                transition: 0.3s;
            }
            .confirm-btn {
                background: linear-gradient(90deg, #28a745, #218838);
                color: white;
                border: none;
                padding: 12px 20px;
                border-radius: 6px;
                font-size: 16px;
                font-weight: bold;
                margin-top: 20px;
                transition: all 0.3s;
            }
            .no-border td {
                border: none !important;
            }
            .confirm-btn:hover {
                transform: scale(1.1);
                background: linear-gradient(90deg, #218838, #1e7e34);
            }
            .total-trip {
                margin-top: 20px;
                padding: 15px;
                background: #e9ecef;
                border-radius: 6px;
                font-size: 18px;
                font-weight: bold;
                text-align: center;
                display: flex;
                justify-content: space-between;
            }

            .total-label {
                color: #333;
            }

            .total-amount {
                color: #d9534f;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <h2>Xác Nhận Đặt Vé</h2>
            <%
                String name_user = (String) request.getAttribute("name_user");
                String email = (String) request.getAttribute("email");
                String phone = (String) request.getAttribute("phone");
                String name_train = (String) request.getAttribute("name_train");
                String name_train_brand = (String) request.getAttribute("name_train_brand");
                int id_trip = (Integer) request.getAttribute("id_trip");
                // String la id_train_carrige
                // List<Integer> la list ghe trong do
                HashMap<String, List<Integer>> selectedSeatByCoach = (HashMap<String, List<Integer>>) request.getAttribute("selectedSeatByCoach");
                TripDAO td = new TripDAO();
                int price_trip = td.getPriceTripFromTripID(id_trip);
                String date = (String) request.getAttribute("date");
                int sum = 0;
                double total_price = 0;
            %>
            <div class="info-box"><strong>Họ tên:</strong> <%= name_user%></div>
            <div class="info-box"><strong>Email:</strong> <%= email%></div>
            <div class="info-box"><strong>Số điện thoại:</strong> <%= phone%></div>
            <div class="info-box"><strong>Hãng tàu:</strong> <%= name_train_brand%></div>
            <div class="info-box"><strong>Mã Chuyến Đi:</strong> <%= id_trip%></div>

            <h3>Danh sách ghế đã chọn:</h3>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Tên tàu:</th>
                        <th>Khoang</th>
                        <th>Danh sách ghế</th>
                        <th>Tổng giá tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <% if (selectedSeatByCoach != null && !selectedSeatByCoach.isEmpty()) {

                            for (Map.Entry<String, List<Integer>> entry : selectedSeatByCoach.entrySet()) {

                                String coachId = entry.getKey();
                                TrainCarriageDAO tcd = new TrainCarriageDAO();
                                ArrayList<Integer> list = tcd.getNumberOfCarriage(Integer.parseInt(coachId));
                                List<Integer> seats = entry.getValue();
                                TrainSeatDAO tsd = new TrainSeatDAO();
                                sum += seats.size();
                                double price = tsd.getTotalPrice(Integer.parseInt(coachId), seats);
                                total_price += price;
                                if (!seats.isEmpty()) {
                    %>
                    <tr>
                        <td> <%= name_train%> </td>
                        <td><%= list.get(1)%></td>
                        <td><%= String.join(", ", seats.stream().map(String::valueOf).toArray(String[]::new))%></td>
                        <td><%= price%> </td>
                    </tr>

                    <% }
                        }%>
                    <tr class="no-border">
                        <td><strong>Price Trip</strong></td>
                        <td></td>
                        <td></td>
                        <td><%= price_trip%></td>

                    </tr>
                    <%} else { %>
                    <tr>
                        <td colspan="2">Không có ghế nào được chọn.</td>
                    </tr>
                    <% }%>
                </tbody>

            </table>
            <div class="total-trip">
                <span class="total-label">Tổng chi phí chuyến đi:</span>
                <span class="total-amount"><%= total_price + price_trip * sum%> VND</span>
            </div>
            <%
                Gson gson = new Gson();
                String selectedSeatsJson = gson.toJson(selectedSeatByCoach);
            %>
            <form id="bookingForm" action="payment" method="post">
                <input type="hidden" name="id_trip" value="<%= id_trip%>">
                <input type="hidden" name="total_bill" value="<%= total_price + price_trip * sum%>">
                <input type="hidden" name="booking_time" id="currentDateTime">
                <input type="hidden" name="date" value="<%= date %>">
                <input type="hidden" name="selectedSeats" id="selectedSeats" value='<%= selectedSeatsJson%>'>
                <button type="button" class="confirm-btn" onclick="confirmBooking()">Xác Nhận Đặt Vé</button>
            </form>
        </div>
                    <jsp:include page="includes/footer.jsp"></jsp:include>
    <jsp:include page="includes/rule.jsp"></jsp:include>
    <jsp:include page="includes/support.jsp"></jsp:include>
        <script>
            function confirmBooking() {
                // Lấy thời gian hiện tại
                let now = new Date();
                let formattedDateTime = now.getFullYear() + "-" +
                        ("0" + (now.getMonth() + 1)).slice(-2) + "-" +
                        ("0" + now.getDate()).slice(-2) + " " +
                        ("0" + now.getHours()).slice(-2) + ":" +
                        ("0" + now.getMinutes()).slice(-2) + ":" +
                        ("0" + now.getSeconds()).slice(-2);

                // Gán vào input hidden
                document.getElementById("currentDateTime").value = formattedDateTime;

                // Submit form
                document.getElementById("bookingForm").submit();
            }
        </script>
    </body>
</html>