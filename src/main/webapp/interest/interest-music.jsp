<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 카테고리</title>
<link rel="stylesheet"  href="../assets/css/interest/interest-category-select.css">
<link rel="stylesheet" href="../assets/css/global.css">
</head>
<body>
    <div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="left-box">
            <div class="speech-bubble">
                자주 듣는 음악 장르를 알려주시면,<br>
                일정에 맞춰 어울리는 플레이리스트를 추천해드릴게요
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="right-box">
            <h2>0. (음악) 선호 음악 장르를 선택 해주세요.</h2>
            <p class="subtext">최소 2개 이상</p>
            <div class="interests">
                <span class="tag">K-POP</span>
                <span class="tag">국내 발라드</span>
                <span class="tag">트로트</span>
                <span class="tag">국내 R&B</span>
                <span class="tag">국내 힙합</span>
                <span class="tag">해외 힙합</span>
                <span class="tag">해외 R&B</span>
                <span class="tag">국내 락</span>
                <span class="tag">해외 락</span>
                <span class="tag">EDM</span>
                <span class="tag">브릿팝</span>
                <span class="tag">재즈</span>
                <span class="tag">댄스</span>
                <span class="tag">클래식</span>
                <span class="tag">얼터네이티브 락</span>
                <span class="tag">헤비 메탈</span>
                <span class="tag">J-POP</span>
                <span class="tag">드라마 OST</span>
                <span class="tag">영화 OST</span>
                <span class="tag">라틴</span>
                <span class="tag">어쿠스틱</span>
                <span class="tag">인디</span>
                <span class="tag">일렉트로닉</span>
                <span class="tag">컨트리</span>
                <span class="tag">보사노바</span>
                <span class="tag">레게</span>
                <span class="tag">블루스</span>
                <span class="tag">소울</span>
                <span class="tag">펑크</span>
                <span class="tag">하드 락</span>
            </div>
            <button class="back-btn">뒤로가기</button>
            <button class="next-btn">다음으로</button>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>