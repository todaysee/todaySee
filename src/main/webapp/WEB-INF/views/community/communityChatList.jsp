<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Zust - Social Community & Marketplace HTML Template</title>

	<!-- Favicon -->
	<link rel="icon" type="image/png" href="/images/mypageCommunity/favicon.png">
	<!-- CSS files -->
	<link rel="stylesheet" href="/css/mypageCommunity.css">
	<link rel="stylesheet" href="/css/mypageCommunity/chatList.css">
	<!-- js files -->
	<script src = "/js/mypageCommunity/chatList.js"></script>
</head>

<body>

<!--=========== Loader =============-->
<%@ include file="../inculde/community/preLoader.jsp"%>
<!--=========== Loader =============-->

<!--========== Body ==============-->
<div class="main-content-wrapper d-flex flex-column">
	<!--========== Header Navbar ==============-->
	<%@ include file="../inculde/community/navbar.jsp"%>
	<!--========== Header Navbar ==============-->
	<!--========== SideBar ==============-->
	<%@ include file="../inculde/community/sideMenu.jsp"%>
	<!--========== SideBar ==============-->

	<!--========== Body ==============-->
	<div class="content-page-box-area">
	<h1>채팅 리스트</h1>
<div class='chat'>
  <div class='body'>
    <div class='search'>
      <input placeholder='Search...' type='text'>
    </div>
    <ul>
      <li>
        <a class='thumbnail' href='#'>
          NR
        </a>
        <div class='content'>
          <h3>Nick Roach</h3>
          <span class='preview'>hey how are things going on the...</span>
          <span class='meta'>
            2h ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
      <li>
        <a class='thumbnail' href='#'>
          KS
        </a>
        <div class='content'>
          <h3>Kenny Sing</h3>
          <span class='preview'>make sure you take a look at the...</span>
          <span class='meta'>
            3h ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
      <li>
        <a class='thumbnail' href='#'>
          MS
        </a>
        <div class='content'>
          <h3>Mitch Skolnik</h3>
          <span class='preview'>i love wood grain things!</span>
          <span class='meta'>
            6h ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
      <li>
        <a class='thumbnail' href='#'>
          YP
        </a>
        <div class='content'>
          <h3>Yuriy Portnykh</h3>
          <span class='preview'>check issues for the latest version...</span>
          <span class='meta'>
            10h ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
      <li>
        <a class='thumbnail' href='#'>
          JR
        </a>
        <div class='content'>
          <h3>Josh Ronk</h3>
          <span class='preview'>make sure to do the following by...</span>
          <span class='meta'>
            2d ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
      <li>
        <a class='thumbnail' href='#'>
          BM
        </a>
        <div class='content'>
          <h3>Benjamin Mueller</h3>
          <span class='preview'>Hi nice to meet you!</span>
          <span class='meta'>
            1w ago &middot;
            <a href='#'>Category</a>
            &middot;
            <a href='#'>Reply</a>
          </span>
        </div>
      </li>
    </ul>
    <div>
    <input type="text" class="form-control" placeholder="채팅방 이름">
    <button  class="send-btn.d-inline-block">생성</button>
    </div>
  </div>
</div>
	
	
	</div>
	<!--========== Body ==============-->

	<!--========== Right SideBar ==============-->
	<%@ include file="../inculde/community/rightSidebar.jsp"%>
	<!--========== Right SideBar ==============-->

</div>
<!--========== Body ==============-->

<!--========== Footer ==============-->
<%@ include file="../inculde/community/footer.jsp"%>
<!--========== Footer ==============-->

<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/bootstrap.bundle.min.js"></script>
<script src="/js/mypageCommunity/jquery.magnific-popup.min.js"></script>
<script src="/js/mypageCommunity/jquery-ui.min.js"></script>
<script src="/js/mypageCommunity/simplebar.min.js"></script>
<script src="/js/mypageCommunity/metismenu.min.js"></script>
<script src="/js/mypageCommunity/owl.carousel.min.js"></script>
<script src="/js/mypageCommunity/wow.min.js"></script>
<script src="/js/mypageCommunity/main.js"></script>
</body>
</html>