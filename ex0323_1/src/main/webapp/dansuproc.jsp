<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String a = request.getParameter("dan");
	//문자열이라서 a+1을 하면 a = 31이 나오게 되므로 int형으로 바꿔준다.
	int ia = Integer.parseInt(a);
	//ctrl + shift + c 주석 설정 및 해제
// 	out.println("A = "+(ia+1));
	for(int i=1; i<10; i++){
		out.println(ia+"*"+i+"="+i*ia);
// 		out.println(ia);
// 		out.println("*");
// 		out.println(i);
// 		out.println("=");
// 		out.println(i*ia);
		out.println("<br>");
	}
	
%>
</body>
</html>