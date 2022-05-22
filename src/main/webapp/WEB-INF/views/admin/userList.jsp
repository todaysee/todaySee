<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
  <link rel="stylesheet" href="style.css">

<style>
  #example1_filter{
    float: right !important;
  }

  	
	#example1{
		cursor:pointer
	
  }
  .detailUser span{
    font-size: 18px;
  }
</style>




  <title>회원관리</title>

	
  <script>
  
    $(function(){
      $('.userTable').click(function(){
        //const userNumber= $(this).text();
        const userNumber= $(this).attr('abc')
        
        let data= {
                userNumber : userNumber
        }
        $.ajax({
          url : '/admin/userList/'+userNumber,
          type : 'GET',
          dataType : 'json',
          contentType: 'application/json',
          success : function(data){
            $('.userNumber').text(data.user_number)
            $('.userName').text(data.user_name)
            $('.userEmail').text(data.user_email)
            $('.userTel').text(data.user_tel)
            $('.userNickname').text(data.user_nickname)
            $('.userGender').text(data.user_gender)
            $('.userloginDate').text(data.user_login_date)
            $('.userSignupDate').text(data.user_signup_date)
            $('.user_state').text(data.user_state)
            
             
            
              


          },
          error: function(e){ 
            alert('에러발생')
            console.log(e)
          }
        })

      })
      
      const searchEl = document.querySelector('.search')
      const searchInputEl = searchEl.querySelector('input')

      searchEl.addEventListener('click',function(){
        searchInputEl.focus();
      })

      searchInputEl.addEventListener('focus', function(){
        searchEl.classList.add('focused')
        searchInputEl.setAttribute('placeholder','통합검색')
      })

      searchInputEl.addEventListener('blur', function(){
        searchEl.classList.remove('focused')
        searchInputEl.setAttribute('placeholder','')
      })

      $(document).ready(function () {
    $('#example').DataTable();
});
   



    })

        
  </script>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/dist/css/adminlte.min.css">

  <!-- 추가 -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body class="hold-transition sidebar-mini">

<div class="wrapper">

<%@ include file="../inculde/admin/preLoader.jsp"%>

	<!-- Navbar -->
	<%@ include file="../inculde/admin/navbar.jsp"%>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="../inculde/admin/sidebar.jsp"%>
	

  <!-- Navbar -->
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>회원관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admin">Home</a></li>
             
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3" id="userDetail">
          <!-- <a href="compose.html" class="btn btn-primary btn-block mb-3">Compose</a> -->
          <form action="">
          <div class="card detailUser">
            <div class="card-header">
              <h3 class="card-title"><i class="fa fa-user-circle" aria-hidden="true"></i> 회원정보</h3>

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
                    <i class="fa fa-address-card" aria-hidden="true"></i> 회원번호
                   
                    <span class="badge float-right userNumber"><h5></h5></span>
                  </a>
                </li>


                <li class="nav-item active">
                  <a href="#" class="nav-link">
                    <i class="fa fa-address-book" aria-hidden="true"></i> 이름
                   
                    <span class="badge float-right userName"><h5></h5></span>
                  </a>
                </li>


                <li class="nav-item active">
                  <a href="#" class="nav-link">
                    <i class="fa fa-envelope-open" aria-hidden="true"></i> 이메일
                   
                    <span class="badge float-right userEmail"><h5></h5></span>
                  </a>
                </li>

                <li class="nav-item active">
                  <a href="#" class="nav-link">
                    <i class="fa fa-phone" aria-hidden="true"></i> 전화번호
                   
                    <span class="badge float-right userTel"><h5></h5></span>
                  </a>
                </li>



                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fa fa-user" aria-hidden="true"></i> 닉네임
                    <span class="badge float-right userNickname"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fa fa-venus-mars" aria-hidden="true"></i> 성별
                    <span class="badge float-right userGender"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fa fa-list-alt" aria-hidden="true"></i> 최근 로그인 날짜
                    <span class="badge float-right userloginDate"><h5></h5></span>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="#" class="nav-link">
                   <i class="fa fa-list-alt" aria-hidden="true"></i> 회원가입 날짜
                    <span class="badge float-right userSignupDate"><h5></h5></span>
                  </a>
                </li>

              <!--   <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fa fa-check-square-o" aria-hidden="true"></i> 회원상태
                    <span class="badge float-right userState"><h5></h5></span>
                  </a>
                </li> -->


                
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
        </form>
          <!-- /.card -->
          <div class="card">
            <!-- <div class="card-header">
              <h3 class="card-title">신고 대상</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-danger"></i>
                    신고 번호
                    <span class="badge float-right"><h5>$회원아이디</h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-warning"></i> 신고 번호
                    <span class="badge float-right"><h5>$회원아이디</h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-primary"></i>
                    신고 번호
                    <span class="badge float-right"><h5>$회원아이디</h5></span>
                  </a>
                </li>
              </ul>
            </div> -->
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->

        <div class="card col-md-9" id="jqpluginMom2">
              
           
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped table-hover">
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
                <c:forEach items="${userList}" var="test1">
                  <tr class="userTable" abc="${test1.user_number}">
                    <td class="userTable2">${test1.user_number}</td>
                    <td class="userTable1">${test1.user_email}</td>
                    <td class="userTable1">${test1.user_nickname }</td>
                    <td class="userTable1">${test1.user_gender }</td>
                    <td class="userTable1">${test1.user_state }</td>
                    <td><button class="btn btn-outline-danger">삭제</button></td>
                  </tr>
                  </c:forEach>
              
              </tbody>
            </table>
          </div>
      </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
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
<!-- Page specific script -->



<!-- 추가 -->
<script src="/dist/admin/admin.js"></script>
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



<script>  

  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false, "destroy":true,
      /* "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"] */
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example1').DataTable({
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
