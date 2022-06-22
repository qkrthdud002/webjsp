<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
<%--<%@ include file="homepage.jsp" %>--%>
<%--<h1>로그인 페이지</h1>--%>
    <%
        String username = (String)session.getAttribute("username");
        if(username == null){
    %>
<!--로그인 화면 구성-->
<br><br><br><br><br><br><br><br><br><br><br>
<div>
    <form action="loginproc.jsp" class="login">
        <a class="id">
            <input placeholder="id" name="username" type="textbox" style="height: 44px; font-size: large;"/>
        </a>
        <a class="pw">
            <input placeholder="pw" name="password" type="textbox" style="height: 44px; font-size: large;"/>
        </a>
        <a href="boardindex.jsp" class="loginBtn" style="font-size: large; font-weight : bold;">로그인</a>

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