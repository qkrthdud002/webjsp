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
    <title>Insert</title>
    <link href="css/insert.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
</head>
<body>
<div class="allClass">
    <%--    <a class="index" href="index.jsp">index</a>--%>

    <a class="select" href="select.jsp" style="height: 38px;">select</a>

    <a class="insert" href="insert.jsp" style="height: 38px;">insert</a>

    <a class="logout" href="logout.jsp" style="height: 38px;">logout</a>

</div>
<br>
<hr><br><br>
<%--<h1>insert.jsp</h1>--%>
<form action="insertproc.jsp">
    <input class="id" type="text" placeholder="name" name="username"/>
    <input class="pw" type="text" placeholder="pw" name="password">
    <div class="gender">
        성별
        남<input type="radio" name="gender" value="남"checked/>
        여<input type="radio" name="gender" value="여"/>
    </div>
    <input class="submitBtn" type="submit" value="저장" style="width: 340px; height: 50px"/>
</form>
</body>
</html>
