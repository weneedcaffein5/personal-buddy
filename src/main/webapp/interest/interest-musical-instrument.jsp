<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>악기 카테고리</title>
<link rel="stylesheet"  href="../assets/css/interest/interest-category-select.css">
</head>
<body>
    <div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="left-box">
            <div class="speech-bubble">
                선호하는 악기를 알려주시면,<br>
                악기에 관련된 소식이나 정보를 알려드릴게요!
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="right-box">
            <h2>0. (연주) 선호 하는 악기를 선택 해주세요.</h2>
            <p class="subtext">최소 2개 이상</p>
            <div class="interests">
                <span class="tag">피아노</span>
                <span class="tag">바이올린</span>
                <span class="tag">비올라</span>
                <span class="tag">기타</span>
                <span class="tag">베이스</span>
                <span class="tag">드럼</span>
                <span class="tag">플루트</span>
                <span class="tag">리코더</span>
                <span class="tag">하모니카</span>
                <span class="tag">색소폰</span>
                <span class="tag">보컬</span>
            </div>
            <button class="back-btn">뒤로가기</button>
            <button class="next-btn">다음으로</button>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>