<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
		<hr/>
		<a href="testSessionLogin">1번 로그인</a>
		<a href="testSessionLogin2">2번 로그인</a>
		<a href="testSessionLogout">로그아웃</a>
		<h1>세션로그인 : ${sessionScope.userNumber}</h1>
		<hr/>
		<a href="/3">워드클라우드 테스트 페이지</a><br/>
		<a href="/">홈페이지-인덱스</a><br/>
		<a href="/list">홈페이지-list</a><br/>
		<a href="/details/1">홈페이지-details</a><br/>
		<a href="/signUp">홈페이지-signUp</a><br/>
		<a href="/complete">홈페이지-complete</a><br/>
		<a href="/homechooseLogin">홈페이지-homechooseLogin</a><br/>
		<a href="/login">홈페이지-login</a><br/>
		<a href="/emailFind">홈페이지-emailFind</a><br/>
		<a href="/homeEmailFindList">홈페이지-homeEmailFindList</a><br/>
		<a href="/passwordFind">홈페이지-passwordFind</a><br/>
		<a href="/homeResettingPwd">홈페이지-homeResettingPwd</a><br/>
		
		<hr/>
		<a href="/myPage/profile">마이페이지-프로필</a><br/>
		<a href="/myPage/like">마이페이지-like</a><br/>
		<a href="/myPage/bookMark">마이페이지-bookMark</a><br/>
		<a href="/myPage/bookMark/1">마이페이지-bookMark 상세보기</a><br/>
		<a href="/myPage/review">마이페이지-review</a><br/>
		<a href="/myPage/list">마이페이지-커뮤니티 작성글 & 게시글보기</a><br/>
		<hr/>
		<a href="/community">커뮤니티-인덱스</a><br/>
		<a href="/community/chatList">커뮤니티-채팅목록</a><br/>
		<a href="/community/chatRoom">커뮤니티-채팅방</a><br/>
		<hr/>
		<a href="/admin">어드민-인덱스</a><br/>
		<a href="/admin/image">어드민-이미지</a><br/>
		<a href="mypageCommunity/mypageCommunityIndex">마이페이지&커뮤니티-인덱스</a><br/>
</body>
</html>
