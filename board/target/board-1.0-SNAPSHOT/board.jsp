<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>
<%@ page import="java.util.List" %>

<%

    String setext = request.getParameter("setext");
    if(setext == null){
        setext ="";
    }

    BoardManager bm = new BoardManager();
    List<Board> list = bm.doselect(setext);

//    String pagenum = request.getParameter("pagenum");
//    if(pagenum == null) pagenum = "1";
//    BoardManager bm = new BoardManager();
//    list = bm.doselect(String.valueOf(Integer.parseInt(pagenum)));
//    int pagecnt = bm.getPageCnt();

%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link href="css/board.css" rel="stylesheet">
    <%@include file="boardhead.jsp"%>
</head>
<body>
<%@ include file="boardnav.jsp"%>
<div class="container mt-3">
    <h1 class="boardBar" id="myh1">
        게시판
    </h1>
    <div class="row">
        <div class="col">
            <table class="table table-hover">
                <thead class="tableTop">
                <tr class="boardTop">
                    <th scope="col">순번</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
                </thead>
                <tbody>
                <% for(int i=0; i<list.size(); i++) {
                    Board board = list.get(i);
                %>
                <tr class="tableTitle">
                    <th scope="row"><%=board.getIdx()%></th>
                    <td><a href="boardview.jsp?idx=<%=board.getIdx()%>"><%=board.getTitle()%></a></td>
                    <td><%=board.getName()%></td>
                    <td><%=board.getWdate()%></td>
                    <td><%=board.getCount()%></td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col">
                <a class="btn" href="boardinsert.jsp">글쓰기</a>
            </div>
        </div>
<%--        <nav aria-label="Page navigation">--%>
<%--            <ul class="pagination justify-content-center">--%>
<%--                <% if( Integer.parseInt(pagenum) == 1) {%>--%>
<%--                <li class="page-item disabled">--%>
<%--                        <% } else {%>--%>
<%--                <li class="page-item">--%>
<%--                    <% } %>--%>
<%--                    <a class="page-link"--%>
<%--                       href="?pagenum=<%=Integer.parseInt(pagenum)-1%>">Previous--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <% for(int i=1;i<pagecnt+1; i++) {%>--%>
<%--                <li class="page-item <%=(Integer.parseInt(pagenum)==i)?"active":""%>">--%>
<%--                    <a class="page-link" href="?pagenum=<%=i%>"><%=i%></a>--%>
<%--                </li>--%>
<%--                <% } %>--%>
<%--                <li class="page-item <%=(Integer.parseInt(pagenum)==pagecnt)?"disabled":""%>">--%>
<%--                    <a class="page-link"--%>
<%--                       href="?pagenum=<%=Integer.parseInt(pagenum)+1%>">--%>
<%--                        Next--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
    </div>
</div>
</body>
</html>
