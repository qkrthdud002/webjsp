<%@ page import="java.util.Scanner" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Title</title>
    <%@include file="boardhead.jsp"%>
</head>

<nav class="navbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="/boardindex.jsp">HOME</a>
        <button class="navbar-toggler" style="width: 100px;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler">더보기</span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form method="post" action="board.jsp" class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" value="" name="setext">
                <button class="search btn" type="submit" name="" value="">Search</button>
            </form>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="board.jsp">게시판</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="insert.jsp">Insert</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="select.jsp">Select</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout.jsp">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.w3schools.com/">More WebStudy</a>
                </li>
            </ul>
        </div>
    </div>
</nav>