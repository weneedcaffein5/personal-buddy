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
                자주 듣는 음악 장르를 알려주시면, 일정에 맞춰<br>
                어울리는 플레이리스트를 추천해드릴게요
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span><c:out value="${sessionScope.mainCategoryIndex + 1}"></c:out>. (음악) 선호 음악 장르를 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
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
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form class="back-form" action="interest-back.interest" method="post">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form class="next-form" action="interest-next.interest" method="post">
			        		<input type="hidden" class="hidden-input" name="sub-category-music">
				            <button type="button" class="next-btn">
				            	<c:choose>
									<c:when test="${sessionScope.mainCategoryIndex == sessionScope.mainCategoryIndexCheck }">
										<span>완료하기</span>
									</c:when>
									<c:otherwise>
										<span>다음으로</span>
									</c:otherwise>
								</c:choose>
				            </button>
			        	</form>
	        		</div>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>