<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <title>영상 관리</title>

<style>
  .modal.fade .modal-dialog {
  -webkit-transition: -webkit-transform 0.3s ease-out;
     -moz-transition: -moz-transform 0.3s ease-out;
       -o-transition: -o-transform 0.3s ease-out;
          transition: transform 0.3s ease-out;
}




</style>

<script >



</script>



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
          <div class="col-sm-6">
            <h1>DataTables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin">Home</a></li>
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
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div>

              
             

            <div class="card">
              <div class="card-header">
               
                <div class="row">
                  <div class="col-md-1 ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                      영상 추가
                    </button>
                  </div>
                </div>
                <h3 class="card-title">DataTable with default features</h3>
                
              <div class="col-md-10">
                <!-- Button trigger modal -->
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">영화 정보 입력</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container-fluid">
                  <form>
                   
                    <div class="form-group row">
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" class="form-label" >제목</label>
                        <input type="text" class="form-control form-control-sm " id="colFormLabelSm1" placeholder="제목">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >연령 등급</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm2" placeholder="연령대">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >재생시간</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm3" placeholder="시간 분">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >등록년도</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm4" placeholder="년도 ex => 2022">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm">내용</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm5" placeholder="줄거리">
                      </div>
                    </div>
                    <!-- <div class="form-group row">
                      <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">&nbsp;&nbsp;등록날짜인데 hidden처리</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control form-control-sm" id="colFormLabelSm6" placeholder="col-form-label-sm">
                      </div>
                    </div> -->
                    <input type="hidden" name="등록날짜 now처리하기">
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >감독</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm7" placeholder="감독명">
                      </div>
                    </div>
                    <div class="form-group row">
                    
                      <div class="container col-md-12">
                        <label for="colFormLabelSm">유뷰트 영상링크</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm8" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >포스터 링크</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm9" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >메인 링크</label>
                        <input type="text" class="form-control form-control-sm" id="colFormLabelSm10" placeholder="">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary">저장</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- modal -->

          <div id="link">My video</div>
          <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    </div>
                    <div class="modal-body">
                        <iframe width="400" height="300" frameborder="0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
          <!-- modal end -->
          




              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                    <th>CSS grade</th>
                    <th>삭제</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Trident</td>
                    <td>Internet
                      Explorer 4.0
                    </td>
                    <td>Win 95+</td>
                    <td> 4</td>
                    <td>X</td>
                    <td><button class="btn btn-outline-danger" >삭제</button></td>
                  </tr>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
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

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      /* "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"] */
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });

    $('#link').click(function () {
        var src = 'https://www.youtube.com/embed/MD-ZeF8zyes?autohide=1&autoplay=0&iv_load_policy=3&modestbranding=1&rel=0&showinfo=0&enablejsapi=1&origin=https%3A%2F%2Fwww.justwatch.com&widgetid=1';
        $('#myModal').modal('show');
        $('#myModal iframe').attr('src', src);
    });

    $('#myModal button').click(function () {
        $('#myModal iframe').removeAttr('src');
    });

  });
</script>
</body>
</html>
