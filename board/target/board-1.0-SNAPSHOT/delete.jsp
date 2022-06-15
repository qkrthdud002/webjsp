<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.dg.board.Board"%>
<%@ page import="com.dg.board.BoardManager"%>

<%

    String idx = request.getParameter("idx");

    BoardManager bm = new BoardManager();
    boolean success = bm.dodelete(Integer.parseInt(idx));

    if(success){
        out.println("<script>");
        out.println("alert('글 삭제하였습니다.');");
        out.println("window.location.href='board.jsp';"); //글 삭제하였습니다.가 뜬 후 board.jsp 화면으로 이동한다.
        out.println("</script>");
    }

%>
