<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	ㅎㅇ
	<c:forEach var="movie" items="${movie}">
	고유 아이디는 = ${movie.id } <br/>
	제목은 = ${movie.content_title} <br/>
	내용 = ${movie.content_info} <br/>
	등록일은 = ${movie.content_release_date } <br/>
	연령대 = ${movie.content_age } <br/>
	장르 = ${movie.genre_name} 
	<hr/>
	</c:forEach>
</body>
</html>