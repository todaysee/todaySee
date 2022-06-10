<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<c:set var="userProfileYn" value="${user.userProfileYn}"/>
<c:choose>
    <c:when test="${userProfileYn eq '0'}">
        <img src="https://t1.daumcdn.net/cfile/tistory/2513B53E55DB206927"
             class="rounded-circle img-thumbnail float-start containerMyProfileImg " alt="image">
    </c:when>
    <c:otherwise>
        <c:forEach items="${profileImages}" var="img">
            <img src="${img.imagesUrl}"
                 class="rounded-circle img-thumbnail float-start containerMyProfileImg "
                 alt="image">
        </c:forEach>
    </c:otherwise>
</c:choose>





