<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ box-sizing:border-box; }
	div{ width: 300px; height: 150px; }
	#adiv{ 
		background-color: red;
		border: black solid 10px;
		margin: 30px;
		padding: 40px;
	 }
	#bdiv{ background-color: blue; }
	#cdiv{ background-color: yellow; }
</style>
</head>
<body>
<!-- 선택자 1.태그 선택자 2.아이디선택자 3. 클래스선택자 -->
<div class="continer">
	<div id="adiv">빨간색DIV</div>
	<div id="bdiv"></div>
	<div id="cdiv"></div>
</div>
</body>
</html>