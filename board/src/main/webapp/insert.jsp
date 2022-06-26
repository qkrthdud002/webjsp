<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
    <link href="css/insert.css" rel="stylesheet">
    <link href="css/boardNav.css" rel="stylesheet">
</head>
<body>
<%@ include file="boardnav.jsp"%>
<br><br><br><br><br><br><br><br><br><br>
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
