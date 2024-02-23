<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//pageContext.setAttribute("name", "pageScope.name");
	//request.setAttribute("name", "requestScope.name");
	//session.setAttribute("name", "sessionScope.name");
	application.setAttribute("name", "sessionScope.name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>	
	<h2>e1</h2>
	<h3>scope 변수의 범위</h3>

	${ name}

</body>
</html>