<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%@ page import="java.util.List" %>

<%

    BoardManager bm = new BoardManager();
    List<Board> list = bm.doselect();

%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container mt-3">
    <form action="insertproc.jsp">
    <h1 class="bg-success text-white" id="myh1">
        insert.jsp
    </h1>
    <div class="row">
        <div class="col">
            제목
            <input class="form-control" type="text" name="title">
            내용
            <textarea class="form-control" rows="15" name="content"></textarea>
            작성자
            <input class="form-control" type="text" name="name">
        </div>
        <div class="row">
            <div class="col">
                <input class="btn btn-primary" type="submit" value="저장">
            </div>
        </div>
    </div>
    </form>
    </div>
</div>
</body>
</html>
