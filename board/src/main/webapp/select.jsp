<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="websubject.MemberDB" %>
<%@ page import="websubject.Member" %>
<%
    MemberDB md = new MemberDB();
    List<Member> list = md.doselect();
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="css/select.css" rel="stylesheet">
    <link href="css/boardNav.css" rel="stylesheet">
    <link href="css/board.css" rel="stylesheet">
</head>
<body>
<%@ include file="homepage.jsp" %>
<br>
    <div class="allClass">
        <button class="backBtn mb-5" onclick="location.href='board.jsp'">
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="20" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
            </svg>
        </button>
    </div>
<br>
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
</form>

</body>
</html>