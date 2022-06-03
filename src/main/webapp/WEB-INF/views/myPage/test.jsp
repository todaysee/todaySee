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
        <th bgcolor="orange" width="40">번호</th>
        <th bgcolor="orange" width="450">제목</th>
        <th bgcolor="orange" width="40">연령</th>
        <th bgcolor="orange" width="350">장르</th>
        <th bgcolor="orange" width="800">컨텐츠링크</th>
    </tr>
    <c:forEach items="${userBoardList }" var="board">
        <tr>
            <td>${board.user.userNumber }</td>
            <td>${board.user.userNickname }</td>
            <td>${board.communityCategory }</td>
            <td>${board.communityContent }</td>
            <td>${board.communityDate }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>



