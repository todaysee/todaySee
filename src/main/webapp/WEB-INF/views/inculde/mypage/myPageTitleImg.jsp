<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<c:set var="userTitleProfileYn" value="${user.userTitleProfileYn}"/>
<c:choose>
    <c:when test="${userTitleProfileYn eq '0'}">
        <div class="my-profile-inner-box">
            <div class="profile-cover-image">
                <div class="containerMyProfileTitleImg">
                    <img class="img-fluid" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile21.uf.tistory.com%2Fimage%2F261F214E565C2E72262FD6" alt="image">
                </div>
            </div>
        </div>
    </c:when>
    <c:otherwise>
        <c:forEach items="${tittleImages }" var="img">
            <div class="my-profile-inner-box">
                <div class="profile-cover-image">
                    <div class="containerMyProfileTitleImg">
                        <img class="img-fluid" src="${img.imagesUrl }" alt="image">
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:otherwise>
</c:choose>







