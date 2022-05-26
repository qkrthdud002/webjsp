<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.hs.dgsw.websubject.MemberDB" %>
<%@ page import="kr.hs.dgsw.websubject.Member" %>
<%
    MemberDB md = new MemberDB();
    List<Member> list = md.doselect();
    //out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="css/select.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
</head>
<body>
<%--<%@ include file="homepage.jsp" %>--%>
<%--<h1>select.jsp</h1>--%>
<br>
    <div class="allClass">
        <%--    <a class="index" href="index.jsp">index</a>--%>

        <a class="select" href="select.jsp" style="height: 38px;">select</a>

        <a class="insert" href="insert.jsp" style="height: 38px;">insert</a>

        <a class="logout" href="logout.jsp" style="height: 38px;">logout</a>

    </div>
<br>
<hr><br><br>
<form action="delete.jsp" class="selectGraph">
<table style="width:70%;">

    <tr>
        <th></th>
        <th class="num">   순번</th>
        <th>이름</th>
        <th>비번</th>
        <th>성별</th>
    </tr>
    <%
        //반복되어야 하는 부분.
        for(int i=0; i<list.size(); i++){
            Member member = list.get(i);
        //}
    %>
        <tr>
            <td class="checkBox"><input type="checkbox" name="id" value="<%=member.getId()%>" style="text-align: center;"></td>
            <td class="getId"><%=member.getId() %></td>
            <td><a href="update.jsp?id=<%=member.getId()%>"><%=member.getUsername() %></a></td>
            <td><%=member.getPassword() %></td>
            <td><%=member.getGender() %></td>
        </tr>
    <%
        }
    %>

</table>
    <input class="selectBtn" type="submit" value="삭제" style="width: 150px; height: 53px;">
<%--    <a class="selectBtn" style="width: 150px; height: 44px;">삭제</a>--%>
</form>

</body>
</html>