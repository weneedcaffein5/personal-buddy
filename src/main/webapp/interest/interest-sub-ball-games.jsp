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
                좋아하는 구기 종목을 알려주시면,<br>
                관련된 종목에 관련된 소식이나 정보를 알려드릴게요!
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span><c:out value="${sessionScope.mainCategoryIndex + 1}"></c:out>. (구기 종목) 선호 하는 운동을 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
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
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form class="back-form" action="interest-back.interest" method="post">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form class="next-form" action="interest-next.interest" method="post">
			        		<input type="hidden" class="hidden-input" name="sub-category-ball-games">
				            <button type="button" class="next-btn">
				            	<c:choose>
									<c:when test="${sessionScope.mainCategoryIndex == sessionScope.mainCategoryIndexMax }">
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