<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script type="text/javascript">
	$(function(){

		$('.titleReport').removeClass('active')
		$('.titleChart').addClass('active')
		 $('.report2').removeClass('active')
		 $('.chart1').addClass('active')
		$('.clickReport').removeClass('menu-open')
		$('.clickChart').addClass('menu-open')

	})


</script>
	<title>관리자 고객차트</title>

	<!-- adminPlugins.css-->
	<link rel="stylesheet" href="/plugins/adminPlugins.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/dist/css/adminlte.min.css">
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
				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
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
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
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
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
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
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
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
					<!-- ./col -->
				</div>
				<!-- /.row -->
				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					
					
					
					
					
					
					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					<section class="col-lg-5 connectedSortable">

						<!-- Map card -->
						<div class="card bg-gradient-primary">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-map-marker-alt mr-1"></i>
									Visitors
								</h3>
								<!-- card tools -->
								<div class="card-tools">
									<button type="button" class="btn btn-primary btn-sm daterange" title="Date range">
										<i class="far fa-calendar-alt"></i>
									</button>
									<button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse" title="Collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
								<!-- /.card-tools -->
							</div>
							<div class="card-body">
								<div id="world-map" style="height: 250px; width: 100%;"></div>
							</div>
							<!-- /.card-body-->
							<div class="card-footer bg-transparent">
								<div class="row">
									<div class="col-4 text-center">
										<div id="sparkline-1"></div>
										<div class="text-white">Visitors</div>
									</div>
									<!-- ./col -->
									<div class="col-4 text-center">
										<div id="sparkline-2"></div>
										<div class="text-white">Online</div>
									</div>
									<!-- ./col -->
									<div class="col-4 text-center">
										<div id="sparkline-3"></div>
										<div class="text-white">Sales</div>
									</div>
									<!-- ./col -->
								</div>
								<!-- /.row -->
							</div>
						</div>
						<!-- /.card -->

						<!-- solid sales graph -->
						<div class="card bg-gradient-info">
							<div class="card-header border-0">
								<h3 class="card-title">
									<i class="fas fa-th mr-1"></i>
									Sales Graph
								</h3>

								<div class="card-tools">
									<button type="button" class="btn bg-info btn-sm" data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn bg-info btn-sm" data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<div class="card-body">
								<canvas class="chart" id="line-chart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
							</div>
							<!-- /.card-body -->
							<div class="card-footer bg-transparent">
								<div class="row">
									<div class="col-4 text-center">
										<input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60"
											   data-fgColor="#39CCCC">

										<div class="text-white">Mail-Orders</div>
									</div>
									<!-- ./col -->
									<div class="col-4 text-center">
										<input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60"
											   data-fgColor="#39CCCC">

										<div class="text-white">Online</div>
									</div>
									<!-- ./col -->
									<div class="col-4 text-center">
										<input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60"
											   data-fgColor="#39CCCC">

										<div class="text-white">In-Store</div>
									</div>
									<!-- ./col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->

						<!-- Calendar -->
						<div class="card bg-gradient-success">
							<div class="card-header border-0">

								<h3 class="card-title">
									<i class="far fa-calendar-alt"></i>
									Calendar
								</h3>
								<!-- tools card -->
								<div class="card-tools">
									<!-- button with a dropdown -->
									<div class="btn-group">
										<button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
											<i class="fas fa-bars"></i>
										</button>
										<div class="dropdown-menu" role="menu">
											<a href="#" class="dropdown-item">Add new event</a>
											<a href="#" class="dropdown-item">Clear events</a>
											<div class="dropdown-divider"></div>
											<a href="#" class="dropdown-item">View calendar</a>
										</div>
									</div>
									<button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
								<!-- /. tools -->
							</div>
							<!-- /.card-header -->
							<div class="card-body pt-0">
								<!--The calendar -->
								<div id="calendar" style="width: 100%"></div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>
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


