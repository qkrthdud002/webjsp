<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="css/login.css" rel="stylesheet">
    <link href="css/boardNav.css" rel="stylesheet">
    <link href="css/board.css" rel="stylesheet">
</head>
<body>
    <%
        String username = (String)session.getAttribute("username");
        if(username == null){
    %>
<!--로그인 화면 구성-->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div>
    <form action="loginproc.jsp" class="login">
        <a class="id">
            <input placeholder="id" name="username" type="textbox" style="border-color:rebeccapurple; height: 44px; font-size: large;"/>
        </a>
        <a class="pw">
            <input placeholder="pw" name="password" type="textbox" style="border-color:rebeccapurple; height: 44px; font-size: large;"/>
        </a>
        <input type="submit" value="로그인" class="loginBtn" style="border-color:rebeccapurple; font-size: large; font-weight : bold;"/>

    </form>
</div>
    <%
    }else{
    %>
<h1><%=username%>안녕하세요..</h1>
<a href="logout.jsp">로그아웃</a>
<%
    }
%>
</body>
</html>