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
                선호하는 여행 스타일을 알려주시면,<br>
                일정과 연계된 맞춤형 여행지, 추천 명소,<br> 
                그리고 꿀팁까지 제공 해드릴게요! 
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span><c:out value="${sessionScope.mainCategoryIndex + 1}"></c:out>. (여행) 선호 하는 여행지를 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
	               		<span class="tag">서울</span>
		                <span class="tag">춘천</span>
		                <span class="tag">수원</span>
		                <span class="tag">부산</span>
		                <span class="tag">대구</span>
		                <span class="tag">광주</span>
		                <span class="tag">강릉</span>
		                <span class="tag">원주</span>
		                <span class="tag">인천</span>
		                <span class="tag">천안</span>
		                <span class="tag">안산</span>
		                <span class="tag">목포</span>
		                <span class="tag">여수</span>
		                <span class="tag">송도</span>
		                <span class="tag">제주도</span>
		                <span class="tag">일본</span>
		                <span class="tag">중국</span>
		                <span class="tag">유럽</span>
		                <span class="tag">미국</span>
		                <span class="tag">호주</span>
		                <span class="tag">동남아</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form class="back-form" action="interest-back.interest" method="post">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form class="next-form" action="interest-next.interest" method="post">
			        		<input type="hidden" class="hidden-input" name="sub-category-travel">
				            <button class="next-btn">다음으로</button>
			        	</form>
	        		</div>
	        	</div>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>