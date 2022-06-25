<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%@ page import="java.util.List" %>

<%


%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link href="css/boardInsert.css" rel="stylesheet">
    <%@include file="boardhead.jsp"%>
</head>
<body>
<%@ include file="boardnav.jsp"%>
<div class="container mt-3">
    <form action="boardinsertproc.jsp">
    <h1 class="boardBar" style="border-radius: 5px;" id="myh1">
        글쓰기
    </h1>
    <div class="row">
        <div class="col">
            제목
            <input class="form-control mb-2" type="text" name="title">
            내용
            <textarea class="form-control mb-2" rows="15" name="content"></textarea>
            작성자
            <input class="form-control" type="text" name="name" value="<%=session.getAttribute("username")%>">
        </div>
        <div class="row">
            <div class="col mt-3" >
                <input class="btn" type="submit" value="저장">
            </div>
        </div>
    </div>
    </form>
    </div>
</div>
</body>
</html>
