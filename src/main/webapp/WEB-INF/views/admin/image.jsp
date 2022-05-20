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
                alert('전송!')
                uploadFile(); // 파일전송
            });
        });

        function uploadFile() {
            let form = $('#uploadForm')[0];
            let formData = new FormData(form);
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
<%-- 파이썬 --%>
<form id="uploadForm">
    <input type="hidden" name="user_number" value="1" > <%--아이디--%>
    <input type="hidden" name="images_type" value="test" > <%--타입--%>
    <input type="file" id="fileName" name="file" accept="image/png"/>
    <button type="button" id="uploadBtn">Save</button>
</form>
<input type="radio" id="uploadRadio">


</body>
</html>



