<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="websubject.MemberDB" %>
<%
    // request response

    String ids[] = request.getParameterValues("id");
//    out.println(ids[0]);
//    out.println(ids[1]);
//    out.println(ids[2]);
    MemberDB md = new MemberDB();
    md.dodelete(ids);

    response.sendRedirect("select.jsp");
%>
