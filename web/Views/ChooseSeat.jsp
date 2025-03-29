<%@page import="org.apache.tomcat.jakartaee.commons.lang3.tuple.Pair"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
    <head>
        <title>Đặt vé tàu</title>
        <meta charset="UTF-8">
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f7f9;
                text-align: center;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            .container {
                background: white;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
                width: 80%;
                max-width: 800px;
            }

            h2 {
                color: #333;
                margin-bottom: 30px;
            }

            .train-info {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;
                margin-bottom: 30px;
                padding: 20px;
                background: #e8f5e9;
                border-radius: 10px;
            }

            .train-info div {
                text-align: left;
            }

            .train-info label {
                display: block;
                margin-bottom: 5px;
                color: #555;
                font-weight: 600;
            }

            .train-info input {
                width: calc(100% - 20px);
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 16px;
                background-color: #f9f9f9;
                color: #333;
            }

            .seats-container {
                display: flex;
                justify-content: center;
                gap: 40px;
                margin-bottom: 30px;
            }

            .seats {
                display: grid;
                grid-template-columns: repeat(4, 60px); /* Tăng số cột lên 4 */
                gap: 10px;
            }

            .seat {
                width: 60px;
                height: 60px;
                background-color: #e0e0e0;
                border: 2px solid #9e9e9e;
                display: flex;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                font-weight: bold;
                border-radius: 8px;
                transition: all 0.3s ease;
                font-size: 16px;
                color: #333;
            }

            .seat.selected {
                background-color: #4caf50;
                color: white;
                border: 2px solid #388e3c;
                box-shadow: 0 4px 8px rgba(76, 175, 80, 0.4);
            }

            .seat.occupied {
                background-color: #f44336;
                cursor: not-allowed;
                border: 2px solid #d32f2f;
                color: white;
            }

            button {
                background-color: #2196f3;
                color: white;
                border: none;
                padding: 15px 30px;
                cursor: pointer;
                border-radius: 8px;
                font-size: 18px;
                transition: background 0.3s ease;
            }

            button:hover {
                background-color: #1976d2;
            }

            p {
                font-size: 18px;
                margin-bottom: 15px;
                color: #333;
            }

            p span {
                font-weight: 600;
                color: #007bff;
            }

            label[for="seats-container"] {
                margin-bottom: 30px;
                display: block;
            }
            .select-container {
                position: relative;
                width: 100%;
            }

            select {
                width: 95%; /* Giữ chiều rộng 95% */
                padding: 12px 36px 12px 12px; /* Tạo khoảng trống bên phải cho mũi tên */
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 16px;
                background-color: #f9f9f9;
                color: #333;
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                cursor: pointer;
                display: block;
            }

            /* Căn chỉnh lại vị trí của mũi tên */
            .select-container::after {
                content: "▼";
                font-size: 12px;
                color: #333;
                position: absolute;
                right: 7%; /* Đặt đúng vị trí theo width: 95% */
                top: 50%;
                transform: translateY(-50%);
                pointer-events: none; /* Để không ảnh hưởng đến chọn option */
            }


        </style>
    </head>
    <body>
        <%
            String start_time = (String) request.getAttribute("start_time");
            String end_time = (String) request.getAttribute("end_time");
            Integer id_trip = (Integer) request.getAttribute("id_trip");
            String name_train = (String) request.getAttribute("name_train");
            String name_station_start = (String) request.getAttribute("name_station_start");
            String name_station_end = (String) request.getAttribute("name_station_end");
            String time_date_start = (String) request.getAttribute("time_date_start");
            String date_start = (String) request.getAttribute("date");
            List<Pair<Pair<Integer, Integer>, String>> name_train_carriage = (List<Pair<Pair<Integer, Integer>, String>>) request.getAttribute("name_train_carriage");
        %>

        <div class="container">
            <h2>Chọn vị trí ngồi</h2>
            <div class="train-info">
                <div>
                    <label><strong>Tên tàu:</strong></label>
                    <input type="text" value="${name_train}" readonly>
                    <label><strong>Hãng tàu:</strong></label>
                    <input type="text" value="Đường sắt Việt Nam" readonly>
                    <label><strong>Chọn khoang:</strong></label>
                    <div class="select-container">
                        <select id="coachSelect">
                            <c:forEach var="carriage" items="${name_train_carriage}">

                                <option value="${carriage.getLeft().getLeft().toString()}" 
                                        data-name="${carriage.getLeft().getRight().toString()}">
                                    ${carriage.getRight()}
                                </option>

                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div>
                    <label><strong>Điểm đi:</strong></label>
                    <input type="text" value="${name_station_start}" readonly>
                    <label><strong>Điểm đến:</strong></label>
                    <input type="text" value="${name_station_end}" readonly>
                    <label><strong>Thời gian đi:</strong></label>
                    <input type="text" value="${time_date_start}" readonly>
                </div>
            </div>
            <label for="seats-container"><strong>Chọn ghế ngồi:</strong></label>
            <div class="seats-container" id="seats-container">
                <div class="seats" id="leftSeats"></div>
                <div class="seats" id="rightSeats"></div>
            </div>
            <p>Ghế đã chọn: <span id="selectedSeats">0</span></p>
            <p hidden="true">Tổng tiền: <span id="totalPrice">0</span> VNĐ</p>
            <form id="bookingForm" action="ConfirmBooking" method="post">
                <input type="hidden" id="bookingData" name="bookingData">
                <button type="button" onclick="confirmBooking()">Xác Nhận</button>
            </form>
        </div>
                    <jsp:include page="includes/footer.jsp"></jsp:include>
    <jsp:include page="includes/rule.jsp"></jsp:include>
    <jsp:include page="includes/support.jsp"></jsp:include>
        <script>
            let id_trip = <%= id_trip%>;
            let date_start = "<%= date_start%>";
            let start_time = "<%= start_time%>";
            let end_time = "<%= end_time%>";
            let selectedSeatsByCoach = {}; // Lưu ghế theo từng khoang
            const seatPrice = 50000;
            let selectElement = document.getElementById("coachSelect");
            let totalSeatsSelected = 0; // Khai báo biến totalSeatsSelected

            function getCurrentCoachId() {
                return selectElement.options[selectElement.selectedIndex].value;
            }

            document.getElementById("coachSelect").addEventListener("change", function (event) {
                let selectedOption = event.target.options[event.target.selectedIndex];
                let idTrain = selectedOption.value;
                let totalSeat = selectedOption.getAttribute("data-name");

                console.log("idTrain:", idTrain);
                console.log("totalSeat:", totalSeat);

                let baseURL = window.location.origin + "/SWP391";
                const url = new URL(baseURL + "/GetNumberOfSeats");
                const param = new URLSearchParams();
                param.append("id", idTrain);
                param.append("totalSeat", totalSeat);
                param.append("id_trip", id_trip);
                param.append("start_time", start_time);
                param.append("end_time", end_time);
                param.append("date",date_start);
                url.search = param.toString();

                console.log("URL Fetch:", url.toString());

                fetch(url.toString(), {method: 'GET'})
                        .then(response => response.json())
                        .then(occupiedSeats => {
                            console.log("Ghế đã được chọn:", occupiedSeats);
                            createSeats(parseInt(totalSeat), occupiedSeats, idTrain);
                        })
                        .catch(error => console.error("Lỗi khi lấy dữ liệu ghế:", error));
            });

            function createSeats(numberOfSeats, occupiedSeats, coachId) {
                const leftSeats = document.getElementById("leftSeats");
                const rightSeats = document.getElementById("rightSeats");

                if (!leftSeats || !rightSeats) {
                    console.error("Không tìm thấy leftSeats hoặc rightSeats trong DOM");
                    return;
                }

                leftSeats.innerHTML = "";
                rightSeats.innerHTML = "";

                if (!selectedSeatsByCoach[coachId]) {
                    selectedSeatsByCoach[coachId] = [];
                }

                for (let i = 0; i < numberOfSeats; i++) {
                    const seatNumber = i + 1;
                    const seat = document.createElement("div");
                    seat.classList.add("seat");
                    seat.textContent = seatNumber;

                    // Kiểm tra nếu ghế đã được đặt
                    if (occupiedSeats.includes(seatNumber)) {
                        seat.classList.add("occupied");
                    } else {
                        seat.addEventListener("click", () => toggleSeat(seatNumber, coachId));
                    }

                    // Kiểm tra nếu ghế đã được chọn trước đó
                    if (selectedSeatsByCoach[coachId].includes(seatNumber)) {
                        seat.classList.add("selected");
                    }

                    if (i % 2 === 0) {
                        leftSeats.appendChild(seat);
                    } else {
                        rightSeats.appendChild(seat);
                    }
                }

                updateInfo();
            }

            function toggleSeat(seatNumber, coachId) {
                if (!selectedSeatsByCoach[coachId]) {
                    selectedSeatsByCoach[coachId] = [];
                }

                const seatElements = document.querySelectorAll(".seat");
                const seat = Array.from(seatElements).find(seat => Number(seat.textContent) === seatNumber);

                if (!seat || seat.classList.contains("occupied")) {
                    return; // Không cho chọn ghế đã bị chiếm
                }

                if (selectedSeatsByCoach[coachId].includes(seatNumber)) {
                    selectedSeatsByCoach[coachId] = selectedSeatsByCoach[coachId].filter(num => num !== seatNumber);
                    seat.classList.remove("selected");
                } else {
                    selectedSeatsByCoach[coachId].push(seatNumber);
                    seat.classList.add("selected");
                }

                updateInfo();
            }

            function updateInfo() {
                const selectedSeatsEl = document.getElementById("selectedSeats");
                const totalPriceEl = document.getElementById("totalPrice");

                if (!selectedSeatsEl || !totalPriceEl) {
                    console.error("Không tìm thấy selectedSeats hoặc totalPrice trong DOM");
                    return;
                }

                totalSeatsSelected = Object.values(selectedSeatsByCoach).reduce((sum, seats) => sum + seats.length, 0);
                selectedSeatsEl.textContent = totalSeatsSelected;
                totalPriceEl.textContent = totalSeatsSelected * seatPrice;
            }

            function confirmBooking() {
                if (totalSeatsSelected === 0) {
                    alert("Bạn chưa chọn ghế!");
                    return;
                }

                let dataToSend = {
                    id_trip: id_trip,
                    selectedSeats: selectedSeatsByCoach,
                    date: date_start
                };

                console.log("Dữ liệu gửi đi:", JSON.stringify(dataToSend));

                document.getElementById("bookingData").value = JSON.stringify(dataToSend);
                document.getElementById("bookingForm").submit();
            }

