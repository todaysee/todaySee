<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:forEach items="${tittleImages }" var="img">
<div class="my-profile-inner-box">
    <div class="profile-cover-image">
        <div class="containerMyProfileTitleImg">
            <img class="img-fluid" src="${img.imagesUrl }" alt="image">
        </div>
    </div>
</div>
</c:forEach>






