document.addEventListener("DOMContentLoaded", function () {
    const dateScroll = document.getElementById("date-scroll");
    const today = new Date();
    let selectedDate = null; // Lưu ngày đang được chọn

    // Xóa dữ liệu cũ trước khi thêm mới
    dateScroll.innerHTML = "";

    for (let i = 0; i < 50; i++) {
        let newDate = new Date();
        newDate.setDate(today.getDate() + i);

        let day = newDate.getDate().toString().padStart(2, "0");
        let month = (newDate.getMonth() + 1).toString().padStart(2, "0");
        let fullDate = `${newDate.getFullYear()}-${month}-${day}`;

        let dateItem = document.createElement("div");
        dateItem.classList.add("px-3", "text-center", "fw-bold", "date-item");
        dateItem.textContent = `${day}/${month}`;

        // Nếu là ngày đầu tiên (hôm nay), đặt nó làm ngày được chọn mặc định (màu cam)
        if (i === 0) {
            dateItem.classList.add("current-day", "selected");
            selectedDate = dateItem;
            fetchTrips(fullDate); // Tải dữ liệu ngay khi trang mở
        }

        // Xử lý sự kiện click để chọn ngày
        dateItem.addEventListener("click", function () {
            if (selectedDate) {
                selectedDate.classList.remove("selected"); // Xóa màu cam ngày cũ
                selectedDate.classList.add("clicked"); // Chuyển màu xanh dương
            }

            // Xóa class `current-day` khỏi tất cả các ngày khi có ngày khác được chọn
            document.querySelectorAll(".date-item").forEach(item => {
                item.classList.remove("current-day");
            });

            dateItem.classList.add("selected"); // Ngày mới được chọn có màu cam
            dateItem.classList.remove("clicked"); // Đảm bảo không bị xanh dương
            selectedDate = dateItem; // Cập nhật ngày đang chọn

            fetchTrips(fullDate);
        });

        dateScroll.appendChild(dateItem);
    }

    // Hàm fetch dữ liệu chuyến đi theo ngày
    function fetchTrips(date) {
        fetch("GetTripServlet", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: `date=${encodeURIComponent(date)}`
        })
                .then(response => response.json())
                .then(data => {
                    console.log("Kiểm tra trip-list:", document.getElementById("trip-list"));
                    console.log("Dữ liệu nhận từ Servlet:", data);
                    renderTrips(data);
                })
                .catch(error => console.error("Lỗi khi lấy dữ liệu chuyến đi:", error));
    }


    // Hàm hiển thị danh sách chuyến đi
    function renderTrips(trips) {
        const tripContainer = document.getElementById("trip-list");
        tripContainer.innerHTML = "";

        if (trips.length === 0) {
            tripContainer.innerHTML = "<tr><td colspan='8' class='text-center text-danger'>Không có chuyến đi nào.</td></tr>";
            return;
        }

        trips.forEach(trip => {
            let start = trip.time_start_ticket.split(", ");
            let date_start = start[0] + ", " + start[1];
            let time_start = start[2];
            let end = trip.time_end_ticket.split(", ");
            let date_end = end[0] + ", " + end[1];
            let time_end = end[2];
            let price = "100000";
            let row = `
                <tr>
                    <td class="text-center font-weight-bold align-middle">${trip.name_train}</td>
                    <td class="text-center align-middle">
                        <img src="${trip.imageUrl}" alt="Tàu ${trip.trainCode}" class="img-thumbnail" style="width: 100px; height: 60px; object-fit: cover;">
                    </td>
                    <td class="text-center align-middle">
                        <div class="blue">${date_start}</div>
                        <div class="text-muted small">${time_start}</div>
                    </td>
                    <td class="text-center align-middle">
                        <div class="blue">${date_end}</div>
                        <div class="text-muted small">${time_end}</div>
                    </td>
                    <td class="text-center align-middle">${trip.name_station_start}</td>
                    <td class="text-center align-middle">${trip.name_station_end}</td>
                    <td class="text-center align-middle text-danger font-weight-bold">${price}đ</td>
                    <td class="text-center align-middle">
                        <a href="#" class="nir-btn w-100"><i class="fas fa-chair mr-1"></i>Đặt vé</a>
                    </td>
                </tr>
            `;
            tripContainer.innerHTML += row;
        });
    }
});
