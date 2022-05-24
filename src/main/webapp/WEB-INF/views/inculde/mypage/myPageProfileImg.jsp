<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<c:set var="userProfileYn" value="${user.userProfileYn}"/>
<c:choose>
    <c:when test="${userProfileYn eq '0'}">
        <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile2.uf.tistory.com%2Fimage%2F2672F24D565C2ED7144C63"
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





