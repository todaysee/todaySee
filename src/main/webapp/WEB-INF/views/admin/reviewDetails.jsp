<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>신고관리</title>
  
  <style type="text/css">
  
  
  .communityContent{
  	
  	width: 800px;
  	height: 200px;

  }
  
  </style>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  
  
  	<%@ include file="../inculde/admin/preLoader.jsp"%>

	<!-- Navbar -->
	<%@ include file="../inculde/admin/navbar.jsp"%>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="../inculde/admin/sidebar.jsp"%>
     
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
   
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item" id="clickChart">
            <a href="#" class="nav-link" id="titleChart">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                차트
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               <li class="nav-item">
                <a href="/admin" class="nav-link" id="chart1">
                  <i class="far fa-circle nav-icon"></i>
                  <p>차트1 </p>
                </a>
              </li> 
               <li class="nav-item">
                <a href="/admin/userChart" class="nav-link" id="chart2">
                  <i class="far fa-circle nav-icon"></i>
                  <p>차트2 </p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item">
            <ul class="nav nav-treeview">
            </ul>
          </li>
          <li class="nav-item" id="clickAdmin">
            <a href="#" class="nav-link" id="titleAdmin">
              <i class="nav-icon fas fa-table"></i>
              <p>
                관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/communityReport" class="nav-link" id="admin">
                  <i class="far fa-circle nav-icon"></i>
                  <p>신고관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/movieAdmin" class="nav-link" id="movieAdmin">
                  <i class="far fa-circle nav-icon"></i>
                  <p>영상관리</p>
                </a>
              </li>
              
            </ul>
          </li>
            <li class="nav-item" id="clickUserList">
            <a href="/admin/userList" class="nav-link" id="titleUserList">
              <i class="nav-icon fas fa-table"></i>
              <p>
                회원관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
           
          </li>
        </ul>
      </nav>
       
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>리뷰 신고</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Compose</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
		<form action="/admin/reviewReportWork/${reviewReport.reviewReportNumber}" method="post">
          <input type="submit" class="btn btn-primary btn-block mb-3" value="신고처리" >
          <input type='hidden'	name='_method'	value='put'/>
          </form>
          
<%--             <a href="/admin/communityReportWork/${communityReport.communityReportNumber}" class="btn btn-primary btn-block mb-3">신고처리</a>
 --%>			
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">신고대상</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item active">
                    <a href="#" class="nav-link">
                      <i class="fas fa-inbox"></i> 누적 신고수
                      <span class="badge bg-primary float-right">${count }</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-envelope"></i> E-mail
                      <span class="float-right">${reviewReport.user.userEmail }</span>
                    </a>
                  </li>
                 <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="far fa-file-alt"></i> 이름 
                       <span class="float-right">${reviewReport.user.userName }</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      <i class="fas fa-filter"></i> 신고 날짜
                      <span class="badge bg-warning float-right">${reviewReport.reviewReportDate }</span>
                    </a>
                  </li>
                  
                </ul>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
       <!--      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Labels</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              /.card-header
              <div class="card-body p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-danger"></i> Important</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-warning"></i> Promotions</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="far fa-circle text-primary"></i> Social</a>
                  </li>
                </ul>
              </div>
              /.card-body
            </div> -->
            <!-- /.card -->
          </div>
          <!-- /.col -->
        <div class="col-md-9">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Read Mail</h3>

              <div class="card-tools">
                <a href="#" class="btn btn-tool" title="Previous"><i class="fas fa-chevron-left"></i></a>
                <a href="#" class="btn btn-tool" title="Next"><i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-read-info">
                <h5>${reviewReport.user.userName }</h5>
                <h6>${ reviewReport.user.userEmail}
                  <span class="mailbox-read-time float-right"><%-- ${communityReport.communityDate} --%></span></h6>
              </div>
              <!-- /.mailbox-read-info -->
           
              <!-- /.mailbox-controls -->
              <div class="mailbox-read-message">
                <pre>영상 제목 :	${reviewReport.review.content.contentTitle }</pre>
				 <div class="mailbox-controls with-border text-center">
				 
				 </div>
                <pre class="communityContent">내용 :	 ${reviewReport.review.reviewContent }</pre>
					 <div class="mailbox-controls with-border text-center">
				 
				 </div>
                <div class="mailbox-read-message communityContent">
               <pre>신고 사유 : ${reviewReport.reviewReportContent }</pre>
				 
				 </div>

                
              </div>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.card-body -->
            <div class="card-footer bg-white">
            
            </div>
            
            <!-- /.card-footer -->
           
            <!-- /.card-footer -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/dist/js/demo.js"></script>
<script src="/dist/admin/admin.js"></script>
<script>
const page = document.title;
if('신고관리' == page){
	$('#clickChart').addClass('menu-open')
	$('#clickAdmin').addClass('menu-open')
	$('#titleAdmin').addClass('active')
	$('#admin').addClass('active')

	
}
</script>
</body>
</html>
