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
                선호하는 영화 장르를 선택하시면,<br>
                일정과 연계된 영화 추천도 받아보실 수 있어요.
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span><c:out value="${sessionScope.mainCategoryIndex + 1}"></c:out>. (영화 감상) 선호 하는 영화 장르를 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
		                <span class="tag">액션</span>
		                <span class="tag">모험</span>
		                <span class="tag">SF</span>
		                <span class="tag">판타지</span>
		                <span class="tag">드라마</span>
		                <span class="tag">스릴러</span>
		                <span class="tag">공포</span>
		                <span class="tag">코미디</span>
		                <span class="tag">로맨스</span>
		                <span class="tag">범죄</span>
		                <span class="tag">전쟁</span>
		                <span class="tag">음악 / 뮤지컬</span>
		                <span class="tag">스포츠</span>
		                <span class="tag">다큐멘터리</span>
		                <span class="tag">느와르</span>
		                <span class="tag">포스트 아포칼립스</span>
		                <span class="tag">디스토피아</span>
		                <span class="tag">고어</span>
		                <span class="tag">좀비</span>
		                <span class="tag">괴수</span>
		                <span class="tag">서부극</span>
		                <span class="tag">첩보물</span>
		                <span class="tag">법정/재판</span>
		                <span class="tag">로드 무비</span>
		                <span class="tag">블랙 코미디</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form class="back-form" action="interest-back.interest" method="post">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form class="next-form" action="interest-next.interest" method="post">
			        		<input type="hidden" class="hidden-input" name="sub-category-movie">
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