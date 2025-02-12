<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="guideModal" tabindex="-1" role="dialog" aria-labelledby="guideModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="guideModalLabel">Hướng Dẫn Đặt Vé Tàu</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h6>1. Chọn hành trình</h6>
                <p>- Truy cập trang web và chọn điểm đi, điểm đến, ngày đi</p>

                <h6>2. Chọn chuyến tàu</h6>
                <p>- Xem danh sách các chuyến tàu phù hợp và chọn vị trí theo ý muốn.</p>

                <h6>3. Nhập thông tin hành khách</h6>
                <p>- Điền thông tin cá nhân: Họ tên, số điện thoại, email.</p>

                <h6>4. Thanh toán</h6>
                <p>- Chọn phương thức thanh toán: Ví điện tử, thẻ ngân hàng hoặc tại quầy.</p>

                <h6>5. Nhận vé</h6>
                <p>- Sau khi thanh toán, bạn sẽ nhận được vé điện tử qua email hoặc SMS.</p>

                <h6>6. Lên tàu</h6>
                <p>- Đến ga trước giờ khởi hành ít nhất 30 phút, xuất trình vé điện tử để lên tàu.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>
