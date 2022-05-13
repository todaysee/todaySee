<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>이미지</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="/js/flask.js"></script>
    <script>
        $(function () {
            $('#uploadRadio').on('click', function () {
                //alert($('#fileName').value())
                uploadFile(); // 파일전송
            });
        });

        function uploadFile() {

            $.ajax({
                url: 'dbSave',  //db 전송
                type: 'POST',
            }).done(function (data) {
                callback(data);
            });

            let form = $('#uploadForm')[0];
            let formData = new FormData(form);
            alert($('#fileName').html())
            $.ajax({
                url: flaskIp,  //플라스크 아이피주소
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false
            }).done(function (data) {
                callback(data);
            });


        }
    </script>
</head>
<body>


<h2>파일업로드</h2>

<%-- DB에저장 --%>
<div class="container">
    <form action="dbSave" method="post"
          enctype="multipart/form-data">
        <input type="file" name="files">
        <button type="submit" class="btn btn-dark">업로드</button>
    </form>
</div>

<%-- 파이썬 --%>
<form id="uploadForm">
    <input type="file" name="file" id="fileName"/>
    <button type="button" id="uploadBtn">Save</button>
</form>
<input type="radio" id="uploadRadio">


</body>
</html>



