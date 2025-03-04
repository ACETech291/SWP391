<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header-->
<nav class="navbar navbar-light navbar-glass navbar-top navbar-expand" style="display: none;">
    <button class="btn navbar-toggler-humburger-icon navbar-toggler me-1 me-sm-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarVerticalCollapse" aria-controls="navbarVerticalCollapse" aria-expanded="false" aria-label="Toggle Navigation"><span class="navbar-toggle-icon"><span class="toggle-line"></span></span></button>
    <a class="navbar-brand me-1 me-sm-3" href="index.html">
        <div class="d-flex align-items-center py-3"><img class="me-2" src="${pageContext.request.contextPath}/images/icon.png" alt="image" width="40"/><span class="font-sans-serif text-primary">Fast Rail Ticket</span></div>
    </a>
    <ul class="navbar-nav navbar-nav-icons ms-auto flex-row align-items-center">
        <li class="nav-item d-none d-sm-block">
            <span id="datetime"></span>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link pe-0 ps-2" id="navbarDropdownUser" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="avatar avatar-xl">
                    <img class="rounded-circle" src="${pageContext.request.contextPath}/Views/Admin/assets/img/team/2.jpg" alt="" />
                </div>
            </a>
            <div class="dropdown-menu dropdown-caret dropdown-caret dropdown-menu-end py-0" aria-labelledby="navbarDropdownUser">
                <div class="bg-white dark__bg-1000 rounded-2 py-2">
                    <a class="dropdown-item fw-bold text-warning" href="#"><span class="fas fa-crown me-1"></span><span>Chào mừng Admin</span></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="profileadmin">Thông tin cá nhân</a>
                    <a class="dropdown-item" href="Logout">Đăng xuất</a>
                </div>
            </div>
        </li>
    </ul>
</nav>

<script>
    function updateDateTime() {
        const now = new Date();
        const datetimeElement = document.getElementById('datetime');
        const options = {
            year: 'numeric',
            month: 'long',
            day: 'numeric',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false
        };
        datetimeElement.innerHTML = now.toLocaleString('vi-VN', options);
    }
    updateDateTime();
    setInterval(updateDateTime, 1000);
</script>
