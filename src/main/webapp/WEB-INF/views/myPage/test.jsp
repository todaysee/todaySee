<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>영상 목록</title>
</head>
<body>
<h1>게시글 목록</h1>

<table border="1">
    <tr>
        <th bgcolor="orange" width="100">번호</th>
        <th bgcolor="orange" width="200">제목</th>
        <th bgcolor="orange" width="150">유튜브링크</th>
        <th bgcolor="orange" width="150">연령</th>
        <th bgcolor="orange" width="100">장르</th>
        <th bgcolor="orange" width="100">정보</th>
        <th bgcolor="orange" width="100">컨텐츠링크</th>
    </tr>
    <c:forEach items="${contentList }" var="content">
        <tr>
            <td>${content.contentNumber }</td>
            <td>${content.contentTitle }</td>
            <td>${content.contentYoutube }</td>
            <td>${content.contentAge }</td>
            <td>${content.contentGenre }</td>
            <td>${content.contentInfo }</td>
            <td>${content.contentLink }</td>

        </tr>
    </c:forEach>
</table>
</body>
</html>



