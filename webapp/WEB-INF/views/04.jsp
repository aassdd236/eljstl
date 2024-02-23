<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>	
	<h2>e1</h2>
	<h3>request.attribute 값 사용</h3>

	<h4>스크립틀립 사용</h4>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int i=(int)request.getAttribute("num");
		String str=(String)request.getAttribute("str");
	%>
	
	no=<%=userVo.getNo()%><br>
	name=<%=userVo.getName()%><br>
	email=<%=userVo.getEmail()%><br>
	password=<%=userVo.getPassword()%><br>
	gender=<%=userVo.getGender()%><br>
	
	i=<%=i %><br>
	str=<%=str %><br>
	
	<h4>el 사용</h4>
	no=${requestScope.userVo.no}<br>
	name=${requestScope.userVo.name}<br>
	email=${requestScope.userVo.email}<br>
	password=${requestScope.userVo.password}<br>
	gender=${requestScope.userVo.gender}<br>
	<br>
	i=${requestScope.num}<br>
	str=${requestScope.str}
	
</body>
</html>