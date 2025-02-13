document.addEventListener("DOMContentLoaded", function () {
    const dateScroll = document.getElementById("date-scroll");
    const today = new Date();
    let selectedDate = null; // Biến lưu ngày đang được chọn

    // Xóa nội dung cũ trước khi thêm mới
    dateScroll.innerHTML = "";

    for (let i = 0; i < 50; i++) {
        let newDate = new Date();
        newDate.setDate(today.getDate() + i);

        let day = newDate.getDate().toString().padStart(2, "0");
        let month = (newDate.getMonth() + 1).toString().padStart(2, "0");

        let dateItem = document.createElement("div");
        dateItem.classList.add("px-3", "text-center", "fw-bold", "date-item");
        dateItem.textContent = `${day}/${month}`;

        // Nếu là ngày hôm nay, đặt nó làm ngày được chọn mặc định (màu cam)
        if (i === 0) {
            dateItem.classList.add("current-day", "selected");
            selectedDate = dateItem; // Lưu lại ngày hôm nay là ngày đầu tiên được chọn
        }

        // Gán sự kiện click để chọn ngày
        dateItem.addEventListener("click", function () {
            if (selectedDate) {
                selectedDate.classList.remove("selected"); // Xóa màu cam của ngày trước đó
                selectedDate.classList.add("clicked"); // Chuyển màu ngày cũ về xanh dương
            }

            // Loại bỏ class `current-day` khỏi tất cả các ngày khi có ngày khác được chọn
            document.querySelectorAll(".date-item").forEach(item => {
                item.classList.remove("current-day");
            });

            dateItem.classList.add("selected"); // Ngày được chọn có màu cam
            dateItem.classList.remove("clicked"); // Đảm bảo ngày đang chọn không bị xanh dương
            selectedDate = dateItem; // Cập nhật ngày được chọn
        });

        dateScroll.appendChild(dateItem);
    }
});
