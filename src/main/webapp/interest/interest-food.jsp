<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 카테고리</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/interest/interest-category.css">
</head>
<body>
	<div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="container-left">
            <div class="speech-bubble">
                좋아하는 음식이나 자주 먹는 음식을 알려주세요.<br>
                일정과 연계하여 맛집 정보를 제공해드릴게요.
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span>0. (맛집 탐방) 카테고리를 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
		                <span class="tag">한정식</span>
		                <span class="tag">돈까스</span>
		                <span class="tag">생선 구이</span>
		                <span class="tag">국밥</span>
		                <span class="tag">설렁탕</span>
		                <span class="tag">파인다이닝</span>
		                <span class="tag">스테이크</span>
		                <span class="tag">오마카세</span>
		                <span class="tag">회</span>
		                <span class="tag">해물탕</span>
		                <span class="tag">초밥</span>
		                <span class="tag">삼겹살</span>
		                <span class="tag">햄버거</span>
		                <span class="tag">피자</span>
		                <span class="tag">치킨</span>
		                <span class="tag">분식</span>
		                <span class="tag">파스타</span>
		                <span class="tag">중식</span>
		                <span class="tag">마라탕</span>
		                <span class="tag">딤섬</span>
		                <span class="tag">샤브샤브</span>
		                <span class="tag">찌개</span>
		                <span class="tag">나물 무침</span>
		                <span class="tag">샐러드</span>
		                <span class="tag">샌드위치</span>
		                <span class="tag">과일</span>
		                <span class="tag">디저트</span>
		                <span class="tag">커피</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form action="">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form action="">
				            <button class="next-btn">다음으로</button>
			        	</form>
	        		</div>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>