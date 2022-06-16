<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String idx = request.getParameter("idx");
    System.out.println(idx);
    BoardManager boardManager = new BoardManager();
    Board board = boardManager.doselectrow(Integer.parseInt(idx));
    System.out.printf(board.toString());
%>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container" >
    <h1>수정하기</h1>
    <form action="updateproc.jsp">
        <input type="hidden" value="<%=idx%>" name="idx">
        제목
        <input class="form-control p-3 mb-3" type="text" name="title" placeholder="title" value="<%=board.getTitle()%>"/>
        내용
        <textarea class="form-control p-3 mb-3" name="content" placeholder="content" rows="10"><%=board.getContent()%></textarea>
        작성자
        <input class="form-control p-3 mb-3" type="text" name="name" placeholder="name" value="<%=board.getName()%>" />
        <div class="col" style="padding: 0px;">
            <input class="btn-view btn btn-primary" type="submit" value="저장">
        </div>
    </form>
</div>
</body>
</html>