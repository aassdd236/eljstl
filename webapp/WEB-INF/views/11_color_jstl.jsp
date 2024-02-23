<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p> 스크립틀릿 if문</p>

	<%
	if( "1".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: red">빨강</span>
	<%
	} else if( "2".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: green">녹색</span>
	<%
	} else if( "3".equals( request.getParameter("color") ) ) {	
	%>
		<span style="color: blue">파랑</span>
	<%
	}else{
	%>
		<span>color 파라미터 없음</span>
	<%
	}
	%>	
	
	<p> tmflqdlt fmo</p>
	
	
	<!-- ------------------------------------------------- -->
	<%@ page import = "com.javaex.vo.UserVo" %>

	<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
	%>
	
	
	<div id="header">
			<h1>MySite</h1>
			<ul>
		<%
			if(authUser==null) {
		%>
				<!-- 로그인 전 -->
				<li><a href="/mysite/user?a=loginform">로그인</a></li>
				<li><a href="/mysite/user?a=joinform">회원가입</a></li>
		<%  }else { %>		
				<!-- 로그인 후 -->
				<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
				<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
				<li> ${sessionScope.authUser.name}님 안녕하세요^^;</li>
		<%  } %>
			</ul>
	</div> <!-- /header -->
	
	<p> jstl choose~when</p>
	<ul>
	<c:choose>
		<c:when test="${sessionScope.authUser == null}">
			<li><a href="/mysite/user?a=loginform">로그인</a></li>
			<li><a href="/mysite/user?a=joinform">회원가입</a></li>
		</c:when>
		<c:otherwise>
			<li><a href="/mysite/user?a=modifyform">회원정보수정</a></li>
			<li><a href="/mysite/user?a=logout">로그아웃</a></li> 
			<li> <%=authUser.getName() %>님 안녕하세요^^;</li>
		</c:otherwise>
	</c:choose>
	</ul>
		
	
</body>
</html>