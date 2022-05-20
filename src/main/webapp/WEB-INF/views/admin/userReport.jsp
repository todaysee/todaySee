<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <title>유저 신고관리</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">


</head>

      <style>
        ul{
          list-style: none;
          margin: 0px;
          padding: 0px;
        }
        li{
          margin: 0px;
          margin-right: 20px;
          padding: 0px;
          float: left;
          cursor: pointer;
        }
      </style>

      <script type="text/javascript">

        


            $(function ($) {
            	$('#tab-content2').hide()
                $('#tab-content3').hide() 	
            	
            	
        $(".tab-content").eq(0).show(0);
        $(".tab-ul li").click(function () {
          var idx = $(this).index();
          $(".tab-content").hide();
          $(".tab-content").eq(idx).show();
          $(".tab-ul li").removeClass("active");
          $(this).addClass("active");
        });
      });
    </script>
    
    

<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Preloader 페이지 실행전에 나오는 페이지-->
	<%@ include file="../inculde/admin/preLoader.jsp"%>

	<!-- Navbar -->
	<%@ include file="../inculde/admin/navbar.jsp"%>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="../inculde/admin/sidebar.jsp"%>

  <!-- Navbar -->
  
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  

  <!-- Content Wrapper. Contains page content -->

  
  <div class="content-wrapper">
    
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        
        <div class="row mb-2">
          <div>
            
          </div>
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <ul class="tab-ul">
                  
                  <li class="active">리뷰&댓글 신고</li>
                  <li>게시글 신고</li>
               </ul>
              </div>




              




          <div class="tab-content" id="tab-content2">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">리뷰 댓글 관리</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body" >
                <table id="example2" class="table table-bordered table-striped jqplugin">
                  <thead>
                  <tr>
                    <th>2</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                    <th>신고처리</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <tr>
                    <td>2</td>
                    <td>All others</td>
                    <td>-</td>
                    <td>-</td>
                    <td>U</td>
                    <th><button class="btn btn-outline-danger">신고처리</button></th>
                  </tr>
                  </tbody>
                  
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->





          <div class="tab-content" id="tab-content3">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">게시글신고 관리</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example3" class="table table-bordered table-striped jqplugin">
                  <thead>
                  <tr>
                    <th> 3</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                    <th>신고처리</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <tr>
                    <td>3</td>
                    <td>All others</td>
                    <td>-</td>
                    <td>-</td>
                    <td>U</td>
                    <th><button class="btn btn-outline-danger">신고처리</button></th>
                  </tr>
                  </tbody>
                  
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->

          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</div>



    
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <!-- <b>Version</b> 3.2.0 -->
    </div>
    <!-- <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved. -->
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
<!-- DataTables  & Plugins -->
<script src="/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/plugins/jszip/jszip.min.js"></script>
<script src="/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/dist/js/demo.js"></script>
<!-- Page specific script -->

<script src="/dist/admin/admin.js"></script>

<script src="/dist/admin/choi_admin.js"></script>
<script>  
  $(function () {
    $("#jqpluginMom.jqplugin").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false, "destroy":true,
      /* "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"] */
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#jqpluginMom.jqplugin').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "destroy":true,
    }); 
  });



</script>
</body>
</html>
