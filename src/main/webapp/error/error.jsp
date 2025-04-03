<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>404 Not Found</title>
  <link rel="stylesheet" href="../assets/css/error/error.css">
  
</head>
<body>
	<img class="errorPB" src="<%= request.getContextPath() %>/assets/images/error/404ERROR.png" alt="404에러 이미지">
 	<!-- <h1>404 Not Found</h1>
 	<p>요청하신 페이지가 존재하지 않거나 이동되었어요.</p> -->
 	<a href="<%= request.getContextPath() %>/main/main.main" class="backToMain">메인 페이지로 돌아가기</a>

</body>
</html>