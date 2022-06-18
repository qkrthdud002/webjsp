<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%--%>
<%--    BoardManager bm = new BoardManager();--%>
<%--    List<Board> list = bm.doSearch(board);--%>

<%--%>--%>

<head>
    <title>Title</title>
<%--    <link href="css/update.css" rel="stylesheet">--%>
    <%@include file="head.jsp"%>
</head>

<nav class="navbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="/index.jsp">HOME</a>
        <button class="navbar-toggler" style="width: 100px;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler">더보기</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form method="post" action="navproc.jsp" class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" value="">
                <button class="search btn" type="submit" name="" value="">Search</button>
            </form>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="board.jsp">board</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Link</a>
                </li>
<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        Dropdown--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <li><a class="dropdown-item" href="#">Action</a></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Another action</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="#">Something else here</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link disabled">Disabled</a>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</nav>