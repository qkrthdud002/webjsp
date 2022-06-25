<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
    <link href="css/update.css" rel="stylesheet">
<%--    <link href="css/homepage.css" rel="stylesheet">--%>
    <link href="css/boardNav.css" rel="stylesheet">
    <link href="css/board.css" rel="stylesheet">
</head>
<body>
<%@ include file="boardnav.jsp"%>
<%--<h1>update.jsp</h1>--%>
<div class="allClass">
    <%--    <a class="index" href="index.jsp">index</a>--%>

<%--    <a class="select" href="select.jsp" style="height: 38px;">select</a>--%>

<%--    <a class="insert" href="insert.jsp" style="height: 38px;">insert</a>--%>

<%--    <a class="logout" href="logout.jsp" style="height: 38px;">logout</a>--%>

</div>
<br>
<hr><br><br>
<form action="updateproc.jsp">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
    <input class="id" placeholder="name" type="text" name="username"/>
    <input class="pw" placeholder="pw" type="text" name="password"/>
    <div class="gender">
        성별
        남<input type="radio" name="gender" value="남"checked/>
        여<input type="radio" name="gender" value="여"/>
    </div>
    <input class="submitBtn" type="submit" value="저장" style="width: 340px; height: 50px;"/>
</form>
</body>
</html>
