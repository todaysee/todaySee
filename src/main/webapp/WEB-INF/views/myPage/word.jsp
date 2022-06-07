<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test</title>
</head>
<link rel="stylesheet" href="/css/mypageCommunity/jqcloud.css">
<body>
<h1>gdgd</h1>
<div id="example" style="width: 550px; height: 350px;"></div>
</body>
<script src="/js/mypageCommunity/jquery.min.js"></script>
<script src="/js/mypageCommunity/jqcloud.js"></script>

<script type="text/javascript">
    var word_array = [
        {text: "Lorem", weight: 15},
        {text: "Ipsum", weight: 9},
        {text: "Dolor", weight: 6},
        {text: "Sit", weight: 7},
        {text: "Amet", weight: 5}
        // ...as many words as you want
    ];

    $(function() {
        // When DOM is ready, select the container element and call the jQCloud method, passing the array of words as the first argument.
        $("#example").jQCloud(word_array);
    });
</script>
</html>



