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
	<h3>데이터형</h3>

	<h4>스크립틀릿 for문</h4>
   <%@ page import="java.util.List" %>
   <%@ page import="com.javaex.vo.UserVo" %>
   
   <%
   
      List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
   
   %>
    <%
         for(int i=0;i<userList.size();i++){
      %>
      
      
         <tr>
            <td><%=userList.get(i).getNo() %></td>
            <td><%=userList.get(i).getName() %></td>
            <td><%=userList.get(i).getEmail() %></td>
            <td><%=userList.get(i).getPassword() %></td>
            <td><%=userList.get(i).getGender() %></td>
         </tr>
      <%
         }
      %>
   
   <table border="1">
      <thead>
         <tr>
            <th>번호</th>
            <th>이름</th>
            <th>이메일</th>
            <th>패스워드</th>
            <th>성별</th>
         </tr>
      </thead>
      <tbody>
      
      
      
      <%
         for(UserVo vo : userList){
      %>
      
      
         <tr>
            <td><%=vo.getNo() %></td>
            <td><%=vo.getName() %></td>
            <td><%=vo.getEmail() %></td>
            <td><%=vo.getPassword() %></td>
            <td><%=vo.getGender() %></td>
         </tr>
      <%
         }
      %>
      
      </tbody>
   </table>
   
   <h4>jstl for문</h4>
     
   <table border="1">
      <thead>
         <tr>
            <th>번호</th>
            <th>이름</th>
            <th>이메일</th>
            <th>패스워드</th>
            <th>성별</th>
         </tr>
      </thead>
      <tbody>
      
   
   

</body>
</html>