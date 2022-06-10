<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<c:set var="userTitleProfileYn" value="${user.userTitleProfileYn}"/>
<c:choose>
    <c:when test="${userTitleProfileYn eq '0'}">
        <div class="my-profile-inner-box">
            <div class="profile-cover-image">
                <div class="containerMyProfileTitleImg">
                    <img class="img-fluid" src="https://mblogthumb-phinf.pstatic.net/MjAxNzExMzBfMTc4/MDAxNTEyMDIxMTMxOTc2.UmV53rFQUZZV3PXRjyabcxG5yVRsH0BUm70TGYUzVrsg.5JLII34U-W5b_ngN_MCx_xNyBAZ3AJW1vCv6Lq9lh8cg.JPEG.allthat_art/windows_xp_bliss-wide.jpg?type=w800" alt="image">
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







