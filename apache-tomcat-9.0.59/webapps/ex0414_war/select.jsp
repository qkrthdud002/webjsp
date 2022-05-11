<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.member.ex0414.MemberDB" %>
<%
    MemberDB md = new MemberDB();
    String result = md.doselect();
    out.println(result);
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%@ include file="head.jsp" %>
<h1>index.jsp</h1>
</body>
</html>