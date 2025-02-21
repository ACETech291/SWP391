<%-- 
    Document   : test
    Created on : Feb 20, 2025, 2:54:20 PM
    Author     : Nguyen Ba Hien
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:if test="${not empty listTripDTO}">
        <table class="table table-hover mb-0">
            <thead class="thead-light">
                <tr>
                    <th class="text-center align-middle">Ga đi</th>
                    <th class="text-center align-middle">Ga đến</th>
                    <th class="text-center align-middle">Ngày đi</th>
                    <th class="text-center align-middle">Mã tàu</th>
                </tr>
            </thead>
            <tbody id="trip-list">
            <c:forEach var="trip" items="${listTripDTO}">
                <tr>
                    <td class="text-center align-middle">${trip.start_station}</td>
                    <td class="text-center align-middle">${trip.end_station}</td>
                    <td class="text-center align-middle">${date}</td>
                    <td class="text-center align-middle">${trip.name_train}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
