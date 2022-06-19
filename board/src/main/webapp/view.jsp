<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.BoardManager" %>
<%@ page import="com.dg.board.Board" %>
<%
    String idx = request.getParameter("idx");

    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(idx));

%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link href="css/view.css" rel="stylesheet">
    <%@include file="head.jsp"%>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="boardBar" style="border-radius: 5px;" id="myh1">
        게시글
    </h1>
    <div class="row">
        <div class="col">
            제목
            <div class="border p-3 mb-2"><%=board.getTitle()%></div>
            내용
            <div class="border p-3 mb-2" style="height:15em;"><%=board.getContent()%></div>
            작성자
            <div class="border p-3"><%=board.getName()%></div>
        </div>
    </div>
    <div class="row1 mb-3">
        <div class="col1 mt-3">
            <a class="btn Update" href="update.jsp?idx=<%=idx%>">글수정</a>
        </div>
            <div class="col2 mt-3">
            <a class="btn Delete" href="delete.jsp?idx=<%=board.getIdx()%>">글삭제</a>
            </div>
    </div>
    </div>
</div>
</body>
</html>
