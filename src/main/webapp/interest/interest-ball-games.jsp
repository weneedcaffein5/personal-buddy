<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구기 종목 카테고리</title>
<link rel="stylesheet"  href="../assets/css/interest/interest-category-select.css">
<link rel="stylesheet" href="../assets/css/global.css">
</head>
<body>
	<div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="left-box">
            <div class="speech-bubble">
                좋아하는 구기 종목을 알려주시면,<br>
                관련된 종목에 관련된 소식이나 정보를 알려드릴게요!
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="right-box">
            <h2>0. (구기 종목) 선호 하는 운동을 선택 해주세요.</h2>
            <p class="subtext">최소 2개 이상</p>
            <div class="interests">
                <span class="tag">축구</span>
                <span class="tag">야구</span>
                <span class="tag">농구</span>
                <span class="tag">배구</span>
                <span class="tag">테니스</span>
                <span class="tag">스쿼시</span>
                <span class="tag">배드민턴</span>
                <span class="tag">골프</span>
                <span class="tag">볼링</span>
                <span class="tag">탁구</span>
                <span class="tag">핸드볼</span>
                <span class="tag">카바디</span>
            </div>
            <button class="back-btn">뒤로가기</button>
            <button class="next-btn">다음으로</button>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>