// Khi tải trang, tự động tải ghế của khoang đầu tiên
            window.onload = function () {
                if (selectElement.options.length > 0) {
                    let firstOption = selectElement.options[selectElement.selectedIndex];
                    let idTrain = firstOption.value;
                    let totalSeat = firstOption.getAttribute("data-name");

                    console.log("Lấy dữ liệu ban đầu với idTrain:", idTrain, "totalSeat:", totalSeat);

                    let baseURL = window.location.origin + "/SWP391";
                    const url = new URL(baseURL + "/GetNumberOfSeats");
                    const param = new URLSearchParams();
                    param.append("id", idTrain);
                    param.append("totalSeat", totalSeat);
                    param.append("id_trip", id_trip);
                    param.append("start_time", start_time);
                    param.append("end_time", end_time);
                    param.append("date",date_start);
                    url.search = param.toString();

                    console.log("URL Fetch:", url.toString());

                    fetch(url.toString(), {method: 'GET'})
                            .then(response => response.json())
                            .then(occupiedSeats => {
                                console.log("Ghế đã được chọn:", occupiedSeats);
                                createSeats(parseInt(totalSeat), occupiedSeats, idTrain);
                            })
                            .catch(error => console.error("Lỗi khi lấy dữ liệu ghế:", error));
                }
            };

        </script>
    </body>
</html>