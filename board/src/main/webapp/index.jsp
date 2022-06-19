<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="head.jsp"%>
    <script>
        $(document).ready( function (){
            $('#mybtn').o('click', function (){
                $('#mys').slideToggle();
            });
        })
    </script>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="boardBar" id="myh1">
        HOME
    </h1>
    <br>
    <div id="mys">
        <h3 class="homeTitle">게시판 사용법</h3>
        <p align = "middle">
        <iframe style="width : 1116px; height : 600px; "
                src="https://www.youtube.com/embed/qhVQChz7dzo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
        </iframe>
        </p>
    </div>
</div>
<br/>
</body>
</html>
