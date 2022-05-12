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
	고유 아이디는 = ${movie.id }
	이름은 = ${movie.title}
	번호는 = ${movie.open}
	
	<hr/>
	</c:forEach>
</body>
</html>