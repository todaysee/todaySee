<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
  <link rel="stylesheet" href="style.css">

  <title>회원관리</title>

	<style type="text/css">
	.userListTable{
		cursor:pointer
	
  }
  .detailUser span{
    font-size: 18px;
  }
  .search {
  display: inline-block;
  height: 34px;
  position: relative;
}
.search input {
  width: 36px;
  height: 34px;
  padding: 4px 10px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius: 5px;
  outline: none;
  background: #fff;
  color: #777;
  font-size: 12px;
  transition: width 0.4s;
}
.search input:focus {
  width: 190px;
  border-color: #669900;
}
.search .material-icons {
  height: 24px;
  position: absolute;
  top: 0;
  bottom: 0;
  right: 5px;
  margin: auto;
  transition: 0.4s;
}
.search.focused .material-icons {
  opacity: 0;
}
	
	</style>
  <script>
  
    $(function(){
      $('.userTable').click(function(){
        const userNumber= $(this).text();
        
        let data= {
                userNumber : userNumber
        }
        $.ajax({
          url : '/admin/userList/'+userNumber,
          type : 'GET',
          dataType : 'json',
          contentType: 'application/json',
          success : function(data){
            
            $('.emailUser').text(data.email)
            $('.nickNameUser').text(data.nickName)
            $('.genderUser').text(data.gender)
            $('.loginDateUser').text(data.login_date)
            $('.sangtaeUser').text(data.user_Sangtae)
             
              


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

      $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
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
          <a href="compose.html" class="btn btn-primary btn-block mb-3">Compose</a>
          <form action="">
          <div class="card detailUser">
            <div class="card-header">
              <h3 class="card-title">회원정보</h3>

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
                    <i class="fas fa-inbox"></i> 이메일
                   
                    <span class="badge float-right emailUser"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-envelope"></i> 닉네임
                    <span class="badge float-right nickNameUser"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-file-alt"></i> 성별
                    <span class="badge float-right genderUser"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fas fa-filter"></i> 최근 로그인 날짜
                    <span class="badge float-right loginDateUser"><h5></h5></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-trash-alt"></i> 회원상태
                    <span class="badge float-right sangtaeUser"><h5></h5></span>
                  </a>
                </li>
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
        </form>
          <!-- /.card -->
          <div class="card">
            <div class="card-header">
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
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-md-9" id="userListPyo">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">신고 관리</h3>
                  <span class="badge float-right">
                    <div class="search">
                    <input type="text" id="autoComplete"/>
                    <div class="material-icons"><i class="fas fa-search"></i></div>
                  </div>
                </span>
                 
                </div>
               
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card">
              
           
               <!-- /.card-header -->
               <div class="card-body">
                <table id="ex1" class="table table-bordered table-striped table-hover userListTable">
                  <thead>
                  <tr>
                    <th>번호</th>
                    <th>이메일</th>
                    <th>닉네임</th>
                    <th>성별</th>
                    <th>회원상태</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${userList}" var="test1">
                  <tr >
                    <td class="userTable">${test1.userNumber}</td>
                    <td class="userTable1">${test1.email}</td>
                    <td class="userTable1">${test1.nickName }</td>
                    <td class="userTable1">${test1.gender }</td>
                    <td class="userTable1">1U</td>
                  </tr>
                  </c:forEach>
                  
                  </tbody>
                  
                </table>
              </div>
              <!-- /.card-body -->
              <!-- /.card-body -->
            </div>
          </div>
          <!-- /.card -->
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



</body>
</html>
