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
                어떤 운동을 즐기시나요?<br>
                선호하는 운동 스타일을 선택하면,<br>
                운동 관련 정보를 추천해드릴게요
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span>0. (운동) 선호 하는 운동을 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
	               		<span class="tag">헬스</span>
		                <span class="tag">사이클</span>
		                <span class="tag">러닝</span>
		                <span class="tag">클라이밍</span>
		                <span class="tag">서핑</span>
		                <span class="tag">주짓수</span>
		                <span class="tag">태권도</span>
		                <span class="tag">검도</span>
		                <span class="tag">유도</span>
		                <span class="tag">복싱</span>
		                <span class="tag">MMA</span>
		                <span class="tag">수영</span>
		                <span class="tag">스쿠버다이빙</span>
		                <span class="tag">스키</span>
		                <span class="tag">스케이트 보드</span>
		                <span class="tag">인라인 스케이팅</span>
		                <span class="tag">롤러 스케이팅</span>
		                <span class="tag">줄넘기</span>
		                <span class="tag">훌라후프</span>
		                <span class="tag">등산</span>
		                <span class="tag">발레</span>
		                <span class="tag">필라테스</span>
		                <span class="tag">요가</span>
		                <span class="tag">폴댄스</span>
		                <span class="tag">스포츠 댄스</span>
		                <span class="tag">스피닝</span>
		                <span class="tag">무에타이</span>
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