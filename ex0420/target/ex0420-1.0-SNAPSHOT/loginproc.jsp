<%@ page import="com.example.ex0420.MemberDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    MemberDB memberdb = new MemberDB();
    boolean loginck = memberdb.dologinchk(username, password);

    if(loginck){
        System.out.println("성공");
        session.setAttribute("username", username);
        response.sendRedirect("index.jsp");
    }
    else{
        out.println("실패");
        out.println("<script>");
        out.println("alert('아이디 비밀번호 확인하세요');");
        out.println("location.href='index.jsp';");
        out.println("</script>");
    }

%>