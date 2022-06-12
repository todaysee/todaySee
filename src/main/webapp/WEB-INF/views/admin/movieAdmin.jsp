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

  textarea {
    width: 100%;
    height: 6.25em;
    border: none;
    resize: none;
  }
	
	.updateValue{
	 text-align: right;
	 border:0 solid black
	}
	
	#titleMovieModal{
		width: 350px;
	}
	.contentNumber2, .contentNumber3:hover{
		cursor: pointer;	
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
    <link rel="stylesheet" type="text/css" href="/dist/css/choi-nav.css">
  
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
           <!--  <h1>영상정보</h1> -->
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
                <h3 class="card-title">영상정보</h3>
              </div>

              
             

            <div class="card">
              <div class="card-header">
               
                <div class="row">
                  <div class="col-md-1 ml-auto">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                      <i class="fa fa-film" aria-hidden="true"></i>영상 추가
                    </button>
                  </div>
                </div>
                <!-- <h3 class="card-title">DataTable with default features</h3> -->
                
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
                  <form id="movieAdd" action="/movieAdd" method="post" >
                   
                    <div class="form-group row">
                    
                    
                      <div class="container col-md-6">
                        <label for="colFormLabelSm" class="form-label" >제목</label>
                        <input type="text" class="form-control " id="colFormLabelSm1" name="contentTitle" placeholder="제목">
                      </div>
                      
                       <div class="container col-md-6">
                        <label for="colFormLabelSm" >재생시간</label>
                        <input type="text" class="form-control " id="colFormLabelSm3" name="contentRunningTime" placeholder="시간 분">
                      </div>
                    </div>
                    
                    
                    <div class="form-group row">
                      <div class="container col-md-6">
                        <label for="colFormLabelSm" >연령 등급</label>
                        <input type="text" class="form-control " id="colFormLabelSm2" name="contentAge" placeholder="연령대">
                      </div>
                       <div class="container col-md-6">
                        <label for="colFormLabelSm" >등록년도</label>
                        <input type="text" class="form-control " id="colFormLabelSm4" name="contentReleaseDate" placeholder="년도 ex => 2022">
                      </div>
                    </div>
               
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm">내용</label>
                        <input type="text" class="form-control " id="colFormLabelSm5" name="contentInfo" placeholder="줄거리">
                      </div>
                    </div>
               
                    <input type="hidden" name="contentImportDate">
                   
                    <div class="form-group row">
                    
                      <div class="container col-md-12">
                        <label for="colFormLabelSm">유뷰트 영상링크</label>
                        <input type="text" class="form-control " id="colFormLabelSm8" name="contentYoutubeUrl" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >포스터 링크</label>
                        <input type="text" class="form-control " id="colFormLabelSm9" name="contentPosterImagesUrl" placeholder="">
                      </div>
                    </div>
                    <div class="form-group row">
                     
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >메인 사진 링크</label>
                        <input type="text" class="form-control " id="colFormLabelSm10" name="contentMainImagesUrl"  placeholder="">
                      </div>
                    </div>
                     <div class="form-group row">
                      <div class="container col-md-12">
                        <label for="colFormLabelSm" >플랫폼 링크</label>
                        <input type="text" class="form-control " id="colFormLabelSm11" name="contentottLink"  placeholder="">
                      </div>
                    </div>
                    
                  		
					  	<legend>장르</legend>
					    <label><input type="checkbox" name="genre1" value="1">드라마</label>
						<label><input type="checkbox" name="genre1" value="2">로맨스</label>
						<label><input type="checkbox" name="genre1" value="3">스릴러</label>
						<label><input type="checkbox" name="genre1" value="4">SF</label>
						<label><input type="checkbox" name="genre1" value="5">가족</label>
						<label><input type="checkbox" name="genre1" value="6">공포</label>
						<label><input type="checkbox" name="genre1" value="7">다큐</label>
						<label><input type="checkbox" name="genre1" value="8">범죄</label>
						<label><input type="checkbox" name="genre1" value="9">스포츠</label>
						<label><input type="checkbox" name="genre1" value="10">애니</label>
						<label><input type="checkbox" name="genre1" value="11">예능</label>
						<label><input type="checkbox" name="genre1" value="12">액션</label>
						<label><input type="checkbox" name="genre1" value="13">역사</label>
						<label><input type="checkbox" name="genre1" value="14">음악</label>
						<label><input type="checkbox" name="genre1" value="15">전쟁</label>
						<label><input type="checkbox" name="genre1" value="16">코미디</label>
						<label><input type="checkbox" name="genre1" value="17">판타지</label>
						
						<legend>플랫폼</legend>
               			<label><input type="checkbox" name="ott1" value="1"> Netfilx</label>
               			<label><input type="checkbox" name="ott1" value="2"> Disney Plus</label>
                    	<label><input type="checkbox" name="ott1" value="3"> Apple TV Plus</label>
                    	<label><input type="checkbox" name="ott1" value="4"> wavve</label>
                    	<label><input type="checkbox" name="ott1" value="5"> Watcha</label>
                    
                    
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    <button type="submit"  class="btn btn-primary">저장</button>
             		     </div>
             	     </form>
             	     	
             	     
             	     
             	   </div>
             	 </div>
                </div>
              </div>
            </div>
          </div>

          <!-- modal -->
          

         <!--  <div id="link">My video</div> -->
          <div id="myModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <form method="post" id="frmBtn" >
                    <div class="modal-header">
                       
                      <!--  <h5><span id="titleMovieModal" class="badge float-right contentTitle"></span></h5> -->
                       <h5><input id="titleMovieModal" class="float-right updateValue contentTitle" name="contentTitle"/></h5>
                      
                       <input type='hidden'	name='_method'	value='put'/>
                       <input type='hidden' name= 'contentNumber' id="deleteContentNumber">
                      <ul class="nav nav-pills">
                        <li class="nav-item">
                          <label class="nav-link active contentDetailsAdmin">영상정보</label>
                        </li>
                        <li class="nav-item">
                           <label class="nav-link contentNumber3">수정</label>
                        </li>
                        <li class="nav-item">
                           <label class="nav-link contentNumber2">삭제</label>
                        </li>
                         
                      </ul>
                      
                    </div>

                    <div class="modal-body">
                      <div class="container-fluid">

                        <div class="row">
                          <div class="col-md-6">
                            
                            <div class="col-12" id="contentImages">
                              
                              <img alt="" width="350" height="300" >
                              
                            </div>
                          </div>


                          <div class="col-md-6">
                         
                            <ul class="nav nav-pills flex-column">
                              <li class="nav-item active">
                                   <h5>
                                 <i class="fa fa-address-card" aria-hidden="true"></i> 영상번호 : 
                                  <span id="idCard" class="badge float-right contentNumber"></span></h5>
                                  
                              </li>
                               
      <!--   <span id="idCard2" class="badge float-right userName contentInfo"></span> -->
                              <li class="nav-item active">
                                   <h5><i class="fa fa-address-book" aria-hidden="true"></i> 줄거리 
                                 <textarea id="idCard2"  class="badge float-right contentInfo" name="contentInfo"></textarea></h5>
								
                              </li>
              
              <!-- <span id="idCard3" class="badge float-right contentAge"></span> -->
                              <li class="nav-item active">
                                   <h5><i class="fa fa-envelope-open" aria-hidden="true"></i> 연령등급 : 
                                    <input  id="idCard3"  class="float-right contentAge updateValue" name="contentAge"/></h5>
                                  
                              </li>
                              <!--  <span id="idCard4" class="badge float-right contentRunningTime"></span> -->
                              <li class="nav-item active">
                                  <h5><i class="fa fa-phone" aria-hidden="true"></i> 재생시간 : 
                                    <input  id="idCard4"  class="float-right contentRunningTime updateValue" name="contentRunningTime"/></h5>
                              </li>

                              <!-- <span id="idCard5" class="badge float-right contentReleaseDate"></span> -->
                              <li class="nav-item">
                                   <h5><i class="fa fa-user" aria-hidden="true"></i> 개봉일 : 
                                    <input id="idCard5"  class="float-right contentReleaseDate updateValue" name="contentReleaseDate"/></h5>
                                  
                              </li>
                              <li class="nav-item">
                                   <h5><i class="fa fa-venus-mars" aria-hidden="true"></i> 장르 : 
                                  <span id="idCard6" class="badge float-right contentGenre"></span></h5>
                              </li>
                              <li class="nav-item">
                                   <h5><i class="fa fa-list-alt" aria-hidden="true"></i> 플렛폼 : 
                                  <span id="idCard7" class="badge float-right contentOtt"></span></h5>
                              </li>
              
                              <li class="nav-item">
                                  <h5><i class="fa fa-list-alt" aria-hidden="true"></i> 삭제유무 : 
                                  <span id="idCard8" class="badge float-right contentState"></span></h5>
                              </li>
                            </ul>
                            
                           
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>

            </div>
        </div>
          <!-- modal end -->
          



              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped jqplugin1">
                  <thead>
                  <tr>
                    <th>영상제목</th>
                    <th>플랫폼</th>
                    <th>연령대</th>
                    <th>상영시간</th>
                    <th>개봉일</th>
                    <th>장르</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  
                   <c:forEach items="${contentList}" var="contentList">
                   <c:if test="${ empty contentList[3] or contentList[3] eq 0 }">
                  <tr class="contentTable" bca="${contentList[0]}">
                    <td>${contentList[9]}</td>
                    <td>
                    ${contentList[12]} 
                    </td>
                    <td>${contentList[1] }</td>
                    <td> ${contentList[8] }</td>
                    <td>${contentList[7] } </td>
                    
                    <td>
                    ${contentList[11] } 
                    </td>
                  </tr>
                  </c:if>
                  </c:forEach> 
                 </tbody>
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
      </div>
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

<script src="/dist/admin/choi_admin.js"></script>

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
    $("#jqplugin1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false, 
      /* "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"] */
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#jqplugin1').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false,
      "responsive": true,
      "destroy":true,
    });
    
    
    
    
    $(document).on('click','.contentTable',function(){
    	
    	
    
    	const contentNumber= $(this).attr('bca')
		
    	 
    	
    	
      
      $.ajax({
        url :'/admin/movieAdmin/'+contentNumber,
        type:'get',
        dataType:'json',
        contentType:'application/json',
        success: function(data){
        
          let src = data.contentPosterImagesUrl
          let youtubeUrlsrc = data.contentYoutubeUrl /*  링크가 없으면 */
          let mainImagesUrl = data.contentMainImagesUrl
          
        var arrValues = new Array();
        var arrValues2 = new Array();
          
          
          
          
          $("#contentImages>.img22").remove();
        $('#myModal').modal('show');
        //$('#myModal iframe').attr('src', youtubeUrlsrc);
          if (youtubeUrlsrc != 'noYoutubeLink') {
        		$('#myModal img').attr('src', src);
        	
           		$('#contentImages').append("<iframe class='img22' src="+youtubeUrlsrc+" width='350' height='300' frameborder='0' allowfullscreen=''></iframe>");
		    } else {
		    
		    	$('#myModal img').attr('src', src);
         		$('#contentImages').append("<img class='img22' alt='' src="+ mainImagesUrl +" width='350' height='300' >")
        }
        
          
          $('.contentNumber').text(data.contentNumber);
          $('.contentInfo').text(data.contentInfo);
          $('.contentAge').val(data.contentAge);
          $('.contentRunningTime').val(data.contentRunningTime);
          $('.contentReleaseDate').val(data.contentReleaseDate);
          $('.contentTitle').val(data.contentTitle);
          
          
          // console.log(JSON.stringify(data.contentGenre[0].genre.genreName))
            for (let i = 0; i < data.contentGenre.length; i++) {
            arrValues.push(data.contentGenre[i].genre.genreName);
        	  $('.contentGenre').text(arrValues) 
            }
             console.log(JSON.stringify(data.contentOtt))
            for (let i = 0; i < data.contentOtt.length ; i++) {
             arrValues2.push(data.contentOtt[i].ott.ottName);
             $('.contentOtt').text(arrValues2);
              
            }
            if(data.contentState ==" " || data.contentState == 0){
              $('.contentState').text("삭제완료");
            } else{
              $('.contentState').text("삭제처리안됨");
            }

        $('#deleteContentNumber').val(data.contentNumber)

        }, 
        error : function(e){
            
            console.log(e)
        }

      })
      
      
    })

    const frmBtn= $('#frmBtn');
    
	$('.contentNumber2').click(function(e) {
		e.preventDefault(); // 바로 submit하는거 방지 이벤트를 잠시 씹음
    frmBtn.attr("action","/admin/contentDeleteUpdate");
    frmBtn.submit();
	})

  $('.contentNumber3').click(function(e){
    e.preventDefault();
    frmBtn.attr('action',"/admin/contentUpdate");
    frmBtn.submit();

  })



    

  });
</script>


</body>

</html>
