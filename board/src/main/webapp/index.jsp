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
<%--    <button id="mybtn"></button>--%>
    <div id="mys">
        <h1>게시판</h1>
        <img src="">
    </div>
</div>
<br/>
</body>
</html>
