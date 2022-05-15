<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>영상 목록</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="/js/mypageCommunity/jquery.bpopup-0.1.1.min.js"></script>
    <style>
        #element_to_pop_up {
            background-color: #fff;
            border-radius: 15px;
            color: #000;
            display: none;
            padding: 20px;
            min-width: 400px;
            min-height: 180px;
        }

        .b-close {
            cursor: pointer;
            position: absolute;
            right: 10px;
            top: 5px;
        }

        .button {
            font-size: 1em;
            cursor: pointer;
            position: fixed;
            left: 10%;
            top: 10%;
            display: inline-block;
            padding: 5px;
            background-color: #222;
            color: #fff;
            font-weight: bold;
        }

        .button2 {
            font-size: 1em;
            cursor: pointer;
            position: fixed;
            left: 10%;
            top: 20%;
            display: inline-block;
            padding: 5px;
            background-color: #222;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div id="my-button" class="button">노란배경 팝업창 띄우기</div>
<div id="my-button2" class="button2">일반배경 팝업창 띄우기</div>
<!-- Element to pop up -->
<div id="element_to_pop_up">
    <a class="b-close">x<a/>
        Content of popup
</div>
<script>
    ;(function($) {
        $(function() {
            $('#my-button').bind('click', function(e) {
                e.preventDefault();
                $('#element_to_pop_up').bPopup({
                    modalColor:'yellow'
                });
            });

            $('#my-button2').bind('click', function(e) {
                e.preventDefault();
                $('#element_to_pop_up').bPopup({

                });
            });

        });
    })(jQuery);
</script>
</body>
</html>



