<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <title>Bootstrap Ajax SpringBoot Pagination</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet"
          crossorigin="anonymous">
</head>
<body>
<div id="scrollTestBody" style="height: 1000px; overflow: auto">
    <div class="container">
        <div class="row">
            <div class="col-sm-8"
                 style="background-color: #e6f9ff; margin: 10px; padding: 10px; border-radius: 5px; margin: auto;">
                <div class="alert alert-warning">
                    <h3>Bootstrap + Ajax + SpringBoot Pagination</h3>
                </div>

                <table id="noteTable" class="table table-hover table-sm">
                    <thead class="thead-dark">
                    <tr>
                        <th width="15px">contentNumber</th>
                        <th>contentTitle</th>
                        <th>contentMainImgLink</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <div id='testh1'>

                </div>
                <ul class="pagination justify-content-center" style="margin:20px 0; cursor: pointer;">
                </ul>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="/js/ajax/scroll.js"></script>

</body>
</html>



