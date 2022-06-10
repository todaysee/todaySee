<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<!-- <script type="text/javascript">
	$(function(){

		$('.titleReport').removeClass('active')
		$('.titleChart').addClass('active')
		 $('.report2').removeClass('active')
		 $('.chart1').addClass('active')
		$('.clickReport').removeClass('menu-open')
		$('.clickChart').addClass('menu-open')

	})
 -->

<style>
	#kibana{
		height: 100vw;
	}
</style>

	<title>관리자 영화차트</title>

	<!-- adminPlugins.css-->
	<link rel="stylesheet" href="/plugins/adminPlugins.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/dist/css/adminlte.min.css">
	  <link rel="stylesheet" type="text/css" href="/dist/css/choi-nav.css">
	
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

	<!-- Preloader 페이지 실행전에 나오는 페이지-->
	<%@ include file="../inculde/admin/preLoader.jsp"%>

	<!-- Navbar -->
	<%@ include file="../inculde/admin/navbar.jsp"%>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="../inculde/admin/sidebar.jsp"%>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">차트</h1>
					</div><!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">Dashboard v1</li>
						</ol>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				
				<div class="row">
					<!-- Left col -->
					
					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					
					<iframe id="kibana" src="http://13.209.12.94:5601/app/kibana#/dashboard/c52232e0-e860-11ec-9d00-d7db4a1a5e7e?embed=true&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:7,i:c7d304fa-17d4-49a8-803c-6daa84c8f1ee,w:48,x:0,y:0),id:fafd4bb0-e7df-11ec-b599-4180fd6b52c0,panelIndex:c7d304fa-17d4-49a8-803c-6daa84c8f1ee,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'38b9b5dd-11c4-4953-8081-f444a55e32da',w:48,x:0,y:7),id:'0e11fb00-e7e1-11ec-b599-4180fd6b52c0',panelIndex:'38b9b5dd-11c4-4953-8081-f444a55e32da',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'4d63f0ec-bc52-4009-9e2a-c1c510ceea83',w:24,x:0,y:22),id:'6acd3020-e7e2-11ec-b599-4180fd6b52c0',panelIndex:'4d63f0ec-bc52-4009-9e2a-c1c510ceea83',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'09281e56-de63-4d90-9215-3fb3a13d0e6f',w:24,x:24,y:22),id:'4f949c40-e7e1-11ec-b599-4180fd6b52c0',panelIndex:'09281e56-de63-4d90-9215-3fb3a13d0e6f',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:c4d2e0a5-4e0b-499a-9f78-c5d2c3fccd78,w:24,x:0,y:37),id:c611e750-e7e2-11ec-b599-4180fd6b52c0,panelIndex:c4d2e0a5-4e0b-499a-9f78-c5d2c3fccd78,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:bdad8aa2-13fe-4e29-af7c-3307b628ec1f,w:24,x:24,y:37),id:'32d6a0e0-e7e0-11ec-b599-4180fd6b52c0',panelIndex:bdad8aa2-13fe-4e29-af7c-3307b628ec1f,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:6,i:ec7f0ca7-edec-4225-a4e7-832743edd21b,w:24,x:0,y:52),id:'69c1dd60-e860-11ec-9d00-d7db4a1a5e7e',panelIndex:ec7f0ca7-edec-4225-a4e7-832743edd21b,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:6,i:'62ed6b08-ffb1-4d9c-a937-e77822f2cea9',w:24,x:24,y:52),id:'329a24f0-e860-11ec-9d00-d7db4a1a5e7e',panelIndex:'62ed6b08-ffb1-4d9c-a937-e77822f2cea9',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:18,i:b80b6ec1-ad34-44af-af1e-e26f8118b665,w:48,x:0,y:58),id:d6d58f60-e85f-11ec-9d00-d7db4a1a5e7e,panelIndex:b80b6ec1-ad34-44af-af1e-e26f8118b665,type:visualization,version:'7.6.1')),query:(language:kuery,query:''),timeRestore:!f,title:'don%60t%20drop%20me',viewMode:view)&_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))" width="100%"></iframe>
 
 
					<!-- right col -->
				</div>
				<!-- /.row (main row) -->
			</div><!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<%@ include file="../inculde/admin/footer.jsp"%>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/plugins/moment/moment.min.js"></script>
<script src="/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/dist/js/pages/dashboard.js"></script>

<script src="/dist/admin/admin.js"></script>

</body>
</html>


