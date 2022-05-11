<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>이미지</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="/js/flask.js"></script>
    <script>
        $(function(){
            $('#uploadBtn').on('click', function(){
                uploadFile();
                alert("전송함")
            });
        });

        function uploadFile(){
            let form = $('#uploadForm')[0];
            let formData = new FormData(form);

            $.ajax({
                url : flaskIp,
                type : 'POST',
                data : formData,
                contentType : false,
                processData : false
            }).done(function(data){
                callback(data);
            });
        }
    </script>
</head>
<body>
<form id="uploadForm">
    <input type="file" name="file" />
    <button type="button" id="uploadBtn">Save</button>
</form>
</body>
</html>



