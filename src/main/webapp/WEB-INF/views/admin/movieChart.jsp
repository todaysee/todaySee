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
				<!-- Small boxes (Stat box) -->
				<!-- <div class="row">
					<div class="col-lg-3 col-6">
						small box
						<div class="small-box bg-info">
							<div class="inner">
								<h3>150</h3>

								<p>New Orders</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					./col
					<div class="col-lg-3 col-6">
						small box
						<div class="small-box bg-success">
							<div class="inner">
								<h3>53<sup style="font-size: 20px">%</sup></h3>

								<p>Bounce Rate</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					./col
					<div class="col-lg-3 col-6">
						small box
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>44</h3>

								<p>User Registrations</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					./col
					<div class="col-lg-3 col-6">
						small box
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>65</h3>

								<p>Unique Visitors</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					./col
				</div> -->
				<!-- /.row -->
				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					
					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					
					
<!-- 					<iframe id="kibana" src="http://54.180.160.241:5601/app/kibana#/dashboard?embed=true&_g=(refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:14,i:'449316ac-05ed-4078-90a3-cb4fe953017e',w:24,x:0,y:0),id:fa7e7400-d1c0-11ec-aceb-45d965d0d1a3,panelIndex:'449316ac-05ed-4078-90a3-cb4fe953017e',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:14,i:'08789270-6a19-4a9b-8fe1-f7d0b0d305c1',w:23,x:24,y:0),id:'16ad75a0-d19d-11ec-aceb-45d965d0d1a3',panelIndex:'08789270-6a19-4a9b-8fe1-f7d0b0d305c1',type:visualization,version:'7.6.1')),query:(language:kuery,query:''),timeRestore:!f,title:'',viewMode:edit)"  width="100%"></iframe> 
 -->	<!-- 				<iframe id="kibana" src="http://54.180.160.241:5601/app/kibana#/dashboard/5b2929e0-e007-11ec-bec3-8f4cd788db5b?embed=true&_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:6,i:f7f29d56-b249-4f98-bff6-1142171e9225,w:48,x:0,y:0),id:b618c140-e3ee-11ec-bec3-8f4cd788db5b,panelIndex:f7f29d56-b249-4f98-bff6-1142171e9225,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:12,i:ace59349-0498-4ef5-8a6e-e042f0087c92,w:48,x:0,y:6),id:b6115c50-e3f0-11ec-bec3-8f4cd788db5b,panelIndex:ace59349-0498-4ef5-8a6e-e042f0087c92,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:fa83dc78-a959-4328-b198-a97db4276df0,w:23,x:0,y:18),id:a6008720-dbec-11ec-8937-83f872e56e5b,panelIndex:fa83dc78-a959-4328-b198-a97db4276df0,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:acc51ff5-bffa-4216-baa9-a64f738bfd6b,w:25,x:23,y:18),id:ddf48040-e3ef-11ec-bec3-8f4cd788db5b,panelIndex:acc51ff5-bffa-4216-baa9-a64f738bfd6b,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',w:23,x:0,y:33),id:'09043fe0-e49b-11ec-bec3-8f4cd788db5b',panelIndex:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'4ce469c7-0f44-4c92-939a-db9679fa4bb0',w:24,x:23,y:33),id:'16ad75a0-d19d-11ec-aceb-45d965d0d1a3',panelIndex:'4ce469c7-0f44-4c92-939a-db9679fa4bb0',type:visualization,version:'7.6.1')),query:(language:kuery,query:''),timeRestore:!f,title:'1try_dashboard',viewMode:view)"  width="100%"></iframe>
 --><!-- 						<iframe id="kibana" src="http://54.180.160.241:5601/app/kibana#/dashboard/5b2929e0-e007-11ec-bec3-8f4cd788db5b?embed=true&_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:6,i:f7f29d56-b249-4f98-bff6-1142171e9225,w:48,x:0,y:0),id:b618c140-e3ee-11ec-bec3-8f4cd788db5b,panelIndex:f7f29d56-b249-4f98-bff6-1142171e9225,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:12,i:ace59349-0498-4ef5-8a6e-e042f0087c92,w:48,x:0,y:6),id:b6115c50-e3f0-11ec-bec3-8f4cd788db5b,panelIndex:ace59349-0498-4ef5-8a6e-e042f0087c92,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:fa83dc78-a959-4328-b198-a97db4276df0,w:23,x:0,y:18),id:a6008720-dbec-11ec-8937-83f872e56e5b,panelIndex:fa83dc78-a959-4328-b198-a97db4276df0,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:acc51ff5-bffa-4216-baa9-a64f738bfd6b,w:25,x:23,y:18),id:ddf48040-e3ef-11ec-bec3-8f4cd788db5b,panelIndex:acc51ff5-bffa-4216-baa9-a64f738bfd6b,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',w:23,x:0,y:33),id:'09043fe0-e49b-11ec-bec3-8f4cd788db5b',panelIndex:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'4ce469c7-0f44-4c92-939a-db9679fa4bb0',w:25,x:23,y:33),id:'16ad75a0-d19d-11ec-aceb-45d965d0d1a3',panelIndex:'4ce469c7-0f44-4c92-939a-db9679fa4bb0',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:6,i:'8e2ed503-befd-45b5-88e2-23a5f465396e',w:23,x:0,y:48),id:'6830d970-e4b8-11ec-bec3-8f4cd788db5b',panelIndex:'8e2ed503-befd-45b5-88e2-23a5f465396e',type:visualization,version:'7.6.1'),(embeddableConfig:(title:'%ED%9A%8C%EC%9B%90%20%EB%82%A8%EC%84%B1%26%EC%97%AC%EC%84%B1%20%EB%AA%85%EC%88%98'),gridData:(h:6,i:'7aff53cc-6341-437f-9025-612b4cbf1c01',w:25,x:23,y:48),id:'3293dfb0-e4b8-11ec-bec3-8f4cd788db5b',panelIndex:'7aff53cc-6341-437f-9025-612b4cbf1c01',title:'%ED%9A%8C%EC%9B%90%20%EB%82%A8%EC%84%B1%26%EC%97%AC%EC%84%B1%20%EB%AA%85%EC%88%98',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:21,i:cebfb373-ab81-4e10-9946-87eeba3f8907,w:48,x:0,y:54),id:'84a7d300-e4b4-11ec-bec3-8f4cd788db5b',panelIndex:cebfb373-ab81-4e10-9946-87eeba3f8907,type:visualization,version:'7.6.1')),query:(language:kuery,query:''),timeRestore:!f,title:'1try_dashboard',viewMode:view)" width="100%"></iframe>
 -->							<iframe id="kibana" src="http://54.180.160.241:5601/app/kibana#/dashboard/5b2929e0-e007-11ec-bec3-8f4cd788db5b?embed=true&_g=(refreshInterval:(pause:!t,value:0),time:(from:now-15m,to:now))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:!f,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:6,i:f7f29d56-b249-4f98-bff6-1142171e9225,w:48,x:0,y:0),id:b618c140-e3ee-11ec-bec3-8f4cd788db5b,panelIndex:f7f29d56-b249-4f98-bff6-1142171e9225,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:12,i:ace59349-0498-4ef5-8a6e-e042f0087c92,w:48,x:0,y:6),id:b6115c50-e3f0-11ec-bec3-8f4cd788db5b,panelIndex:ace59349-0498-4ef5-8a6e-e042f0087c92,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:fa83dc78-a959-4328-b198-a97db4276df0,w:23,x:0,y:18),id:a6008720-dbec-11ec-8937-83f872e56e5b,panelIndex:fa83dc78-a959-4328-b198-a97db4276df0,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:acc51ff5-bffa-4216-baa9-a64f738bfd6b,w:25,x:23,y:18),id:ddf48040-e3ef-11ec-bec3-8f4cd788db5b,panelIndex:acc51ff5-bffa-4216-baa9-a64f738bfd6b,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',w:23,x:0,y:33),id:'09043fe0-e49b-11ec-bec3-8f4cd788db5b',panelIndex:'27bbcd67-c501-4bc2-b2b6-b5ce24bed210',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:15,i:b01bd848-b97a-4272-92d3-0400d75844bc,w:25,x:23,y:33),id:'2f57c200-e62d-11ec-bec3-8f4cd788db5b',panelIndex:b01bd848-b97a-4272-92d3-0400d75844bc,type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:6,i:'8e2ed503-befd-45b5-88e2-23a5f465396e',w:23,x:0,y:48),id:'6830d970-e4b8-11ec-bec3-8f4cd788db5b',panelIndex:'8e2ed503-befd-45b5-88e2-23a5f465396e',type:visualization,version:'7.6.1'),(embeddableConfig:(title:'%ED%9A%8C%EC%9B%90%20%EB%82%A8%EC%84%B1%26%EC%97%AC%EC%84%B1%20%EB%AA%85%EC%88%98'),gridData:(h:6,i:'7aff53cc-6341-437f-9025-612b4cbf1c01',w:25,x:23,y:48),id:'3293dfb0-e4b8-11ec-bec3-8f4cd788db5b',panelIndex:'7aff53cc-6341-437f-9025-612b4cbf1c01',title:'%ED%9A%8C%EC%9B%90%20%EB%82%A8%EC%84%B1%26%EC%97%AC%EC%84%B1%20%EB%AA%85%EC%88%98',type:visualization,version:'7.6.1'),(embeddableConfig:(),gridData:(h:21,i:cebfb373-ab81-4e10-9946-87eeba3f8907,w:48,x:0,y:54),id:'84a7d300-e4b4-11ec-bec3-8f4cd788db5b',panelIndex:cebfb373-ab81-4e10-9946-87eeba3f8907,type:visualization,version:'7.6.1')),query:(language:kuery,query:''),timeRestore:!f,title:'1try_dashboard',viewMode:view)" width="100%"></iframe>
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


