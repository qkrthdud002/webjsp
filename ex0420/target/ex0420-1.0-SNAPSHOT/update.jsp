<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-04-27
  Time: 오후 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<h1>update.jsp</h1>
<form action="updateproc.jsp">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
    username <input type="text" name="username"/><br/>
    password <input type="text" name="password"/><br/>
    성별
    남<input type="radio" name="gender" value="남"checked/>
    여<input type="radio" name="gender" value="여"/>
    <input type="submit" value="저장"/>
</form>
</body>
</html>
