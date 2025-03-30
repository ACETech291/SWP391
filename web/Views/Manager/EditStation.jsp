<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Bản Tin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script>
        function previewEditImage() {
            var file = document.getElementById("edit_fileInput").files[0];
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById("edit_avatarPreview").src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    </script>
    <style>
        .container {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #f8f9fa;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            border-radius: 8px;
            font-size: 16px;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            font-size: 16px;
            padding: 10px;
            width: 100%;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Chỉnh sửa ga tàu</h2>

    <form action="EditStation" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id_station" value="${station.id_station}">

        <!-- Ảnh -->
        <div class="mb-3 text-center">
            <label class="form-label">Ảnh ga:</label>
            <div class="edit-profile-photo">
                <img src="${pageContext.request.contextPath}/${station.image_station}" 
                     alt="Ảnh ga tàu" width="180" id="edit_avatarPreview" class="rounded shadow"/>
                <div class="mt-2">
                    <input type="file" name="image" class="form-control" id="edit_fileInput" onchange="previewEditImage();"/>
                </div>
            </div>
        </div>

        <!-- Mô tả -->
        <div class="mb-3">
            <label class="form-label">Tên ga:</label>
            <p class="form-control" name="description" rows="2" readonly>${station.name_station}</p>
        </div>

        <!-- Nội dung -->
        <div class="mb-3">
            <label class="form-label">Mô tả:</label>
            <textarea class="form-control" name="description_station" rows="4" required>${station.description_station}</textarea>
        </div>
        
        <div class="mb-3">
            <label class="form-label">Nội dung:</label>
            <textarea class="form-control" name="content" rows="4" required>${station.content}</textarea>
        </div>

        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-custom">Lưu</button>
            <a href="stationmanagement" class="btn btn-outline-secondary">Huỷ</a>
        </div>
    </form>
</div>

</body>
</html>
