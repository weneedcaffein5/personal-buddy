<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/interest/interest-main.css">
</head>
<body>
	 <div class="container">
        <div class="speech-bubble">
            더 나은 맞춤형 경험을 위해 간단한 취향 조사를<br>
            진행하고 있어요! 여러분의 라이프스타일과 관심사를<br> 
            반영하여, 일정과 추천 콘텐츠를 더욱 편리하게<br> 
            제공해드릴게요.
        </div>
        <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        <form action="interest-category.jsp" method="post">
	        <button class="start-btn">시작하기</button>
        </form>
    </div>
</body>	
</html>